<div class="container pt-4">
    <div class="container logincontainer mb-5">
        <div class="row justify-content-md-center">
            <div class="col-7 mt-5">
                <h2>Send Message</h2>
                <?php if (isset($validation)) : ?>
                    <div class="alert alert-warning">
                        <?= $validation->listErrors() ?>
                    </div>
                <?php endif; ?>
                <form action="<?php echo base_url(); ?>/messages/send" method="post" enctype="multipart/form-data">

                    <input type="hidden" name="sender" value="<?php $session = session(); echo $session->get('user_id'); ?>" />
                    <div id="personalinfo">
                        <div class="row mb-3">
                            <div class="col-md-12">

                                <select class="form-select" name="receiver" id="tagged_users" required>
                                    <?php
                                    foreach ($users as $user) {
                                        echo '<option value="' . $user['id'] . '">' . $user['fullName'] . '</option>';
                                    }
                                    ?>

                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <textarea type="text" name="message" placeholder="Message" class="form-control" rows="5" required></textarea>
                            </div>
                        </div>




                        <div class="row mb-3">
                            <div class="col-md-12 mb-3">
                                <button type="submit" class="btn btn-success">Send</button>
                            </div>
                        </div>

                    </div>
                </form>
            </div>

        </div>
    </div>