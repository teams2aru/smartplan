<main style="margin-top: 58px;">
    <div class="container pt-4">
        <div class="container logincontainer mb-5">
            <div class="row justify-content-md-center">
                <div class="col-5 mt-5">
                    <h2>Edit Product</h2>
                    <?php if (isset($validation)) : ?>
                        <div class="alert alert-warning">
                            <?= $validation->listErrors() ?>
                        </div>
                    <?php endif; ?>
                    <form action="<?php echo base_url(); ?>/product/update" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="ideaid" value="<?php echo $producttable['id']; ?>" />
                        <input type="hidden" name="userid" value="<?php $session = session();
                                                                    echo $session->get('user_id'); ?>" />
                        <div id="personalinfo">
                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <input type="text" name="prod_name" class="form-control" value="<?php echo $producttable['productname']; ?>" style="width:100%" required>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <input type="text" name="prod_price" class="form-control" value="<?php echo $producttable['productprice']; ?>" style="width:100%" required>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-12">                                    
                                    <input type="text" name="prod_qtty" class="form-control" value="<?php echo $producttable['productquantity']; ?>" style="width:100%" required>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <textarea type="text" name="prod_remark" placeholder="Description" class="form-control" rows="5"> <?php echo $producttable['remarks']; ?></textarea>
                                </div>
                            </div>

                        </div>
                        <div class="d-grid">
                            <button type="submit" class="btn btn-dark">Update</button>
                        </div>
                </div>
                </form>
            </div>

        </div>
    </div>
</main>