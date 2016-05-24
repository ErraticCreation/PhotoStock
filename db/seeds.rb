# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create(:name => "Sample Product", :description => "Bacon ipsum dolor amet pork loin jerky veniam laborum nostrud eu.", :image_url => "cat05.jpg", :color => "red", :price => 55.44)

Product.create(:name => "Second Sample Product", :description => "Porchetta sunt deserunt proident, corned beef andouille bacon t-bone ground round frankfurter.", :image_url => "cat01.jpg", :color => "orange", :price => 23.74)

Product.create(:name => "Third Sample Product", :description => "Salami tail filet mignon exercitation nulla, est jowl culpa.", :image_url => "cat02.jpg", :color => "blue", :price => 12.98)

Product.create(:name => "Fourth Sample Product", :description => "Shoulder ut elit dolore. Deserunt sunt adipisicing, pastrami ea eu voluptate tri-tip boudin capicola elit nisi doner ribeye.", :image_url => "cat03.jpg", :color => "black", :price => 22.87)

Product.create(:name => "Fifth Sample Product", :description => "Swine beef ex, alcatra do jerky ham hock pancetta. Frankfurter salami chuck picanha aute enim landjaeger pork tongue beef ribs consectetur.", :image_url => "cat04.jpg", :color => "gray", :price => 5.87)
