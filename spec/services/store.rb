require 'rails_helper'

describe "Store" do
  it "exists" do
    valid_attributes =
      {"storeId"=>2740,
       "storeType"=>"Mobile SAS",
       "tradeIn"=>nil,
       "name"=>"CHERRY CREEK MALL",
       "longName"=>"Cherry Creek Shopping Center",
       "address"=>"3000 East First Ave",
       "address2"=>"Ste 296",
       "city"=>"Denver",
       "region"=>"CO",
       "fullPostalCode"=>"80206-5637",
       "country"=>"US",
       "lat"=>39.72,
       "lng"=>-104.95,
       "hours"=>
        "Sun: 11-6; Mon: 10-9; Tue: 10-9; Wed: 10-9; Thurs: 10-9; Fri: 10-9; Sat: 10-9; Sun: 11-6; Mon: 10-9; Tue: 10-9; Wed: 10-9; Thurs: 10-9; Fri: 10-9; Sat: 10-9",
       "hoursAmPm"=>
        "Sun: 11am-6pm; Mon: 10am-9pm; Tue: 10am-9pm; Wed: 10am-9pm; Thurs: 10am-9pm; Fri: 10am-9pm; Sat: 10am-9pm; Sun: 11am-6pm; Mon: 10am-9pm; Tue: 10am-9pm; Wed: 10am-9pm; Thurs: 10am-9pm; Fri: 10am-9pm; Sat: 10am-9pm",
       "gmtOffset"=>-6,
       "services"=>[{"service"=>"Trade-In"}],
       "phone"=>"303-270-9189",
       "postalCode"=>"80206",
       "distance"=>3.45,
       "detailedHours"=>
        [{"day"=>"Sunday", "date"=>"2017-10-29", "open"=>"11:00", "close"=>"18:00"},
         {"day"=>"Monday", "date"=>"2017-10-30", "open"=>"10:00", "close"=>"21:00"},
         {"day"=>"Tuesday", "date"=>"2017-10-31", "open"=>"10:00", "close"=>"21:00"},
         {"day"=>"Wednesday", "date"=>"2017-11-01", "open"=>"10:00", "close"=>"21:00"},
         {"day"=>"Thursday", "date"=>"2017-11-02", "open"=>"10:00", "close"=>"21:00"},
         {"day"=>"Friday", "date"=>"2017-11-03", "open"=>"10:00", "close"=>"21:00"},
         {"day"=>"Saturday", "date"=>"2017-11-04", "open"=>"10:00", "close"=>"21:00"},
         {"day"=>"Sunday", "date"=>"2017-11-05", "open"=>"11:00", "close"=>"18:00"},
         {"day"=>"Monday", "date"=>"2017-11-06", "open"=>"10:00", "close"=>"21:00"},
         {"day"=>"Tuesday", "date"=>"2017-11-07", "open"=>"10:00", "close"=>"21:00"},
         {"day"=>"Wednesday", "date"=>"2017-11-08", "open"=>"10:00", "close"=>"21:00"},
         {"day"=>"Thursday", "date"=>"2017-11-09", "open"=>"10:00", "close"=>"21:00"},
         {"day"=>"Friday", "date"=>"2017-11-10", "open"=>"10:00", "close"=>"21:00"},
         {"day"=>"Saturday", "date"=>"2017-11-11", "open"=>"10:00", "close"=>"21:00"}]}

    store = Store.new(valid_attributes)
    expect(store.longname).to eq("Cherry Creek Shopping Center")
    expect(store.city).to eq("Denver")
    expect(store.distance).to eq(3.45)
    expect(store.phone).to eq("303-270-9189")
    expect(store.type).to eq("Mobile SAS")
  end
end
