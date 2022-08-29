<?php
include_once 'classes/database.class.php';
include_once 'classes/citation.class.php';

$database = new Database();
$citation = new Citation($database->connection());

?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citation</title>
</head>

<body>
    <h1>Citations</h1>
    <form method="POST" >
        <fieldset>
            <legend>Veuillez renseigner une citation et son auteur</legend><br>
            Citation <input type="text" name="quote_text"><br><br>
            Auteur <input type="text" name="quote_author"><br><br>
            <input type="submit" name="soumettre">
        </fieldset>
    </form>

    <div>
        <?php
            // READ
            $citations = $citation->read();
            foreach($citations as $object) {
                echo "<p style='color: red'>" . $object["quote_author"] . "</p>" . "<p>" . $object["quote_text"] . "</p></br>";
            }
        ?>
    </div>

    <?php
        // CREATE
        if (isset($_POST['soumettre']) && isset($_POST['quote_text']) && isset($_POST['quote_author'])) {
            $text = htmlspecialchars(strip_tags($_POST['quote_text']));
            $author = htmlspecialchars(strip_tags($_POST['quote_author']));
            if (isset($text) && isset($author)) {
                $citation->create($text, $author);
                header('Location: http://127.0.0.1/phpCitation');
            }
        };
    ?>

</body>

</html>