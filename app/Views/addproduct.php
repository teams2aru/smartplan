<main style="margin-top: 58px;">
    <div class="container pt-4">

        <div class="row justify-content-md-center">
            <div class="col-5 mt-5">
                <h2>Add Product</h2>
                <?php if (isset($validation)) : ?>
                    <div class="alert alert-warning">
                        <?= $validation->listErrors() ?>
                    </div>
                <?php endif; ?>
                
                <form action="<?php echo base_url(); ?>/ProductController/save" method="post">
                    <div id="personalinfo">
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <input type="text" name="prod_name" placeholder="Product name" class="form-control" style="width:100%" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <input type="text" name="prod_price" placeholder="Product Price" class="form-control" style="width:100%" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <input type="text" name="prod_qtty" placeholder="Product Quantity" class="form-control" style="width:100%" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <textarea type="text" name="prod_remark" placeholder="Remark" class="form-control" rows="5"></textarea>
                            </div>
                        </div>

                    </div>

                    <div class="d-grid">
                        <button type="submit" class="btn btn-dark">Save</button>
                    </div>
            </div>
            </form>
        </div>


    </div>
</main>