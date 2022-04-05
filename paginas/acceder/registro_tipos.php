<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dogepp | La web favorita de tu perro</title>
    <link rel="icon" href="../../assets/imagenes/logo.png" type="image/png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="../../node_modules/swup/dist/swup.min.js" defer></script>
    <script type="text/javascript" src="../../js/swup.js" defer></script>
    <script type="text/javascript" src="../../js/app.js" defer></script>
    <link rel="stylesheet" href="../../css/style.css">
</head>
<body>

    <?php
        require_once("../../php/funciones.php");
    ?>

    <!-- MAIN -->
    <main id="swup" class="transition-fade">

        <!-- FLECHA VOLVER -->
        <a class="volver flecha_volver" href="/Proyecto/paginas/acceder/acceder.php"><i class="fa-solid fa-arrow-left"></i></a>

        <!-- TIPOS ACCESO -->
        <section id="tipos" class="tipos_acceso container py-5">
          <div class="row">
            <div class="col-12">
              <div class="text-center">
                <h2 class="d-inline-block">Tipos de cuenta</h2>
              </div>
              <p class="mb-5">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maxime atque accusamus omnis ullam fuga sapiente minima commodi eius praesentium nostrum ab maiores necessitatibus tempore repudiandae aliquam quidem in ut porro, ex ratione pariatur eaque quaerat doloremque? Architecto, necessitatibus. Sit, temporibus magni? Possimus iure pariatur reprehenderit modi quae repudiandae assumenda deleniti.</p>
            </div>
          </div>
            <div class="row gx-5">
              <div class="col-md-4">
                <a href="#">
                    <div class="tipo_cuenta">
                        <img src="../../assets/imagenes/tipo1.png" alt="tipo de usuario">
                        <h3>Usuario</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates sequi dicta hic adipisci, rem eveniet pariatur aliquid animi perspiciatis, nesciunt explicabo ducimus dolore. Beatae, sed!</p>
                    </div>
                </a>
              </div>
              <div class="col-md-4">
                <a href="#">
                    <div class="tipo_cuenta">
                        <img src="../../assets/imagenes/tipo2.png" alt="tipo de usuario">
                        <h3>Adiestrador</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates sequi dicta hic adipisci, rem eveniet pariatur aliquid animi perspiciatis, nesciunt explicabo ducimus dolore. Beatae, sed!</p>
                    </div>
                </a>
              </div>
              <div class="col-md-4">
                <a href="#">
                    <div class="tipo_cuenta">                   
                        <img src="../../assets/imagenes/tipo3.png" alt="tipo de usuario">
                        <h3>Empresa</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates sequi dicta hic adipisci, rem eveniet pariatur aliquid animi perspiciatis, nesciunt explicabo ducimus dolore. Beatae, sed!</p>               
                    </div>
                </a>
              </div>
            </div>
        </section>
        <!-- FIN TIPOS ACCESO-->

    </main>
    <!-- FIN MAIN -->

    <?php
        crearFooter("../..");
    ?>

</body>
</html>