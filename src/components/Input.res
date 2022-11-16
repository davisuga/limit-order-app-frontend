@react.component
let make = (~className="", ~value, ~onChange, ~placeholder=?, ~label="", ~inputMode=?) => {
  <div className="flex flex-col gap-1">
    {Js.String.length(label) > 0
      ? <label className="block text-sm font-medium text-gray-600"> {label->React.string} </label>
      : React.null}
    <input
      className={" border border-solid border-neutral-800/50 bg-white/5 transition-all focus:border-sky-700 outline-none placeholder-neutral-400 shadow-md text-white p-3 px-4 " ++
      className}
      value
      ?inputMode
      ?placeholder
      onChange
    />
  </div>
}
