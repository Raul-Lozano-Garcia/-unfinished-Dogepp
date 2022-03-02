"use strict"

//EFECTO SCROLL INFO
const info_h2=document.querySelectorAll("#info h2");

document.addEventListener("scroll",
    ()=>{
        let top=document.documentElement.scrollTop;
        if(top>100){
            info_h2[0].classList.add("info_h2");
            
        }

        if(top>520){
            info_h2[1].classList.add("info_h2");
        }
    });

// API COVID-19
const contador_espania=document.querySelector(".contador_espania");
const contador_espania_hoy=document.querySelector(".contador_espania_hoy");
const contador_mundo=document.querySelector(".contador_mundo");
const fecha = new Date();
const mes=fecha.getMonth() + 1;
let mes_formateado;
if(mes<=9){
    mes_formateado="0"+mes;
}else{
    mes_formateado=mes;
}
const anio_formateado=fecha.getFullYear();
const dia=fecha.getDate();
let dia_formateado;
if(dia<=9){
    dia_formateado="0"+dia;
}else{
    dia_formateado=dia;
}

(async () => {

    const respuesta1= await fetch(`https://api.covid19tracking.narrativa.com/api/${anio_formateado}-${mes_formateado}-${dia_formateado}/country/spain`);

    const datos1=await respuesta1.json();

    const lista1=datos1["dates"][`${anio_formateado}-${mes_formateado}-${dia_formateado}`]["countries"]["Spain"]["today_confirmed"];

    contador_espania.setAttribute("data-target",lista1);

    const respuesta2= await fetch(`https://api.covid19tracking.narrativa.com/api/${anio_formateado}-${mes_formateado}-${dia_formateado}/country/spain`);

    const datos2=await respuesta2.json();

    const lista2=datos2["dates"][`${anio_formateado}-${mes_formateado}-${dia_formateado}`]["countries"]["Spain"]["today_new_confirmed"];

    contador_espania_hoy.setAttribute("data-target",lista2);

    const respuesta3= await fetch(`https://api.covid19tracking.narrativa.com/api/${anio_formateado}-${mes_formateado}-${dia_formateado}/country/spain`);

    const datos3=await respuesta3.json();

    const lista3=datos3["total"]["today_confirmed"];

    contador_mundo.setAttribute("data-target",lista3);

    const contadores=document.querySelectorAll(".contador");

    contadores.forEach(
        (contador)=>{
            contador.innerText='0';

            document.addEventListener("scroll",
            ()=>{
                let top=document.documentElement.scrollTop;

                    if(top>1950){
                
                        contador.classList.add("contador_animacion");
            
                        const actualizar_contador=()=>{
                            const total=+contador.getAttribute("data-target");
                            const c=+contador.innerText;
            
                            const incremento=total/5000;
            
                            if(c<total){
                                contador.innerText=`${Math.ceil(c + incremento)}`;
                                setTimeout(actualizar_contador,1);
                            }else{
                                contador.innerText=total;
                            }
                        }
                        actualizar_contador();
               
                }
         
            });
        }
    );

})();

