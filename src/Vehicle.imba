import store from "./Store"

tag Vehicle
  def render
    let results = store.request(data)
    <self>
      if results:state == "wait"
        <span.waiting>
          "Waiting..."
      else if results:state == "error"
        <span.error>
          results:error
      else
        <span>
          results:result:name

export default Vehicle
