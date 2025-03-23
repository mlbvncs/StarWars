import QtQuick

TextField {
    property var identificador: ["person_id", "film_id"]
    width: 200
    height: 70

    color: "#ffc107" /*cor do texto*/

    font { 
        family: "Franklin Gothic Demi"
        pointSize: 19 /*tamanho do texto*/
         bold: true /*texto em negrito*/
    }

    placeholderText: identificador === "person_id" ? 'Character ID!' : 'Film ID!' /*nome de fundo*/
    placeholderTextColor: "#ffc107" /*cor do nome de fundo*/

    background: Rectangle { 
        color: "#40FFFFFF" /*cor transparente (o 40 representa o quanto é transparente)*/
        border.color: "#ffc107" /*cor da borda*/
        border.width: 3 /*tamanho da borda (1 é o padrão, feito manualmente para possíveis consultas)*/
        radius: 5
    }
}