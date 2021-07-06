class App < Sinatra::Base
  MOCK_AUTH_TOKEN = '1234567890TOK'

  configure :development do
    register Sinatra::Reloader
  end

  before do
    unless headers['Authorization'] == "Bearer #{MOCK_AUTH_TOKEN}"
      halt 401, {'Content-Type' => 'text/plain'}, 'Not authorized'
    end

    content_type :json
  end

  get '/autocomplete' do
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
    }.to_json
  end

  get '/businesses/search' do
    {
      total: 8000,
      businesses: [
        {
          rating: 4,
          price: "$",
          phone: "+14152520800",
          id: "E8RJkjfdcwgtyoPMjQ_Olg",
          alias: "four-barrel-coffee-san-francisco",
          is_closed: false,
          categories: [
            {
              alias: "coffee",
              title: "Coffee & Tea"
            }
          ],
          review_count: 1738,
          name: "Four Barrel Coffee",
          url: "https://www.yelp.com/biz/four-barrel-coffee-san-francisco",
          coordinates: {
            latitude: 37.7670169511878,
            longitude: -122.42184275
          },
          image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/MmgtASP3l_t4tPCL1iAsCg/o.jpg",
          location: {
            city: "San Francisco",
            country: "US",
            address2: "",
            address3: "",
            state: "CA",
            address1: "375 Valencia St",
            zip_code: "94103"
          },
          distance: 1604.23,
          transactions: ["pickup", "delivery"]
        }
      ],
      region: {
        center: {
          latitude: 37.767413217936834,
          longitude: -122.42820739746094
        }
      }
    }.to_json
  end

  get '/businesses/:id' do
    { 
      id: 'WavvLdfdP6g8aZTtbBQHTw', 
      alias: 'gary-danko-san-francisco', 
      name: 'Gary Danko', 
      image_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/CPc91bGzKBe95aM5edjhhQ/o.jpg', 
      is_claimed: true,
      is_closed: false,
      url: 'https://www.yelp.com/biz/gary-danko-san-francisco?adjust_creative=wpr6gw4FnptTrk1CeT8POg&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=wpr6gw4FnptTrk1CeT8POg', 
      phone: '+14157492060', 
      display_phone: '(415) 749-2060', 
      review_count: 5296,
      categories: [
        {
          alias: 'newamerican', 
          title: 'American (New)'
        },
        {
          alias: 'french', 
          title: 'French'
        },
        {
          alias: 'wine_bars', 
          title: 'Wine Bars'
        }
      ],
      rating: 4.5,
      location: {
        address1: '800 N Point St', 
        address2: '", 
        address3: '", 
        city: 'San Francisco', 
        zip_code: '94109', 
        country: 'US', 
        state: 'CA', 
        display_address: [
          '800 N Point St', 
          'San Francisco, CA 94109'
        ],
        cross_streets: '"
      },
      coordinates: {
        latitude: 37.80587,
        longitude: -122.42058
      },
      photos: [
        'https://s3-media2.fl.yelpcdn.com/bphoto/CPc91bGzKBe95aM5edjhhQ/o.jpg', 
        'https://s3-media4.fl.yelpcdn.com/bphoto/FmXn6cYO1Mm03UNO5cbOqw/o.jpg', 
        'https://s3-media4.fl.yelpcdn.com/bphoto/HZVDyYaghwPl2kVbvHuHjA/o.jpg'
      ],
      price: '$$$$', 
      hours: [
        {
          open: [
            {
              is_overnight: false,
              start: '1730', 
              end: '2200', 
              day: 0
            },
            {
              is_overnight: false,
              start: '1730', 
              end: '2200', 
              day: 1
            },
            {
              is_overnight: false,
              start: '1730', 
              end: '2200', 
              day: 2
            },
            {
              is_overnight: false,
              start: '1730', 
              end: '2200', 
              day: 3
            },
            {
              is_overnight: false,
              start: '1730', 
              end: '2200', 
              day: 4
            },
            {
              is_overnight: false,
              start: '1730', 
              end: '2200', 
              day: 5
            },
            {
              is_overnight: false,
              start: '1730', 
              end: '2200', 
              day: 6
            }
          ],
          hours_type: 'REGULAR', 
          is_open_now: false
        }
      ],
      transactions: [],
      special_hours: [
        {
          date: '2019-02-07', 
          is_closed: false,
          start: '1600', 
          end: '2000', 
          is_overnight: false
        }
      ]
     }.to_json
  end
end
