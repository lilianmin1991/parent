#encoding:utf8
'''
针对solr返回的数据进行排序
'''
from generation import Qa
import pandas as pd
import pickle as pkl
import pysolr
import json
import requests
import argparse
import time
import warnings
warnings.filterwarnings('ignore')

class Predict_Rank(object):
    def __init__(self):
        self.pkl = pd.read_pickle('/home/pythonFiles/qa/Data/qa.pkl')
        #['title' 'publish_time' 'summary' 'content' 'url' 'label' 'wd_list','wd_flag' 'wd_list_len' 'sentence_len' 'key_word' 'w2v']
        #print(self.pkl.head(1))
        self.solr = pysolr.Solr('http://39.105.85.33:8983/solr/new_core', timeout=10)
        self.qa = Qa()
        self.tuping_url = "http://openapi.tuling123.com/openapi/api/v2"
        self.error_code = [5000,6000,4000,4001,4002,4003,4004,4005,4007,4100,4200,4300,4400,4500,4600,4602,7002,8008,0]



    def get_solr_data(self,question):
        result_list = []
        results = self.solr.search('zsxn_faq_title:{}'.format(question))
        for result in results:
            result_list.append(result)
        res = pd.DataFrame(result_list)

        return res

    def cos(self,v1,v2):
        c = v2 * v1.T
        pd_c = pd.DataFrame(c)
        pd_c_max = pd_c.apply(lambda x:max(x)).tolist()
        #print('>?????????????',pd_c_max)
        score = sum(pd_c_max) / len(pd_c_max)
        return float(score)


    def get_data_tuling(self,question):
        data = {
                "reqType":0,
                "perception": {
                    "inputText": {"text":question}
                                 },
                "userInfo":            {
                    "apiKey": "203113adb4604e44b47949f91a438dbf",
                    "userId": "318087"}
                }
        post_data = json.dumps(data)
        header = {'User-Agent': 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT)'}
        results = requests.post(self.tuping_url,data=post_data,headers= header)
        result_load = json.loads(results.text)
        if result_load['intent']['code'] in self.error_code:
            return '闲聊免费次数已用尽，请您问一些保险相关的问题'
        else:
            answer  = result_load['results'][0]['values']['text']
            return answer




    def rank(self,question):
        a = time.time()
        solr_data = self.get_solr_data(question)
        b = time.time()
        print('solr_time:',b-a)

        #print('!!!!!!!!!!!',solr_data)
        #print(solr_data['zsxn_faq_title'])
        if len(solr_data) > 0:
            solr_data['id'] = solr_data['id'].astype(int)
            selection_data = pd.merge(self.pkl,solr_data,on='id')
            # print(selection_data)
            c = time.time()
            print('merge_time:',c-b)

            w2v_q = self.qa.w2v(question)
            #print(w2v_q)
            d = time.time()
            print('w2v_time:',d-c)
            selection_data['w2v_score'] = selection_data['w2v'].apply(lambda x:self.cos(x,w2v_q))
            e = time.time()
            print('cos_time:',e-d)
            #print(selection_data['w2v_score'])
            res = selection_data.sort_values(by="w2v_score",axis=0,ascending=False).head(5)
            #print(res)
            if float(res.head(1)['w2v_score']) < 0.35:
                leisure = self.get_data_tuling(question)
                return leisure
            else:
                if len(res['content']) > 0:
                    return res['content'].tolist()[0]
                else:
                    pass
        else:
            return 'solr_is_null'


if __name__ == '__main__':
    s = time.time()
    a = Predict_Rank()
    parser = argparse.ArgumentParser()
    parser.add_argument('--question',type=str,default=None)
    args = parser.parse_args()
    s1 = time.time()
    print('before_rank:',s1-s)
    anwser = a.rank(args.question)
    # anwser = a.rank('老年保险')
    print(anwser)
