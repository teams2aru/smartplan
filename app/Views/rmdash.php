<main style="margin-top: 58px;">
    <div class="container pt-4">
        <h1> <?php $session = session(); // RM dashboards to Welcome RM
                        echo $session->get('username'); ?> </h1>
        <h1>Welcome Relationship manager</h1>
    </div>
</main>