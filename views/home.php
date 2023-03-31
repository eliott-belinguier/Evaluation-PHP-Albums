<?php
use \Model\Album;

global $album;

function displayRowAlbum(int $rank, Album $album) {
    ?>
    <tr>
        <th scope="row"><?= $rank ?></th>
        <td><?= $album->getTitle() ?></td>
        <td><img src="/images/<?= $album->getPochette() ?>"></td>
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
<form method="post" action="/">
    <div class="input-group flex-nowrap">
        <span class="input-group-text" id="addon-wrapping">Titre: </span>
        <input type="text" class="form-control" placeholder="Titre" aria-label="Titre" aria-describedby="addon-wrapping" name="search">
    </div>
    <button type="submit" class="btn btn-primary">Search</button>
</form>
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
            for ($i = 0; $i < count($album); ++$i)
                displayRowAlbum($i + 1, $album[$i]);
        }
        ?>
    </tbody>
</table>
</body>
</html>

