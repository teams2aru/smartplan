<div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="w-100" src="img\Which-Type-of-Investment-Has-the-Highest-Riskrea.jpg" alt="Image">
            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                <div class="p-3" style="max-width: 900px; background-color: rgb(111, 111, 197); margin-top: 50px; ">
                    <form action="<?php echo base_url(); ?>/LoginController/save" method="post">
                        <h1 style="text-align: center;">Sign uP</h1>
                        <label for="fname">Full Name</label>
                        <input type="text" name="full_name" id="fname" required>

                        <label for="uname">Username</label>
                        <input type="text" name="username" id="uname" required>

                        <label for="Pnumber">Phone Number</label>
                        <input type="number" name="phoneNo" id="Pnumber" required>

                        <label for="Email">Email</label>
                        <input type="email" name="email" id="Email" required>

                        <label for="address">Address</label>
                        <input type="text" name="address" id="address" required>

                        <label for="idno">ID Number </label>
                        <input type="number" name="idno" id="idno" required>

                        <label for="sex">Gender</label>
                        <select class="form-control" name="gender" id="sex">
                            <option>Male</option>
                            <option>Female</option>
                            <option>Prefer Not to say</option>
                        </select>

                        <label for="role">User Type</label>
                        <select class="form-control" name="role" id="role">
                            <option>Investor</option>
                            <option>Creator</option>
                        </select>

                        <label for="pass">Password</label>
                        <input type="password" name="password" id="pass" required>

                        <button type="submit" style="display: block; margin: 10px auto; ">Submit</button>
                        
                    </form>
                </div>
            </div>

        </div>

    </div>
</div>