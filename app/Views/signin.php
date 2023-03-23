<div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="w-100" src="img\Which-Type-of-Investment-Has-the-Highest-Riskrea.jpg" alt="Image">
            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                <div class="p-3" style="max-width: 900px; background-color: rgb(111, 111, 197);">
                    <form action="<?php echo base_url(); ?>/LoginController/login" method="post">
                        <h1 style="text-align: center;">Sign in</h1>
                        <?php if (session()->getFlashdata('msg')) : ?>
                            <div class="alert alert-warning">
                                <?= session()->getFlashdata('msg') ?>
                            </div>
                        <?php endif; ?>
                        <label for="useremail">Username</label>
                        <input type="email" name="useremail" id="useremail">

                        <label for="pass">Password</label>
                        <input type="password" name="pass" id="pass">

                        <div>
                            <button type="submit">Sign in</button>
                            <button><a href="/signup" style="color: #FFFFFF;">Register </a></button>

                        </div>


                    </form>
                </div>
            </div>

        </div>

    </div>
</div>
<!-- Navbar & Carousel End -->


<!-- Full Screen Search Start -->
<div class="modal fade" id="searchModal" tabindex="-1">
    <div class="modal-dialog modal-fullscreen">
        <div class="modal-content" style="background: rgba(9, 30, 62, .7);">
            <div class="modal-header border-0">
                <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body d-flex align-items-center justify-content-center">
                <div class="input-group" style="max-width: 600px;">
                    <input type="text" class="form-control bg-transparent border-primary p-3" placeholder="Type search keyword">
                    <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Full Screen Search End -->