let axios = require("axios")
console.log axios

class Store
  def initialize
    @cache = {}

  def request(url)
    if @cache[url]
      @cache[url]
    else
      let promise = axios(url)
      promise
        .then do |response|
          console.log response
          @cache[url] = {state: 'done', result: response:data}
          Imba.commit
        .catch do |error|
          @cache[url] = {state: 'error', result: error}
          Imba.commit
      @cache[url] = {state: 'wait', promise: promise}

let store = Store.new

export default store
