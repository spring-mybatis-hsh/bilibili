package cn.bdqn.controller;

import cn.bdqn.domain.Ordertable;
import cn.bdqn.service.OrdertableService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("order")
public class OrdertableController {

    @Autowired
    private OrdertableService ordertableService;

    @RequestMapping("queryAll")
    public String queryAllOrder(HttpServletRequest request , Model model){
        List<Ordertable> ordertables = ordertableService.queryAllOrder();
        System.out.println(ordertables);
        model.addAttribute("list" , ordertables);
        request.setAttribute("list" , ordertables);

        return "Adminbackgroundshipment";
    }

    @RequestMapping("queryOrderByStat")
    public String queryByStat(HttpServletRequest request , Model model){
        List<Ordertable> ordertables = ordertableService.queryOrderByStat(1);
        System.out.println(ordertables);
        model.addAttribute("list",ordertables);
        request.setAttribute("list",ordertables);
        return "Adminbackgroundshipment";
    }
    @RequestMapping("queryOrderByStat2")
    public String queryByStat2(HttpServletRequest request , Model model){
        List<Ordertable> ordertables = ordertableService.queryOrderByStat2(2);
        System.out.println(ordertables);
        model.addAttribute("list",ordertables);
        request.setAttribute("list",ordertables);
        return "Adminbackgroundshipment";
    }
    @RequestMapping("queryOrderByStat3")
    public String queryByStat3(HttpServletRequest request , Model model){
        List<Ordertable> ordertables = ordertableService.queryOrderByStat3(3);
        System.out.println(ordertables);
        model.addAttribute("list",ordertables);
        request.setAttribute("list",ordertables);
        return "Adminbackgroundshipment";
    }

}
