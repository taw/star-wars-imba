let encodeURIComponent = window:encodeURIComponent
import store from "./Store"
import Person from "./Person"

tag SearchResults
  def url
    "https://swapi.dev/api/people/?search={ encodeURIComponent(data) }"

  def pluralize(number, singular)
    let plural = singular + "s"
    if number === 1
      "{number} {singular}"
    else
      "{number} {plural}"

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
            pluralize(response:data:count, "result")
          for result in response:data:results
            <Person[result]>

export default SearchResults
