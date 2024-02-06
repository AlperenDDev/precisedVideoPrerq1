public class InventoryManager {
    // Properties
    String productName;
    String productCode;
    Integer costPrice;
    Integer sellingPrice;
    public static Integer productCount = 0; // Declare productCount as public

    // Constructor with no parameters
    public InventoryManager() {
        productCount++;
    }

    // Constructor with productName and productCode parameters
    public InventoryManager(String productName, String productCode) {
        this.productName = productName;
        this.productCode = productCode;
        productCount++;
    }

    // Getter and setter for costPrice
    public void setCostPrice(Integer costPrice) {
        this.costPrice = costPrice;
    }

    public Integer getCostPrice() {
        return costPrice;
    }

    // Getter and setter for sellingPrice
    public void setSellingPrice(Integer sellingPrice) {
        this.sellingPrice = sellingPrice;
    }

    public Integer getSellingPrice() {
        return sellingPrice;
    }

    // Method to display product information
    public void productDisplay() {
        System.debug('Product Name: ' + productName);
        System.debug('Product Code: ' + productCode);
        System.debug('Cost Price: $' + costPrice);
        System.debug('Selling Price: $' + sellingPrice);

        Decimal profitMargin = ((Decimal.valueOf(sellingPrice) - Decimal.valueOf(costPrice)) * 100 / Decimal.valueOf(costPrice));
        System.debug('Profit Margin: ' + profitMargin + '%');

        if (profitMargin >= 20) {
            System.debug('Star Product');
        } else {
            System.debug('Average Product');
        }
    }
}