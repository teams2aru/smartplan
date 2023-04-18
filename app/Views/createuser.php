

    <div class="container pt-4">
        <div class="container logincontainer mb-5">
            <div class="row justify-content-md-center">
                <div class="col-9 mt-5">
                    <h2>Edit Product</h2>
                    <?php if (isset($validation)) : ?>
                        <div class="alert alert-warning">
                            <?= $validation->listErrors() ?>
                        </div>
                    <?php endif; ?>
                    <form action="<?php echo base_url(); ?>/LoginController/store" method="post">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="fname">Full Name</label>
                                <input type="text" name="full_name" id="fname" required>
                            </div>

                            <div class="col-md-6">
                                <label for="uname">Username</label>
                                <input type="text" name="username" id="uname" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="Pnumber">Phone Number</label>
                                <input type="number" name="phoneNo" id="Pnumber" required>
                            </div>

                            <div class="col-md-6">
                                <label for="Email">Email</label>
                                <input type="email" name="email" id="Email" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="address">Address</label>
                                <input type="text" name="address" id="address" required>
                            </div>
                            <div class="col-md-6">
                                <label for="idno">ID Number </label>
                                <input type="number" name="idno" id="idno" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="sex">Gender</label>
                                <select class="form-control" name="gender" id="sex">
                                    <option>Male</option>
                                    <option>Female</option>
                                    <option>Prefer Not to say</option>
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label for="role">User Type</label>
                                <select class="form-control" name="role" id="role">
                                    <option>Select Role</option>
                                    <option value="Relationship Manager">Relationship Manager</option>
                                    <option value="Investor">Investor</option>
                                    <option value="Creator">Creator</option>                                    
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="pass">Password</label>
                                <input type="password" name="password" id="pass" required>
                            </div>

                            <div class="col-md-6">
                                <label for="pass">Confirm Password</label>
                                <input type="password" name="cpassword" id="cpass" require>
                            </div>
                        </div>
                        <button type="submit" style="display: block; margin: 10px auto; ">Submit</button>
                    </form>
                </div>

            </div>
        </div>


<script>
    jQuery('.validatedForm').validate({
    rules: {
        pass: {
            minlength: 5,
        },
        cpassword: {
            minlength: 5,
            equalTo: "#password"
        }
    }
});
</script>