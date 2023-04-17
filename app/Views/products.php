<div class="container logincontainer mb-5 pt-4" style="margin-top: 50px">
    <?php $session = session();
    if ($session->get('role') == 'Admin' ||  $session->get('role') == 'Creator' ) {   ?>
        <a href="/addproduct" class="btn btn-primary" role="button">Add Idea </a>
    <?php } ?>
    <h1> Ideas</h1>
    <table class="table table-primary table-striped table-hover">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Risk</th>
                <th scope="col">Region</th>
                <th scope="col">Abstract</th>
                <th scope="col">Status</th>
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
                        <td><?php echo $product['idea_risk']; ?></td>
                        <td><?php echo $product['idea_region']; ?></td>
                        <td><?php echo substr($product['idea_abstract'], 0, 80), "...";  ?></td>
                        <td><?php echo $product['idea_status'];  ?></td>
                        <td>
                            <?php $session = session();
                            if ($session->get('role') == 'Relationship Manager') {   ?>
                                <a href="<?php echo base_url('product/reviewidea/' . $product['id']); ?>" class="btn btn-primary btn-sm">Review</a>
                                <a href="<?php echo base_url('product/tag/' . $product['id']); ?>" class="btn btn-primary btn-sm">Tag Clients</a>

                            <?php }
                            if ($session->get('role') == 'Admin' ||  $session->get('role') == 'Creator') {   ?>
                                <a href="<?php echo base_url('/product/delete/' . $product['id']); ?>" class="btn btn-danger btn-sm">Delete</a>

                            <?php }
                            $session = session();
                            if ($session->get('role') == 'Investor') {   ?>
                                <a href="<?php echo base_url('/product/invest/' . $product['id']); ?>" class="btn btn-primary btn-sm">View</a>
                            <?php } ?>
                        </td>

                    </tr>
                <?php $i++;
                endforeach; ?>
            <?php endif; ?>
        </tbody>
    </table>
</div>