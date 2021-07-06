import me.*;
def upsPullTrkService = ctx.getBean('upsPullTrkService')
def s = Shipment.get(27528954729)
def tn = s.trackingNumber
def trackingData = upsPullTrkService.getTrkEvents([tn])
trackingData.each { td ->
println "------------------------------------------------"
println "${td.sucursal} - ${td.eventDate} - ${td.description}"
}
"Done"


El objetivo del output, es obtener sucursal, fecha y descripcion que obtiene el historial del envio 27528954729.


