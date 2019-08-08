let axios = require("axios")

class Store
  def initialize
    @cache = {}

  def request(url)
    if @cache[url]
      @cache[url]
    else
      console.log("REQ", url)
      let promise = axios(url)
      promise
        .then do |response|
          console.log response
          @cache[url] = {state: 'done', data: response:data}
          Imba.commit
        .catch do |error|
          @cache[url] = {state: 'error', result: error}
          Imba.commit
      @cache[url] = {state: 'wait', promise: promise}

let store = Store.new

export default store
