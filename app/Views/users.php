<main style="margin-top: 58px;">
    <div class="container pt-4" style="padding-top: 5em !important">
        <?php $session = session();
        if ($session->get('role') == 'Admin') {   ?>
            <a href="/adduser" class="btn btn-primary" role="button">Add user</a>
        <?php } ?>
        <h1> Users </h1>
        <table class="table table-primary table-striped table-hover">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Phone</th>
                    <th scope="col">email</th>
                    <th scope="col">Role</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php if ($users) : ?>
                    <?php $i = 1;
                    foreach ($users as $user) : ?>

                        <tr>
                            <td><?php echo $i; ?></td>
                            <td><?php echo $user['fullName']; ?></td>
                            <td><?php echo $user['userphone']; ?></td>
                            <td><?php echo $user['useremail']; ?></td>
                            <td><?php echo $user['role']; ?></td>

                            <td>
                                <a href="<?php echo base_url('users/viewuser/' . $user['id']); ?>" class="btn btn-primary btn-sm">Edit</a>
                                <a href="<?php echo base_url('/users/delete/' . $user['id']); ?>" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                    <?php $i++;
                    endforeach; ?>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
</main>
