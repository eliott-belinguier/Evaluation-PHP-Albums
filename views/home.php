<?php
use \Model\Album;

global $album;

function displayRowAlbum(Album $album) {
    ?>
    <tr>
        <th scope="row">1</th>
        <td><?= $album->getTitle() ?></td>
        <td><?= $album->getPochette() ?> Otto</td>
        <td><a class="btn btn-primary" href="/?id=<?= $album->getId() ?>" role="button">Link</a></td>
    </tr>
    <?php
}
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
    <title>Albums</title>
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Titre</th>
        <th scope="col">Pochettes</th>
        <th scope="col">Noter?</th>
    </tr>
    </thead>
    <tbody>
        <?php
        if ($album != null) {
            foreach ($album as $current) {
                displayRowAlbum($current);
            }
        }
        ?>
    </tbody>
</table>
</body>
</html>

