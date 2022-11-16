@react.component
let make = (~children=React.null, ~className="") => {
  <div className={`border border-solid border-neutral-800/60 bg-black/30 ${className}`}>
    children
  </div>
}
