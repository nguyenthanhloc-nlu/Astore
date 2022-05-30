package com.astore.controller.admin.detail_order;

import com.astore.services.implement.DetailedOrderServices;
import com.astore.services.implement.InventoryServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DetailOrderController", value = "/manage/order-detail")
public class DetailOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("listOrderDetail", DetailedOrderServices.getInstance().getAll());
        System.out.println(InventoryServices.getInstance().getAll().size());
        request.getRequestDispatcher("/view/admin/show-order-detail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
