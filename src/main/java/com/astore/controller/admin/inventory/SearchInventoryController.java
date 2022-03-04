package com.astore.controller.admin.inventory;

import com.astore.model.Inventory;
import com.astore.model.Slide;
import com.astore.services.implement.InventoryServices;
import com.astore.services.implement.SlideServices;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchInventoryController", value = "/manage/searchInventory")
public class SearchInventoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/json");
        String params = request.getParameter("params");
        List<Inventory> listInventory = new ArrayList<>();

        try {
            int id = Integer.parseInt(params);
            listInventory.add(InventoryServices.getInstance().getById(id));
        }catch (NumberFormatException e) {
         e.getMessage();
        }

        String json = null;
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        json = gson.toJson(listInventory);
        response.getWriter().write(json);
        response.getWriter().close();
    }
}
