package example.service.product;

import io.rsocket.exceptions.RSocketException;

/**
 * Exception thrown when a product cannot be found in the database.
 */
public class ProductNotFoundException extends RSocketException {

    private final long productId;

    public ProductNotFoundException(long productId) {
        super("Product not found: " + productId);

        this.productId = productId;
    }

    public long getProductId() {
        return productId;
    }

    @Override
    public int errorCode() {
        return 0x00000201;
    }
}
