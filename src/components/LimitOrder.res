open Utils
open Belt

@react.component
let make = (~onSubmit=?, ~loggedIn=false) => {
  let (price, setPrice) = React.useState(() => "")
  let (amount, setAmount) = React.useState(() => "")

  let updateField = (fn, event) => {
    let value = ReactEvent.Form.currentTarget(event)["value"]
    fn(_ => formatStringAsFloat(value))
  }

  let available = 0.1494

  let total = switch (Float.fromString(price), Float.fromString(amount)) {
  | (Some(x), Some(y)) => x *. y
  | _ => 0.
  }

  <Surface className="flex p-5 flex-col max-w-md gap-4">
    <Text className="font-bold text-2xl"> "Limit order" </Text>
    <div className="flex gap-2">
      <Text className="text-gray-400"> "Available:" </Text>
      <Text className=""> {available->Float.toString ++ " ETH"} </Text>
    </div>
    <Input label="Price" value={price} onChange={updateField(setPrice)} />
    <Input label="Amount" value={amount} onChange={updateField(setAmount)} />
    <div className="flex gap-2">
      <Text className="text-gray-400"> "Total:" </Text>
      <Text className=""> {total->Float.toString ++ " ETH"} </Text>
    </div>
    <button
      onClick=?onSubmit
      className="p-1.5 active:scale-95 bg-sky-700 hover:bg-sky-600 transition-all">
      <Text className=" font-medium text-lg"> {loggedIn ? "Submit" : "Connect your wallet"} </Text>
    </button>
  </Surface>
}
