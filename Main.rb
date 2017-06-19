#require_relative 'Phone'
require_relative 'Store'

#p1 = Phone.new("Samsung", 400, true, {memory: "8gb", camera: "13mpx", bluetooth: true, os: "android"})
#p2 = Phone.new("Samsung", 700, true, {memory: "16gb", camera: "12mpx", bluetooth: true, os: "android"})
#p3 = Phone.new("Samsung", 350, true, {memory: "8gb", camera: "8mpx", bluetooth: true, os: "android"})

#store = Store.new('univerzalno','Ferhadija 3','www.univerzalno.ba', [p1,p2,p3])

store.display_store()
store.isExpensive()
store.isCheap()
#store.withBluetooth()
#store.isAndroid()
#store.inStock()
