class Phone < Product
  attr_accessor :specs

  def initialize(specs={})
    @memory, @camera, @bluetooth, @os = specs[:memory],specs[:camera], specs[:bluetooth], specs[:os] 
  end

  def to_s
    "#{specs}"
  end
end

#p1 = Phone.new("Samsung", 400, true, {memory: "8gb", camera: "13mpx", bluetooth: true, os: "android"})
#p2 = Phone.new("Samsung", 700, true, {memory: "16gb", camera: "12mpx", bluetooth: true, os: "android"})
#p2 = Phone.new("Samsung", 350, true, {memory: "8gb", camera: "8mpx", bluetooth: true, os: "android"})
