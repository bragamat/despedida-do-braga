let s = React.string

/* module Link = Next.Link */

@react.component
let make = () => {
  let ( isOpen, setIsOpen ) = React.useState(_ => false)

  let iconMenuClassNames = switch isOpen {
  | true => "hidden"
  | false => "block"
  }

  let dropdownMenuClassNames = switch isOpen {
  | true => "transition ease-out duration-200"
  | false => "transition ease-in duration-75"
  }

  <nav className="bg-white shadow">
    <div className="mx-auto max-w-7xl px-2 sm:px-6 lg:px-8">
      <div className="relative flex h-16 justify-between">
        <div className="absolute inset-y-0 left-0 flex items-center sm:hidden">
          ////<!-- Mobile menu button //-->//
          <button
            className="inline-flex items-center justify-center rounded-md
        p-2 text-gray-400 hover:bg-gray-100 hover:text-gray-500
        focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500"
            ariaControls="mobileMenu"
            ariaExpanded={false}>
            <span className="sr-only"> {"Open main menu"->s} </span>
            <svg
              className=`${iconMenuClassNames} h-6 w-6`
              fill="none"
              viewBox="0 0 24 24"
              strokeWidth="1.5"
              stroke="currentColor"
              ariaHidden={true}>
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5"
              />
            </svg>
            <svg
              className=`${isOpen ? "block" : "hidden"} h-6 w-6`
              fill="none"
              viewBox="0 0 24 24"
              strokeWidth="1.5"
              stroke="currentColor"
              ariaHidden={true}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
        </div>
        <div className="flex flex-1 items-center justify-center sm:items-stretch sm:justify-start">
          <div className="flex flex-shrink-0 items-center">
            <img
              className="block h-8 wAuto lg:hidden"
              src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600"
              alt="Your Company"
            />
            <img
              className="hidden h-8 wAuto lg:block"
              src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600"
              alt="Your Company"
            />
          </div>
          <div className="hidden sm:ml-6 sm:flex sm:space-x-8">
            <ActiveLink href="/">
              {"Home"->s}
            </ActiveLink>
            <ActiveLink href="/despedida">
              {"Despedida"->s}
            </ActiveLink>
            <ActiveLink href="/courses">
              {"Courses"->s}
            </ActiveLink>
            <ActiveLink href="/school">
              {"Schools"->s}
            </ActiveLink>
          </div>
        </div>
        <div
          className="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">
          <button
            className="rounded-full bg-white p-1 text-gray-400 hover:text-gray-500 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
            <span className="sr-only"> {"View notifications"->s} </span>
            <svg
              className="h-6 w-6"
              fill="none"
              viewBox="0 0 24 24"
              strokeWidth="1.5"
              stroke="currentColor"
              ariaHidden={true}>
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M14.857 17.082a23.848 23.848 0 005.454-1.31A8.967 8.967 0 0118 9.75v-.7V9A6 6 0 006 9v.75a8.967 8.967 0 01-2.312 6.022c1.733.64 3.56 1.085 5.455 1.31m5.714 0a24.255 24.255 0 01-5.714 0m5.714 0a3 3 0 11-5.714 0"
              />
            </svg>
          </button>
          ////<!-- Profile dropdown //-->//
          <div className="relative ml-3">
            <div onClick={_ => setIsOpen(old => !old)}>
              <button
                className="flex rounded-full bg-white text-sm
            focus:outline-none focus:ring-2 focus:ring-indigo-500
            focus:ring-offset-2"
                id="user-menuButton"
                ariaExpanded={false}
                 >
                <span className="sr-only"> {"Open user menu"->s} </span>
                <img
                  className="h-8 w-8 rounded-full"
                  src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
                  alt=""
                />
              </button>
            </div>
          <div
              className=`${isOpen ? "block" : "hidden"} ${dropdownMenuClassNames} absolute right-0 z-10 mt-2 w-48 origin-top-right rounded-md bg-white py-1 shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none`
              role="menu"
              ariaLabelledby="user-menuButton"
              tabIndex={-1}>
              ////<!-- Active: "bg-gray-100", Not Active: "" //-->//
              <a
                href="#"
                className="block px-4 py-2 text-sm text-gray-700"
                role="menuitem"
                tabIndex={1}
                id="user-menu-item-0">
                {"Your Profile"->s}
              </a>
              <a
                href="#"
                className="block px-4 py-2 text-sm text-gray-700"
                role="menuitem"
                tabIndex={1}
                id="user-menu-item-1">
                {"Settings"->s}
              </a>
              <a
                href="#"
                className="block px-4 py-2 text-sm text-gray-700"
                role="menuitem"
                tabIndex={1}
                id="user-menu-item-2">
                {"Sign out"->s}
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    ////<!-- Mobile menu, show/hide based on menu state. //-->//
    <div className="sm:hidden" id="mobile-menu">
      <div className="space-y-1 pt-2 pb-4">
        ////<!-- Current: "bg-indigo-50 border-indigo-500 text-indigo-700", Default: "border-transparent text-gray-500 hover:bg-gray-50 hover:border-gray-300 hover:text-gray-700" //-->//
        <a
          href="#"
          className="block border-l-4 border-indigo-500 bg-indigo-50 py-2 pl-3 pr-4 text-base font-medium text-indigo-700">
          {"Dashboard"->s}
        </a>
        <a
          href="#"
          className="block border-l-4 border-transparent py-2 pl-3 pr-4 text-base font-medium text-gray-500 hover:border-gray-300 hover:bg-gray-50 hover:text-gray-700">
          {"Team"->s}
        </a>
        <a
          href="#"
          className="block border-l-4 border-transparent py-2 pl-3 pr-4 text-base font-medium text-gray-500 hover:border-gray-300 hover:bg-gray-50 hover:text-gray-700">
          {"Projects"->s}
        </a>
        <a
          href="#"
          className="block border-l-4 border-transparent py-2 pl-3 pr-4 text-base font-medium text-gray-500 hover:border-gray-300 hover:bg-gray-50 hover:text-gray-700">
          {"Calendar"->s}
        </a>
      </div>
    </div>
  </nav>
}
