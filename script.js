//--------------- SLIDER MAIN PAGE------------------------------------------------//

var num = 0;
var imgg = new Array();

imgg[0] = "./img/Menu/BannerProductes.png";
imgg[1] = "./img/Menu/BannerPlansSub.png";
imgg[2] = "./img/Menu/BannerJoc.png";

document.getElementById("imgSlider").src = imgg[num];
function cambiarImatgeDreta() {
    if (num > 2) num = 0;
    document.getElementById("imgSlider").src = imgg[num];
    num++;
}

function cambiarImatgeEsquerra() {
    if (num < 0) num = 2;
    document.getElementById("imgSlider").src = imgg[num];
    num--;
}

function loop() {
    if (num > 2) num = 0;
    document.getElementById("imgSlider").src = imgg[num];
    num++;
    setTimeout(loop, 3000);
}
loop();

// --------------------- MENU ------------------//
var menu = 0;

function menuDrop() {
    menuD = document.getElementById('header_drop');
    if (menu == 0) {
        menuD.style.display = 'inline';
        menu = 1;
    } 
    else {
        menuD.style.display = 'none';
        menu = 0;
    }
}
function amagarMenu(){
    menuD = document.getElementById('header_drop');
    menuD.style.display = 'none';
}

//----------------------------------------------------------//
function comprar() {
    var resultado = window.confirm('VOLS REALITZAR LA COMPRA?');
    if (resultado === true) {
        window.alert('HAS REALITZAT LA COMPRA CORRECTAMENT, TORNA AL MENU PRINCIPAL');
    } else { 
        window.alert('TORNA AL MENU PRINCIPAL');
    }
}
