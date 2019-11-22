package example.service.product;

public class ProductNotFoundException extends RuntimeException {

    private final long productId;

    public ProductNotFoundException(long productId) {
        super("Product not found: " + productId);

        this.productId = productId;
    }

    public long getProductId() {
        return productId;
    }
}
