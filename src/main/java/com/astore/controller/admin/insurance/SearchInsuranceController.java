package com.astore.controller.admin.insurance;

import com.astore.model.Insurance;
import com.astore.model.Order;
import com.astore.services.implement.InsuranceServices;
import com.astore.services.implement.OrderServices;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchInsuranceController", value = "/manage/search-insurance")
public class SearchInsuranceController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/json");
        String params  = request.getParameter("params");
        List<Insurance> insuranceList= new ArrayList<>();

        try {
            int id = Integer.parseInt(params);
            insuranceList.add(InsuranceServices.getInstance().getById(id));
        }catch (NumberFormatException e) {
            System.out.println(e.getMessage());
        }

        String json = null;
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        json = gson.toJson(insuranceList);
        response.getWriter().write(json);
        response.getWriter().close();
    }
}
