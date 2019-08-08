import store from "./Store"

tag Swapi
  def render
    let response = store.request(data)
    <self>
      if response:state == "wait"
        <span.waiting>
          "Waiting..."
      else if response:state == "error"
        <span.error>
          response:error
      else
        render_result(response:data)

export default Swapi
