package cn.bdqn.service.impl;

import cn.bdqn.domain.Ordertable;
import cn.bdqn.mapper.OrdertableMapper;
import cn.bdqn.service.OrdertableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdertableServiceImpl implements OrdertableService {

    @Autowired
    private OrdertableMapper ordertableMapper;

    @Override
    public List<Ordertable> queryAllOrder() {

        return ordertableMapper.queryAllOrder();
    }

    @Override
    public List<Ordertable> queryOrderByStat(int orderStat) {

        return ordertableMapper.queryOrderByStat(orderStat);
    }

    @Override
    public List<Ordertable> queryOrderByStat2(int orderStat) {
        return ordertableMapper.queryOrderByStat2(orderStat);
    }

    @Override
    public List<Ordertable> queryOrderByStat3(int orderStat) {
        return ordertableMapper.queryOrderByStat3(orderStat);
    }

}
