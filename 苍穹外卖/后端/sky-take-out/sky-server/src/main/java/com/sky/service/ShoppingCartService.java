package com.sky.service;

import com.sky.dto.ShoppingCartDTO;
import com.sky.entity.ShoppingCart;
import java.util.List;

public interface ShoppingCartService {

    /**
     * 添加购物车
     * @param shoppingCartDTO
     */
    void addShoppingCart(ShoppingCartDTO shoppingCartDTO);

    /**
     * 展示购物车
     *
     * @return 列表＜购物车＞
     */
    List<ShoppingCart> showShoppingCart();

    /**
     * 清洁购物车
     */
    void cleanShoppingCart();

    /**
     * 购物车数量减一
     *
     * @param shoppingCartDTO 购物车dto
     */
    void subShoppingCart(ShoppingCartDTO shoppingCartDTO);
}