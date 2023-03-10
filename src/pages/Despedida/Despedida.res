let s = React.string

let default = () => {
   Js.log("test: component") 

  <BlackEmptyLayout>
    <h2 className="text-2xl">
    { "DESPEDIDA DE SOLTEIRO DO BRAGA" -> s }
    </h2>
    <h2 className="text-2xl">
    { "DIA: 11/03/23" -> s }
    </h2>
    <h2 className="text-2xl">
    { "HORARIO: 16:00" -> s }
    </h2>
    <h2 className="text-2xl">
    { "LOCAL: Rancho Urbano Rua Azevedo Soares, 604 - Vila Gomes Cardim" -> s }
    </h2>
    <h2 className="text-2xl text-blue-900">
    { "TEM VALLET NO LOCAL" -> s }
    </h2>
  </BlackEmptyLayout>
}
