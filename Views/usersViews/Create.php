<?php
require '\WAMP\www\Foodies\Config\Config.php'
?>


<!DOCOTYPE html>
<html>
<head>
    <meta http-equiv="refresh" content="1; url=<?php echo $_SERVER["HTTP_REFERER"]  ; ?>" />
    <title>

    </title>
</head>
<body>
<form action="acceuil.html" method="post">
    <label for="Id">
        Id:
    </label>

    <input type="text" name="Id" id="Id" maxlength="20">

    <br>

    <label for="nom">
        Nom:
    </label>

    <input type="text" name="nom" id="nom" maxlength="20">

    <br>

    <label for="prenom">
        Prénom:
    </label>

    <input type="text" name="prenom" id="prenom" maxlength="20">

    <br>

    <label for="Age">
        Age:
    </label>

    <input type="text" name="Age" id="Age" maxlength="20">

    <br>

    <label for="Adresse">
        Adresse:
    </label>

    <input type="text" name="Adresse" id="Adresse" maxlength="20">

    <br>

    <label for="email">
        Email:
    </label>

    <input type="email" name="email" id="email" pattern=".+@gmail.com|.+@esprit.tn">

    <br>

</form>
</body>
</html>