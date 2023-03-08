/* module Link = Next.Link */

@react.component
let make = (~children) => {
  <main className="w-full h-full">
    <Navbar />
    children 
  </main>
}
