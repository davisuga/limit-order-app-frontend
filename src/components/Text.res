@react.component
let make = (~children: string="", ~className: string="") => {
  <div className={"text-neutral-100 " ++ className}> {children->React.string} </div>
}
