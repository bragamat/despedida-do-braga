let s = React.string

let default = () => {
   Js.log("test: component") 

  <BlackEmptyLayout>
    <h2 className="text-2xl">
    { "MINHA DESPEDIDA DE SOLTEIRO" -> s }
    </h2>
    <h2 className="text-2xl">
    { "DIA: 11/03/23" -> s }
    </h2>
    <h2 className="text-2xl">
    { "HORARIO: 15:00" -> s }
    </h2>
    <h2 className="text-2xl">
    { "LOCAL: TATUAPE" -> s }
    </h2>
  </BlackEmptyLayout>
}
