<?php ob_start()?>
<section id="dashboard" class="container">

    <h2 class="text-center my-4">Dashboard</h2>    
    <h5 class="text-center my-4">Gestions des utilisateurs </h5>  
    <h3 class="text-center">Bonjour <?= $user_connected_info-> lastname . ' '.$user_connected_info -> firstname ?>,</h3>  
    <div class="dashboard_head my-4">
        <div class="row d-flex justify-content-around text-center align-content-cneter">
            <div class="col-md-2"><a class="btn btn-outline-success" href="?path=users.create">Ajouter un utilisateur</a></div>
            <div class="col-md-3"><a  class="btn btn-outline-success"  href="?path=reservations.index">Gestion des reservations</a></div>
            <div class="col-md-2"><a  class="btn btn-outline-success"  href="">Login : <?= $user_connected_info-> login ?></a></div>
            <div class="col-md-2 ">  <a class="btn btn-outline-danger" href="?path=home">Deconnexion</a></div>
        </div>
    </div>

    <table class="table table-striped table-hover rounded table-bordered text-center w-100 mx-auto my-4">
        <thead>
            <tr>
                <th><h6>Nom - Prénom</h6></th>
                <th> Identifiant</th>
                <th> <h6>Modifier/supprrimer </h6> </th>
                <th> supprrimer</th>
            </tr>
        </thead>
        <tbody>
        <?php foreach ($all_user as $user) :  ?>
            <tr>
                <td><?= ucfirst($user->lastname)?> <?= ucfirst($user->firstname)?> </td>
                <td><?= $user->login?> </td>
                <td><a href="?path=users.edit&user_id=<?= $user->user_id?>" class="btn btn-success "> Modifier</a></td>
                <td>
                <form action="?path=users.delete" method="post" id="form_<?= $user->user_id?>">
                        <input type="hidden" name="user_id" value="<?= $user->user_id?>">
                    <button type="button" data-id="<?=  $user->user_id ?>" class="btn btn-danger btn_delete" data-bs-toggle="modal" data-bs-target="#staticBackdrop">supprimer</button>              
                </form>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>

        </table>
        <?php require __DIR__ . '/../_delete-modal.php' ?>

</section>


<?php  $content = ob_get_clean()?>
        