package com.astore.controller.client.pay;

import com.astore.model.Cart;
import com.astore.model.Product;
import com.astore.model.Store;
import com.astore.model.User;
import com.astore.services.implement.CartServices;
import com.astore.services.implement.ProductServices;
import com.astore.services.implement.StoreServices;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CartController", value = "/cart")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Store store = StoreServices.getInstance().getById(1);
        String storeName = store.getName();
        String linkLogo = store.getLinkLogo();
        request.setAttribute("linkLogoStore", linkLogo);
        request.setAttribute("nameStore", storeName);

        HttpSession ss = request.getSession();

        if (ss.getAttribute("userNameAccountLogin") != null) {
            String userNameAccountLogin = (String) ss.getAttribute("userNameAccountLogin");

            User user = UserServices.getInstance().getInformationUser(userNameAccountLogin);
            List<Cart> cartData = CartServices.getInstance().getCartForImg(user.getId());

            request.setAttribute("quantityCart", cartData.size());

        } else {
            request.setAttribute("informationCustomer", "<div class=\"cart-payment  cart-payment-2\" style=\"margin-top: 2px;\">\n" +
                    "    <div class=\"my-container\" style=\"background: transparent; max-width: 690px;\">\n" +
                    "        <div class=\"my-row row-cart-payment row-cart-payment-2\">\n" +
                    "            <div class=\"my-l-12 my-m-12 my-c-12 col-infor-customer text-align-left\">\n" +
                    "                <h3>Thông tin khách hàng</h3>\n" +
                    "            </div>\n" +
                    "            <div class=\"my-l-12 my-m-12 my-c-12 col-infor-customer\">\n" +
                    "                <div class=\"my-row\">\n" +
                    "                    <div class=\"my-col my-l-4 my-m-4 my-c-6\">\n" +
                    "                        <form action=\"\" class=\"text-align-left form-radio\">\n" +
                    "                            <div class=\"my-row\">\n" +
                    "                                <div class=\"my-col my-l-6 my-m-6 my-c-6\">\n" +
                    "                                    <input checked=\"checked\" type=\"radio\" id=\"\" name=\"sex\" value=\"Nam\">\n" +
                    "                                    <label for=\"\" style=\"font-size: 18px;\">Anh</label>\n" +
                    "                                </div>\n" +
                    "                                <div class=\"my-col my-l-6 my-m-6 my-c-6\">\n" +
                    "                                    <input type=\"radio\" id=\"age1\" name=\"sex\" value=\"Nữ\">\n" +
                    "                                    <label for=\"\" style=\"font-size: 18px;\">Chị</label>\n" +
                    "                                </div>\n" +
                    "                            </div>\n" +
                    "                        </form>\n" +
                    "                    </div>\n" +
                    "                    <div class=\"my-col my-l-8 my-m-8 my-c-6\">\n" +
                    "                    </div>\n" +
                    "                </div>\n" +
                    "            </div>\n" +
                    "            <div class=\"my-l-12 my-m-12 my-c-12 col-infor-customer\">\n" +
                    "                <form action=\"\">\n" +
                    "                    <div class=\"my-row\" style=\"margin-bottom: 20px;\">\n" +
                    "                        <div class=\"my-col my-l-6 my-m-6 my-c-12 col-input-form\">\n" +
                    "                            <input class=\"input-chung\" type=\"text\" id=\"fullNameCustomer\" name=\"fullNameCustomer\"\n" +
                    "                                   placeholder=\"Họ và tên\"><br>\n" +
                    "                        </div>\n" +
                    "                        <div class=\"my-col my-l-6 my-m-6 my-c-12 col-input-form\">\n" +
                    "                            <input class=\"input-chung\" type=\"tel\" id=\"phoneCustomer\" name=\"tel\"\n" +
                    "                                   placeholder=\"Số điện thoại\"><br>\n" +
                    "                        </div>\n" +
                    "                    </div>\n" +
                    "                </form>\n" +
                    "            </div>\n" +
                    "        </div>\n" +
                    "    </div>\n" +
                    "</div>\n" +
                    "\n" +
                    "<div class=\"cart-payment  cart-payment-3\" style=\"margin-top: 3px;\">\n" +
                    "    <div class=\"my-container\" style=\"background: transparent; max-width: 690px;\">\n" +
                    "        <div class=\"my-row row-cart-payment row-cart-payment-3\">\n" +
                    "            <div class=\"my-l-12 my-m-12 my-c-12 col-infor-customer text-align-left\">\n" +
                    "                <h3>Thông tin giao hàng</h3>\n" +
                    "            </div>\n" +
                    "            <div class=\"my-l-12 my-m-12 my-c-12 col-infor-customer\">\n" +
                    "                <div class=\"my-row\">\n" +
                    "                    <div class=\"my-col my-l-10 my-m-12 my-c-12\">\n" +
                    "                        <form action=\"\" class=\"text-align-left\">\n" +
                    "                            <div class=\"my-row\">\n" +
                    "                                <div class=\"my-col my-l-6 my-m-6 my-c-6\" style=\"text-align: left;\">\n" +
                    "                                    <input checked=\"checked\" name=\"deliveryForm\" type=\"radio\">\n" +
                    "                                    <label for=\"\" style=\"font-size: 18px;\">Giao tận nơi</label>\n" +
                    "                                </div>\n" +
                    "                                <div class=\"my-col my-l-6 my-m-6 my-c-6\" style=\"text-align: left;\">\n" +
                    "                                    <input name=\"deliveryForm\" type=\"radio\">\n" +
                    "                                    <label for=\"\" style=\"font-size: 18px;\">Nhận tại cửa hàng</label>\n" +
                    "                                </div>\n" +
                    "                            </div>\n" +
                    "                        </form>\n" +
                    "                    </div>\n" +
                    "                    <div class=\"my-col my-l-4 my-m-0 my-c-0\">\n" +
                    "                    </div>\n" +
                    "                </div>\n" +
                    "            </div>\n" +
                    "            <div class=\"my-l-12 my-m-12 my-c-12 col-infor-customer\">\n" +
                    "                <form action=\"\" class=\"form-tinh-thanh\">\n" +
                    "                    <div class=\"my-row\">\n" +
                    "                        <div class=\"my-col my-l-6 my-m-6 my-c-12 col-input-form\">\n" +
                    "                            <select class=\"input-chung\" name=\"calc_shipping_provinces\" required=\"\">\n" +
                    "                                <option value=\"\">Tỉnh / Thành phố</option>\n" +
                    "                            </select>\n" +
                    "                        </div>\n" +
                    "                        <div class=\"my-col my-l-6 my-m-6 my-c-12 col-input-form\">\n" +
                    "                            <select class=\"input-chung\" name=\"calc_shipping_district\" required=\"\">\n" +
                    "                                <option value=\"\">Quận / Huyện</option>\n" +
                    "                            </select>\n" +
                    "                        </div>\n" +
                    "                        <div class=\"my-col my-l-6 my-m-6 my-c-12 col-input-form\">\n" +
                    "                            <input class=\"input-chung\" type=\"text\" id=\"address\" name=\"calc_shipping_district\"\n" +
                    "                                   placeholder=\"Xã\"><br>\n" +
                    "                        </div>\n" +
                    "                        <div class=\"my-col my-l-6 my-m-6 my-c-12 col-input-form\">\n" +
                    "                            <input class=\"input-chung\" type=\"text\" name=\"calc_shipping_district\"\n" +
                    "                                   placeholder=\"Số nhà, tên đường\"><br>\n" +
                    "                        </div>\n" +
                    "                    </div>\n" +
                    "                </form>\n" +
                    "            </div>\n" +
                    "\n" +
                    "            <div class=\"my-l-12 my-m-12 my-c-12 col-temp-price col-infor-customer\">\n" +
                    "                <div class=\"my-row a-product\" style=\"margin-top: 30px;\">\n" +
                    "                    <div class=\"my-l-3 my-m-3 my-c-3\">\n" +
                    "                    </div>\n" +
                    "                    <div class=\"my-l-6 my-m-6 my-c-6\">\n" +
                    "                    </div>\n" +
                    "                    <div class=\"my-l-3 my-m-3 my-c-3\">\n" +
                    "                        <h3 style=\"text-align: right\"></h3>\n" +
                    "                    </div>\n" +
                    "                </div>\n" +
                    "            </div>\n" +
                    "            <div class=\"my-l-12 my-m-12 my-c-12\" style=\"margin-bottom: 20px;\">\n" +
                    "                <button class=\"button-order\">ĐẶT HÀNG</button>\n" +
                    "            </div>\n" +
                    "        </div>\n" +
                    "    </div>\n" +
                    "</div>");
            if (ss.getAttribute("listCart") != null) {
                List<Cart> cartList = (List<Cart>) ss.getAttribute("listCart");

                request.setAttribute("quantityCart", cartList.size());

            } else {
                request.setAttribute("quantityCart", 0);

            }


        }

        if (ss.getAttribute("userNameAccountLogin") != null) {
            String userNameAccountLogin = (String) ss.getAttribute("userNameAccountLogin");

            User user = UserServices.getInstance().getInformationUser(userNameAccountLogin);
            List<Cart> cartData = CartServices.getInstance().getCartForImg(user.getId());
            if (cartData.size() != 0) {
                request.setAttribute("titleSumCart", "Tạm tính");
                request.setAttribute("listCart", cartData);
                request.setAttribute("sumCart", CartServices.getInstance().sumPriceCart(user.getId()));
                request.setAttribute("notProduct","");

            } else {
                request.setAttribute("titleSumCart", "");
                request.setAttribute("sumCart", "");
                request.setAttribute("listCart", "");
                request.setAttribute("notProduct","Không có sản phẩm");

            }
        } else {

            if (ss.getAttribute("listCart") != null) {
                List<Cart> cartList = (List<Cart>) ss.getAttribute("listCart");
                long sumCart = 0;
                for (Cart cart : cartList) {
                    Product product = ProductServices.getInstance().getById(cart.getIdProduct());
                    cart.setNameProduct(product.getName());
                    cart.setLinkImgProduct(product.getListPhotoUrl().get(0));
                    cart.setRom(product.getRom());
                    cart.setPrice(product.getPrice());
                    sumCart += cart.getQuantity() * cart.getPrice();
                }
                request.setAttribute("titleSumCart", "Tạm tính");
                request.setAttribute("sumCart", sumCart);
                request.setAttribute("listCart", cartList);
                request.setAttribute("notProduct","");
            } else {
                request.setAttribute("listCart", "");
                request.setAttribute("sumCart", "");
                request.setAttribute("listCart", "");
                request.setAttribute("notProduct","Không có sản phẩm");
            }


        }
        request.getRequestDispatcher("view/client/cart/cart.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

}
