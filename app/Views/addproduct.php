
    <div class="container pt-4">

        <div class="row justify-content-md-center">
            <div class="col-9 mt-5">
                <h2>Add Idea</h2>
                <?php if (isset($validation)) : ?>
                    <div class="alert alert-warning">
                        <?= $validation->listErrors() ?>
                    </div>
                <?php endif; ?>

                <form action="<?php echo base_url(); ?>/ProductController/save" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="userid" value="<?php $session = session();
                                                                echo $session->get('user_id'); ?>" />
                    <div id="personalinfo">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <input type="text" name="idea_title" placeholder="Idea Title" class="form-control" required>
                            </div>
                            <div class="col-md-6">
                                <select name="idea_type" class="form-select" aria-label="Default select example">
                                    <option selected>Select Investment Type</option>
                                    <option value="Stocks">Stocks</option>
                                    <option value="Bonds">Bonds</option>
                                    <option value="Mining">Mining</option>
                                    <option value="Real Estate">Real Estate</option>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <textarea type="text" name="idea_abstract" placeholder="Abstract" class="form-control" rows="5"></textarea>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <textarea type="text" name="idea_descr" placeholder="Description" class="form-control" rows="5"></textarea>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <input type="date" name="idea_expiry" placeholder="Expiry Date" class="form-control" required>
                            </div>
                            <div class="col-md-6">
                                <input type="text" name="idea_risk" placeholder="Risk Rating" class="form-control" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <input type="text" name="idea_instruments" placeholder="Instruments" class="form-control" required>
                            </div>
                            <div class="col-md-6">
                                <input type="text" name="idea_currency" placeholder="Currency" class="form-control" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <input type="text" name="idea_major" placeholder="Major Sector" class="form-control" required>
                            </div>

                            <div class="col-md-6">
                                <input type="text" name="idea_minor" placeholder="Minor Sector" class="form-control" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">

                                <select class="form-select" name="idea_region" id="region">
                                    <option>Select Region</option>
                                    <option value="Africa">Africa</option>
                                    <option value="Asia">Asia</option>
                                    <option value="Europe">Europe</option>
                                    <option value="North America">North America</option>
                                    <option value="South America">South America</option>

                                </select>
                            </div>

                            <div class="col-md-6">
                                <select class="form-select" name="idea_country">
                                    <option>Select Country</option>
                                    <option>UK</option>
                                    <option>Nigeria</option>
                                    <option>USA</option>
                                    <option>Kenya</option>
                                    <option>India</option>
                                    <option>Ghana</option>
                                    <option>Australia</option>
                                    <option>Senegal</option>
                                    <option>Canada</option>
                                    <option>India</option>
                                    <option>Brazil</option>
                                    <option>Russia</option>
                                </select>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-success">Save</button>

                    </div>
                </form>
            </div>


        </div>
