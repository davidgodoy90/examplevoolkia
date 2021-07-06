
var request = require("request");

let seller_id = process.argv[3] ;
let site_id = process.argv[2] 

function reqListener(error, response, body) {

    respuesta = body;
    var js = JSON.parse(respuesta);
    var logistics = js.logistics;
    js.logistics;
    
    logistics.forEach(item => {
       
        console.log(item.mode);
    });
    
     js.logistics
}

let url;
switch (site_id) {
    case "MLA":
        url = "https://api.mercadolibre.com/users/"
        break;
    case "DViaje":
        url = "https://api.viajes.com/users/"
        break;

    default:
        break;
}



request.get(url + seller_id + "/shipping_preferences",reqListener);



/* El ejercicio no lo realice con las categorias indicadas en el ejercico, tome como ejemplo la categoria logistics,
la cual contiene "mode" y "types", en ves de "id" o "name", mostrandos los resultados de los mismos*/


