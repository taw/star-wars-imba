import SearchResults from "./SearchResults"

tag App
  def setup
    @search = ""

  def render
    <self>
      <header>
        "Hello, world!"
      <div>
        <label>
          "Character"
        <input[@search] placeholder="">
      <SearchResults[@search]>

Imba.mount <App>
