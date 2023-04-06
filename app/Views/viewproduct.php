<div class="container logincontainer mb-5 pt-4">
    <div class="row justify-content-md-center">
        <div class="col-9 mt-5">
            <?php $session = session();
            if ($session->get('role') == 'Investor') {   ?>

                <h2>Invest on this Idea</h2>

            <?php } else { ?>
                <h2>Edit Idea</h2>
            <?php } ?>
            <?php if (isset($validation)) : ?>
                <div class="alert alert-warning">
                    <?= $validation->listErrors() ?>
                </div>
            <?php endif; ?>
            <form action="<?php echo base_url(); ?>/IdeaController/invest" method="post" enctype="multipart/form-data">
                <input type="hidden" name="userid" value="<?php $session = session();
                                                            echo $session->get('user_id'); ?>" />
                <div id="personalinfo">
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <input type="text" name="idea_title" placeholder="Idea Title" value="<?php echo $producttable['productname']; ?>" class="form-control" disabled required>
                        </div>
                        <div class="col-md-6">
                            <select name="idea_type" class="form-select" aria-label="Default select example" disabled>
                                <option selected><?php echo $producttable['idea_type']; ?></option>
                                <option value="Stocks">Stocks</option>
                                <option value="Bonds">Bonds</option>
                                <option value="Mining">Mining</option>
                                <option value="Real Estate">Real Estate</option>
                            </select>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <textarea type="text" name="idea_abstract" placeholder="Excerpt" value="<?php echo $producttable['idea_abstract']; ?>" class="form-control" disabled rows="5"><?php echo $producttable['idea_abstract']; ?></textarea>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <textarea type="text" name="idea_descr" placeholder="Description" value="<?php echo $producttable['idea_descr']; ?>" class="form-control" disabled rows="5"><?php echo $producttable['idea_descr']; ?></textarea>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <input type="text" name="idea_expiry" placeholder="Expiry Date" value="<?php echo $producttable['idea_expiry']; ?>" class="form-control" disabled required>
                        </div>
                        <div class="col-md-6">
                            <input type="text" name="idea_risk" placeholder="Risk Rating" value="<?php echo $producttable['idea_risk']; ?>" class="form-control" disabled required>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <input type="text" name="idea_instruments" placeholder="Instruments" value="<?php echo $producttable['idea_instruments']; ?>" class="form-control" disabled required>
                        </div>
                        <div class="col-md-6">
                            <input type="text" name="idea_currency" placeholder="Currency" value="<?php echo $producttable['idea_currency']; ?>" class="form-control" disabled required>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <input type="text" name="idea_major" placeholder="Major Sector" value="<?php echo $producttable['idea_major']; ?>" class="form-control" disabled required>
                        </div>

                        <div class="col-md-6">
                            <input type="text" name="idea_minor" placeholder="Minor Sector" value="<?php echo $producttable['idea_minor']; ?>" class="form-control" disabled required>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">

                            <select class="form-select" name="idea_region" id="region" disabled>
                                <option><?php echo $producttable['idea_region']; ?></option>
                                <option value="Africa">Africa</option>
                                <option value="Asia">Asia</option>
                                <option value="Europe">Europe</option>
                                <option value="North America">North America</option>
                                <option value="South America">South America</option>

                            </select>
                        </div>

                        <div class="col-md-6">
                            <select class="form-select" name="idea_country" disabled>
                                <option><?php echo $producttable['idea_country']; ?></option>
                                <option>UK</option>
                                <option>Nigeria</option>
                                <option>USA</option>
                                <option>Kenya</option>
                                <option>India</option>
                                <option>Ghana</option>
                            </select>
                        </div>
                    </div>

                    <?php $session = session();
                    if ($session->get('role') == 'Investor') {   ?>

                        <button type="Submit" class="btn btn-block btn-primary">Invest</button>

                    <?php } ?>

                </div>
            </form>
        </div>

    </div>