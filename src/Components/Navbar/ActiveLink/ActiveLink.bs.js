// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import Link from "next/link";
import * as Router from "next/router";

function ActiveLink(props) {
  var classNames = props.classNames;
  var href = props.href;
  var router = Router.useRouter();
  var isActive = router.asPath === href;
  var activeLinkStyles = isActive ? "border-indigo-500 text-gray-900" : "border-transparent px-1 pt-1 text-sm font-medium text-gray-500 hover:border-gray-300 hover:text-gray-700";
  var classes = classNames !== undefined ? classNames : "";
  return React.createElement(Link, {
              href: href,
              className: "inline-flex items-center border-b-2 " + activeLinkStyles + "\n    " + classes + "",
              children: props.children
            });
}

var Link$1;

var Router$1;

var make = ActiveLink;

export {
  Link$1 as Link,
  Router$1 as Router,
  make ,
}
/* react Not a pure module */
