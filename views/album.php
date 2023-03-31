<?php
use \Model\Album;

global $album;

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
    <title>Album - <?= $album->getTitle() ?></title>
</head>
<body>
    <div class="card" style="width: 18rem;">
        <img src="/images/<?= $album->getPochette() ?>" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title"><?= $album->getTitle() ?></h5>
            <p class="card-text"><?= $album->getDescription() ?></p>
            <div class="card" style="width: 18rem;">
                <form method="post" action="/?id=<?= $album->getId() ?>">
                    <label for="note" class="form-label">Note: </label>
                    <input type="range" class="form-range" min="1" max="5" id="note" name="note">
                    <div class="input-group input-group-lg">
                        <span class="input-group-text" id="inputGroup-sizing-lg">Comment:</span>
                        <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="comment">
                    </div>
                    <button type="submit" class="btn btn-primary">Envoyer</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>