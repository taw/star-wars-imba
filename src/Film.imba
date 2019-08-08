import store from "./Store"

tag Film
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
          results:result:title

export default Film
