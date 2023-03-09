@react.component
let make = (~children) => {
    <main className="w-full h-full flex flex-col items-center justify-center
  bg-black text-white relative">
    <section className="z-10 space-y-4 p-4 border-2 border-rose-500">
      children 
    </section>
  </main>
}
