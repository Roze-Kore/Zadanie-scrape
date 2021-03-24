import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.util.ArrayList;
import java.util.List;

public class GetProducts {
    public static List<Product> getProducts(){
        List<Product> products = new ArrayList<Product>();
        try{
            Connection connect = Jsoup.connect("https://mangowe.pl/?s=kattlett&post_type=product");
            Document document = connect.get();


            Elements ProductNames = document.select(".entry-title");
            List<String> productsNamesCutted = new ArrayList<>();
            for(Element elem: ProductNames) {
                String str = elem.text();
                productsNamesCutted.add(str);
            }

            Elements ProductPrices = document.select(".price");
            List<String> productPricesCutted = new ArrayList<>();
            for(Element elem: ProductPrices) {
                productPricesCutted.add(elem.text());
            }

            for(int i=0; i<productPricesCutted.size()-1; i++){
                Product gadget = new Product(productsNamesCutted.get(i), productPricesCutted.get(i));
                products.add(gadget);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return products;
    }
}