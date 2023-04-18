<div class="container logincontainer mb-5 pt-4" style="margin-top: 50px">
    
    <a href="/messages/compose" class="btn btn-primary" role="button">Compose </a>
    
    <h1> Messages</h1>
    <table class="table table-primary table-striped table-hover">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">From</th>
                <th scope="col">View</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($messages) : ?>
                <?php $i = 1; // Compose message
                foreach ($messages as $message) : ?>

                    <tr>
                        <td><?php echo $i; ?></td>
                        <td><?php echo $messages[0]['sender']; ?></td>                      
                        <td>
                            <a href="<?php echo base_url('/message/read/' . $messages[0]['meesage_id']); ?>" class="btn btn-primary btn-sm">Read</a>                            
                        </td>

                    </tr>
                <?php $i++;
                endforeach; ?>
            <?php endif; ?>
        </tbody>
    </table>
</div>