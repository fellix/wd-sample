[
  {:name => "Macbook Pro",:amount => 2999},
  {:name => "Macbook Air", :amount => 3299}, 
  {:name => 'Ultrabook HP',  :amount => 1799}
].each do |attributes|
  Product.create attributes
end