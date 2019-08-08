let encodeURIComponent = window:encodeURIComponent
import store from "./Store"
import Person from "./Person"

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
          <div.summary>
            "{results:result:count} results"
          for result in results:result:results
            <Person[result]>

export default SearchResults
