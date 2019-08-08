import Swapi from "./Swapi"

tag Film < Swapi
  def render_result(result)
    <span>
      result:title

export default Film
