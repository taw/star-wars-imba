let encodeURIComponent = window:encodeURIComponent
import store from "./Store"

tag SearchResults
  def url
    "https://swapi.co/api/people/?search={ encodeURIComponent(data) }"

  def render
    let results = store.request(url)
    <self>
      if results:state == "wait"
        <div.waiting>
          "Waiting..."
      else if results:state == "error"
        <div.error>
          results:error
      else
        <div.results>
          "{results:result:count} results"

export default SearchResults
