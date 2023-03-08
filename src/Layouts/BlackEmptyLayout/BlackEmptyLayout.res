/* module Link = Next.Link */

@react.component
let make = (~children) => {
   Js.log("test: layout") 
  <main className="w-full h-full">
    children 
  </main>
}
