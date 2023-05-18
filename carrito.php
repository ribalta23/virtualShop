<?php
    session_start();
    $conn = new mysqli("localhost", "root", "", "TRRGTODAYNEWS");
    if ($conn->connect_error) {
        echo "Error: Ha fallat la connexió: (" . $conn->connect_error . ")" . $conn-> connect_error;
    }
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="img/logo.png">
    <title>TARREGA TODAY STORE</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <script src="https://kit.fontawesome.com/b79b517761.js" crossorigin="anonymous"></script>
    <header>
        <div class="container_header">
            <nav class="header">
                <a class="logo" href="main.php"><img src="./img/logo.png" alt=""></a>
                <form action="/search" id="searchthis" method="get" style="display: inline;">
                    <input class="input" id="search-box" name="q" size="38" type="text" placeholder="Busqueda" /> <input id="search-btn" type="submit" value="GO" />
                </form>
                <ul>
                    <li>
                        <i class="fa-solid fa-newspaper"></i>
                        <a href="index.html">DIARI</a>
                        <i class="fa-solid fa-house"></i>
                        <a href="main.php">MENU</a>
                        <i class="fa-solid fa-shop"></i>
                        <a href="productes.php?idCategoria=0">PRODUCTES</a>
                        <i class="fa-solid fa-cart-shopping"></i>
                        <a href="carrito.php">COMPRES</a>
                        <i class="fa-solid fa-user"></i>
                        <a href="login.html">LOGIN</a>
                    </li>
                </ul>
            </nav>
            <nav class="header2">
                <div>
                    <a class="logo" href="index.php"><img src="./img/logo.png" alt=""></a>
                    <button onclick="menuDrop()"><i class="fa-solid fa-bars"></i></button>
                </div>
            </nav>
        </div>
    </header>
    <div class="sota_header"></div>
    <div id="header_drop" style="display: none;">
        <ul>
            <li>
                <a onclick="amagarMenu()" href="index.html">DIARI</a>
                <a onclick="amagarMenu()" href="main.php">MENU</a>
                <a onclick="amagarMenu()" href="productes.php?idCategoria=0">PRODUCTES</a>
                <a onclick="amagarMenu()" href="carrito.php">COMPRES</a>
                <a onclick="amagarMenu()" href="login.html">LOGIN</a>
            </li>
        </ul>
    </div>
    <section id="carrito">
        <div class="container">
            <?php
                if($_SESSION['carreto']) {
                    $carreto = $_SESSION['carreto'];
                    $preutotal=0;
                    for($i=0;$i<count($carreto);$i++) {
                        $pro = "SELECT * FROM productesAIAL WHERE idProducte=".$carreto[$i].";";
                        $resultP = $conn->query($pro);
                        $row = $resultP->fetch_assoc(); 
                        $idP = $row["idProducte"];
                        $preutotal=$preutotal+$row["preu"];
                        echo "<div class='comprat'>";
                        echo "<img src='Productes/".$row["imatge"]."'>";
                        echo "<div class='compratT'>";
                        echo "<h1>".$row["nom"]."</h1>";
                        echo "<p>".$row["preu"]." €</p>";
                        echo "<a href=''><button><i class='fa-solid fa-trash'></i></button></a>";
                        echo "</div>";
                        echo "</div>";
                    }
                } else {
                    $_SESSION['carreto'] = 0;
                    echo "<p class='noPro'>No hi ha productes a la cistella</p>";
                }
            ?>
        </div>
    </section>
    <section id="comprar">
        <div class="comprar">
            <h1 class="preuFinal"><?php echo $preutotal; ?> €</h1>
            <button onclick="comprar()" class="Pagar">COMPRAR</button>
        </div>
    </section>
    <section id="peu">
        <div class="container">
            <div class="legal">
                <ul>
                    <li>
                        <a href="javascript:politicaMostrar()">POLITICA DE PRIVACITAT</a>
                        <a href="javascript:aboutUsMostrar();">QUI SOM</a>
                        <a href="javascript:legalMostrar()">LEGAL</a>
                    </li>
                </ul>
            </div>
            <div class="contacta">
                <p>CONTACTA AMB NOSALTRES</p>
                <button><a href="">ENVIA UN EMAIL</a></button>
            </div>
            <div class="xarxes">
                <p>O SEGUEIXNOS A LES XARXES</p>
                <div class="div">
                    <i class="fa-brands fa-youtube yt"></i>
                    <i class="fa-brands fa-instagram ig"></i>
                    <i class="fa-brands fa-twitter twt"></i>
                    <i class="fa-brands fa-linkedin in"></i>
                </div>
            </div>
            <img src="./img/logo.png" alt="">
        </div>
    </section>

    <script src="script.js"></script>
</body>
</html>