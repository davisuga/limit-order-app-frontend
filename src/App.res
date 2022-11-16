@module external styles: {"default": {"gradient-bg": string}} = "./App.module.css"

@react.component
let make = () => {
  <div className="h-full flex flex-1 bg-black">
    <div
      className={`${styles["default"]["gradient-bg"]} gap-8 flex-1 flex items-center flex-col justify-center `}>
      <div className="flex flex-col  gap-4">
        <LimitOrder />
        <Surface className="flex flex-col  max-h-64  p-5">
          <Text className="text-lg"> "Order #1" </Text>
          <div className="justify-between flex flex-1">
            <Text className=""> "Price" </Text>
            <Text className=""> "1" </Text>
          </div>
          <div className="justify-between flex flex-1">
            <Text className=""> "Amount" </Text>
            <Text className=""> "22.3" </Text>
          </div>
          <div className="justify-between flex flex-1">
            <Text className=""> "Total" </Text>
            <Text className=""> "22.3" </Text>
          </div>
        </Surface>
      </div>
    </div>
  </div>
}
