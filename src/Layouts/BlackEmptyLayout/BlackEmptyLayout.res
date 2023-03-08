/* module Link = Next.Link */

type ballon = { id: string }

@react.component
let make = (~children) => {
    <main className="w-full h-full flex flex-col items-center justify-center
  bg-black text-white relative">
    <section className="z-10">
      children 
    </section>
  </main>
}
