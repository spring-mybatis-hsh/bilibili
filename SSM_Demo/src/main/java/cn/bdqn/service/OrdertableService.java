package cn.bdqn.service;

import cn.bdqn.domain.Ordertable;

import java.util.List;

public interface OrdertableService {

    //查询所有订单
    public List<Ordertable> queryAllOrder();

    //根据状态查询订单
    public List<Ordertable> queryOrderByStat(int orderStat);

    public List<Ordertable> queryOrderByStat2(int orderStat);

    public List<Ordertable> queryOrderByStat3(int orderStat);


}
