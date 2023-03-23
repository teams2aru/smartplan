<main style="margin-top: 58px;">
    <div class="container pt-4">
        <?php $session = session();
        if ($session->get('role') == 'Admin') {   ?>
            <a href="/addproduct" class="btn btn-primary" role="button">Add Product</a>
        <?php } ?>
        <h1> Products </h1>
        <table class="table table-primary table-striped table-hover">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Remarks</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php if ($products) : ?>
                    <?php $i = 1;
                    foreach ($products as $product) : ?>

                        <tr>
                            <td><?php echo $i; ?></td>
                            <td><?php echo $product['productname']; ?></td>
                            <td><?php echo $product['productprice']; ?></td>
                            <td><?php echo $product['productquantity']; ?></td>
                            <td><?php echo substr($product['remarks'], 0, 80), "...";  ?></td>

                            <td>
                                <a href="<?php echo base_url('product/viewproduct/' . $product['id']); ?>" class="btn btn-primary btn-sm">Edit</a>
                                <a href="<?php echo base_url('/product/delete/' . $product['id']); ?>" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                    <?php $i++;
                    endforeach; ?>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
</main>