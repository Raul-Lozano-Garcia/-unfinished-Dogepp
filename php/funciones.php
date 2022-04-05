<?php

    function crearFooter($ruta){
        echo "
        <footer class='container-fluid py-3'>
            <div class='row'>
                <div class='col-12'>
                    <div class='container-fluid'>
                        <div class='row'>
                            <div class='col-12'>
                                <div class='container'>
                                    <div class='row'>
                                        <div class='col-md-6 col-logo'>
                                            <h2>Dogepp</h2>
                                            <h3 class='h4'>La web favorita de tu perro</h3>
                                        </div>
                                        <div class='col-md-6 col-lista'>
                                            <ul>
                                                <li><a href='$ruta/paginas/legal/aviso.html'>Aviso legal</a></li>
                                                <li><a href='$ruta/paginas/legal/cookies.html'>Política de cookies</a></li>
                                                <li><a href='$ruta/paginas/legal/privacidad.html'>Política de privacidad</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='container-fluid'>
                        <div class='row'>
                            <div class='col-12 text-center col-copyright'>
                                <small>&copy;Copyright 2022 <span>Dogepp</span>. Todos los derechos reservados</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        ";
    }

?>