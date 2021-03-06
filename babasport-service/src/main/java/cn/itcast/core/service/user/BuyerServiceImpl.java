package cn.itcast.core.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.core.bean.user.Buyer;
import cn.itcast.core.dao.user.BuyerDao;

/**
 * 用户
 * @author lx
 *
 */
@Service("buyerService")
public class BuyerServiceImpl implements BuyerService{

	@Autowired
	private BuyerDao buyerDao;
	//查询
	public Buyer selectBuyerByUsername(String username){
		return buyerDao.selectByPrimaryKey(username);
	}
}
