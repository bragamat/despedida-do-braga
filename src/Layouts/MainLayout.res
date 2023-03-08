/* module Link = Next.Link */

@react.component
let make = (~children) => {
   Js.log("test: manlayout") 
  <main className="w-full h-full">
    <Navbar />
    children 
  </main>
}
