require "test_helper"

class ProductTest < ActiveSupport::TestCase
  fixtures :products

  test "product price must be positive" do
    product = Product.new(title:"My Book Title", description:"My Book Description",image_url: "zzz.jpg")
    # product = Product.new
    # product.price = -1
    # assert product.invalid?
    # assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]
    # product.price = 1
    # assert product.valid?
  end

  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end
end
