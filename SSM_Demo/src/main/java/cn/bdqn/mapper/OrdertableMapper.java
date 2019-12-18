package cn.bdqn.mapper;

import cn.bdqn.domain.Ordertable;

import java.util.List;

public interface OrdertableMapper {

    public List<Ordertable> queryAllOrder();

    public List<Ordertable> queryOrderByStat(int orderStat);

    public List<Ordertable> queryOrderByStat2(int orderStat);

    public List<Ordertable> queryOrderByStat3(int orderStat);


}
