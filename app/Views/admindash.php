<main style="margin-top: 58px;">
    <div class="container pt-4">
        <h1> <?php $session = session(); // Admin dashboard
                echo $session->get('username'); ?> </h1> 
        <h1>Welcome Admin</h1>
    </div>
</main>