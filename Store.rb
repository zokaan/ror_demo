class Store
  require_relative 'phone'
  attr_accessor :name, :street, :website, :phones

  def initialize(name, street, website, phones)
    @name = name
    @street = street
    @website = website
    @phones = phones

  end

  def to_s
    "#{name}, #{street}, #{website}, #{phones}"
  end

  def phonesInStock
    @@phones_in_stock = 0
    store.phones.each do |phone|
        if phone.in_stock == true
          @@phones_in_stock += 1
      end
    end
  end

  def isExpensive
    store.phones.each do |phone|
      phone.display_phone if phone.price >= 700
    end
  end

  def isCheap
    store.phones.each do |phone|
      phone.display_phone if phone.price < 700
    end
  end

  def isAndroid
    store.phones.each do |phone|
      phone.specs[:os] do |key|
         phone.display_phone if specs[:os] == 'android'
      end
    end
  end

  def withBluetooth
    store.phones.each do |phone|
      phone.specs[:bluetooth] do |key|
        phone.display_phone if specs[:bluetooth] == true
      end
    end
  end

  def inStock
    store.phones.each do |phone|
      phone.display_phone if phone.in_stock == true
  end

  def display_store
    puts 'Name: #@name'
    puts 'Street: #@street'
    puts 'Website: #@website'
    puts 'Total phones: #@@phones.length'
    puts 'Total phones in stock: #@@phones_in_stock.phonesInStock()'
    puts '-------------------------------------'
  end

  def display_phone
    puts 'Model : #@model'
    puts 'Price: #@price'
    puts 'Specs:',
         '      ' + 'memory: #@specs[:memory]',
         '      ' + 'ram: #@specs[:ram]',
         '      ' + 'camera: #@specs[:camera]',
         '      ' + 'bluetooth: #@specs[:bluetooth]',
         '      ' + 'os: #@specs[:os]'
    puts '-----------------------------------------'
  end

end




p1 = Phone.new("Samsung", 400, true, {memory: "8gb", camera: "13mpx", bluetooth: true, os: "android"})
p2 = Phone.new("Samsung", 700, true, {memory: "16gb", camera: "12mpx", bluetooth: true, os: "android"})
p3 = Phone.new("Samsung", 350, true, {memory: "8gb", camera: "8mpx", bluetooth: true, os: "android"})

store = Store.new('univerzalno','Ferhadija 3','www.univerzalno.ba', [p1,p2,p3])
