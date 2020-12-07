package DAO;
import interfaces.Crud;
import models.Product;
import utils.Constants;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ProductDAO implements Crud {
    private ArrayList<Product> products;
    public ProductDAO(){
        this.products = new ArrayList<Product>();
        this.loadData();
    }
    public List list(){
        return this.products;
    }
    public boolean add(Product product){
        this.products.add(product);
        this.writeOnFile(product);
        return true;
    }

    private void writeOnFile(Product product){
        String fileToPath = Constants.PATH_CONFIGURATION_DATA;
        try {
            FileWriter fstream = new FileWriter(fileToPath, true);
            BufferedWriter out = new BufferedWriter(fstream);
            out.append(product.getKey() + ";" + product.getName() + ";" + product.getPrice() + ";" + product.getQuantity() + "\n");
            out.close();
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private void loadData(){
        String[] result;
        try {
            String fileToPath = Constants.PATH_CONFIGURATION_DATA;
            Scanner scanner = new Scanner(new File(fileToPath));
            while (scanner.hasNextLine()) {
                String line = scanner.nextLine();
                result = line.split(";");
                String key = result[0];
                String name = result[1];
                float price = Float.parseFloat(result[2]);
                int quantity = Integer.parseInt(result[3]);
                this.products.add(new Product(key,name,price,quantity));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
