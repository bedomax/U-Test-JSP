package models;

import javax.servlet.http.HttpServletRequest;

public class Product {

    private String key;
    private String name;
    private float price;
    private int quantity;

    public Product(){
        this.key = "";
        this.name = "";
        this.price = 0;
        this.quantity = 0;
    }
    public Product(String key, String name, float price, int quantity ){
        this.key = key;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public Product(HttpServletRequest req){
        this.key = req.getParameter("key");
        this.name = req.getParameter("name");
        this.price = Float.parseFloat(req.getParameter("price"));
        this.quantity = Integer.parseInt(req.getParameter("quantity"));
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
