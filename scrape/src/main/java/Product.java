public class Product {
    private String name;
    private String price;

    public Product(String name, String price) {
        this.name = name;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String title) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Product[" +
                "name='" + name + '\'' +
                ", price='" + price + '\'' +
                ']';
    }
}
