module Link = Next.Link
module Router = Next.Router

@react.component
let make = (~href: string, ~children, ~classNames: option<string>=?) => {
  let router = Router.useRouter()

  let isActive = router.asPath === href

  let activeLinkStyles = switch isActive {
  | true => "border-indigo-500 text-gray-900"
  | false => "border-transparent px-1 pt-1 text-sm font-medium text-gray-500 hover:border-gray-300 hover:text-gray-700"
  }

  let classes = switch classNames {
  | Some(vals) => vals
  | None => ""
  }
  <Link
    href
    className={`inline-flex items-center border-b-2 ${activeLinkStyles}
    ${classes}`}>
    children
  </Link>
}
