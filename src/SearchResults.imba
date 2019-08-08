let encodeURIComponent = window:encodeURIComponent
import store from "./Store"
import Person from "./Person"

tag SearchResults
  def url
    "https://swapi.co/api/people/?search={ encodeURIComponent(data) }"

  def render
    let response = store.request(url)
    <self>
      if response:state == "wait"
        <div.waiting>
          "Waiting..."
      else if response:state == "error"
        <div.error>
          response:error
      else
        <div.results>
          <div.summary>
            "{response:data:count} results"
          for result in response:data:results
            <Person[result]>

export default SearchResults
