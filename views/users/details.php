<?php ob_start()?>
<?php if (isset($_SESSION['user_id'])) { ?>
    <div class="show_reservation">
        <h2 class="text-center">Bonjour <?= $details_reservations[0] -> lastname . ' ' . $details_reservations[0] -> firstname?></h2>
            <h5 class="text-center"> Bienvenue sur Votre page de reservation de Vélos </h5>
            <div class="reservations d-flex flex-column justify-content-center w-75 mx-auto">
                <?php foreach ($details_reservations as $reservation): ?>
                        <div class="card mb-3" style="max-width: 940px;">
                                <div class="row g-0">
                                    <div class="col-md-5">
                                    <img src="./assets/img/<?= $reservation -> photo ?>"" class="img-fluid rounded-start" alt="...">
                                    </div>
                                        <div class="col-md-7">
                                            <div class="card-body text-center">
                                                <h5 class="card-title">Numéro du vélo:  <?= $reservation -> registration_number ?></h5>
                                                <p class="card-text">numéro de reservation : <?= $reservation -> res_num ?></p>
                                                <p class="card-text">Début de reservation : <?= $reservation -> start_date ?></p>
                                                <p class="card-text">Fin de reservation : <?= $reservation -> end_date ?></p>
                                                <p class="card-text"><small class="text-muted">Date de reservation : <?= $reservation -> res_date ?></small></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
                <?php endforeach; ?>
            </div>
<?php } else {?>
    <h1 class="text-center"> Pour voir vos réservations vous devez vous connecter</h1>
<a href="?path=users.index" class="btn btn-success d-flex justify-content-center col-1 mx-auto">Se connecter</a>
<?php }?>
</div>
<?php
$content = ob_get_clean() ?>