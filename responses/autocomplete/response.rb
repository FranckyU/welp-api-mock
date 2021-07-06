module Autocomplete
  class Response
    def initialize(params: {})
      @params = params
    end

    def load
      # Implement switches here
      default
    end

    private

    def default
      { 
        terms: [
          {
            text: 'Delivery'
          }
        ],
        businesses: [
          {
            name: 'Delfina', 
            id: 'YqvoyaNvtoC8N5dA8pD2JA'
          },
          {
            text: 'Delarosa', 
            id: 'vu6PlPyKptsT6oEq50qOzA'
          },
          {
            text: 'Pizzeria Delfina', 
            id: 'bai6umLcCNy9cXql0Js2RQ'
          }
        ],
        categories: [
          {
            alias: 'delis', 
            title: 'Delis'
          },
          {
            alias: 'fooddeliveryservices', 
            title: 'Food Delivery Services'
          },
          {
            alias: 'couriers', 
            title: 'Couriers & Delivery Services'
          }
        ]
      }
    end
  end
end

