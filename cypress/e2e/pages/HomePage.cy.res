open Cypress

describe("Root path", () => {
  it("/ shows bachelors party details", () => {
    cyVisit("/despedida", ())
    cyContainsStringP("CHEGOU MINHA DESPEDIDA DE SOLTEIRO", ())
    cyContainsStringP("DIA: 11/03/23", ())
    cyContainsStringP("LOCAL: ", ())
    cyContainsStringP("HORARIO: 15:00", ())
  })
})
