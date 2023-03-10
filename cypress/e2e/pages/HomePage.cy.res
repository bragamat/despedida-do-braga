open Cypress

describe("Root path", () => {
  it("/ shows bachelors party details", () => {
    cyVisit("/", ())

    cyContainsStringP("DESPEDIDA DE SOLTEIRO DO BRAGA", ()) -> ignore
    cyContainsStringP("DIA: 11/03/23", ()) -> ignore
    cyContainsStringP("LOCAL: Rancho Urbano Rua Azevedo Soares, 604 - Vila Gomes Cardim", ()) -> ignore
    cyContainsStringP("HORARIO: 16:00", ()) -> ignore
    cyContainsStringP("TEM VALLET NO LOCAL", ()) -> ignore
  })
})
