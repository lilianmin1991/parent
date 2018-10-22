#encoding:utf8
import pandas as pd
import pickle
import jieba
from jieba import posseg,analyse
#import codecs
from gensim.models import Word2Vec
from gensim import matutils
import numpy as np

class Qa(object):
    def __init__(self):
        self.w2v_model = Word2Vec.load('/home/pythonFiles/Model//w2v_model_300.model',mmap='r')
        self.stopwords = [line.strip() for line in open('/home/pythonFiles/qa/Data/stopwords.txt','r',encoding='gbk').readlines()]#codecs.

        jieba.add_word('水煮肉片')


    def jieba_cut(self,sentence):
        '''
        :param sentence:  句子
        :return:          切分的word和flag
        '''
        cut_list = posseg.cut(sentence)
        sentence_list = []
        flag_list = []
        for word in cut_list:
            if word.word not in self.stopwords and word.word != ' ':
                sentence_list.append(str(word.word))
                flag_list.append(word.flag)
        return sentence_list,flag_list
        #pass

    def keywords(self,sentence,top,way = 'tfidf'):
        '''
        :param sentence:  用户问
        :return:          抽取问题的keyword
        '''
        if way == 'tfidf':
            '''
            sentence 为待提取的文本
            topK 为返回几个 TF/IDF 权重最大的关键词，默认值为 20
            withWeight 为是否一并返回关键词权重值，默认值为 False
            allowPOS 仅包括指定词性的词，默认值为空，即不筛选
          '''
            keyword = analyse.extract_tags(sentence,topK=top)
        else:
            '''
            建议用tfidf
            基本思想:  text_rank
            将待抽取关键词的文本进行分词
            以固定窗口大小(默认为5，通过span属性调整)，词之间的共现关系，构建图
            计算图中节点的PageRank，注意是无向带权图
          '''
            keyword = analyse.textrank(sentence,topK=top)
        return keyword

    def w2v(self,sentence):
        '''
        :param sentence:  用户问题
        :return:          使用预训练的w2v_model得到问题的词向量
        '''
        word_list = self.jieba_cut(sentence)[0]
        sentence_w2v_list = []
        unidentification_word = []
        for word in word_list:
            try:
                word300 = matutils.unitvec(self.w2v_model.wv[word])
            except:
                print(word)
                unidentification_word.append(word)
                word300 = np.zeros(300)
            sentence_w2v_list.append(word300)
        sentence_w2v_list = np.matrix(sentence_w2v_list)
        return sentence_w2v_list

if __name__ == '__main__':
    a = Qa()
    # print(a.stopwords)
    sentence = '2018晚上给胖子做水煮肉片！'
    b = a.jieba_cut(sentence)
    print(b)
    c = a.keywords(sentence,top=2)
    print(c)
    data = pd.read_excel('/home/pythonFiles/qa/Data/zsxn_faq.xlsx')
    print(data.head(5))
    data['wd_list'] = data['title'].astype('str').apply(lambda x:a.jieba_cut(x)[0])
    data['wd_flag'] = data['title'].astype('str').apply(lambda x:a.jieba_cut(x)[1])
    data['wd_list_len'] = data['wd_list'].apply(lambda x:len(x))
    data['sentence_len'] = data['title'].astype('str').apply(lambda x:len(x))
    data['key_word'] = data['title'].astype('str').apply(lambda x:a.keywords(x,1) if len(a.jieba_cut(x)[0]) < 3  else a.keywords(x,2) if len(a.jieba_cut(x)[0]) > 5 else a.keywords(x,5))
    print(data['key_word'].head(10))
    data['w2v'] = data['title'].astype('str').apply(lambda x:a.w2v(x))
    print(data['w2v'].head(10))
    print(data.head(10))
    data.to_pickle('/home/pythonFiles/qa/Data/qa.pkl')

    #print(data['wd_list'])


