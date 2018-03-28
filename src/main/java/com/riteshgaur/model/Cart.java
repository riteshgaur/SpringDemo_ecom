package com.riteshgaur.model;

import java.util.HashMap;
import java.util.Map;

public class Cart {

    private String cartId;
    private Map<String, CartItem> cartItems;
    private double grandTotal;

    private Cart() {
        cartItems = new HashMap<String, CartItem>();
        grandTotal = 0;
    }


    public Cart(String cartId) {
        this();

        this.cartId = cartId;

    }

    public void addCartItems(CartItem items) {

        String productId = items.getProduct().getProductID();

        if (cartItems.containsKey(productId)) {

            CartItem existingCartItems = cartItems.get(productId);
            existingCartItems.setQuantity((existingCartItems.getQuantity() + items.getQuantity()));
            cartItems.put(productId, items);

        } else {
            cartItems.put(productId, items);
        }

        updateGrandTotal();

    }


    public String getCardID() {
        return cartId;
    }

    public void setCardID(String cardID) {
        this.cartId = cardID;
    }

    public Map<String, CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(Map<String, CartItem> cartItems) {
        this.cartItems = cartItems;
    }

    public double getGrandTotal() {
        return grandTotal;
    }

    public void setGrandTotal(double grandTotal) {
        this.grandTotal = grandTotal;
    }

    public void removeCartItem(CartItem item) {

        String productId = item.getProduct().getProductID();
        cartItems.remove(productId);
        updateGrandTotal();

    }

    public void updateGrandTotal() {

        grandTotal = 0;
        for (CartItem item : cartItems.values()) {

            grandTotal = grandTotal + item.getTotalPrice();

        }

    }

}
