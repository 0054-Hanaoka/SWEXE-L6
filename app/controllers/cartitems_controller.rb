class CartitemsController < ApplicationController
  def new
    @cart_item = CartItem.new
  end

  def create
    cart = current_cart
    product = Product.find(params[:product_id])
    @cart_item = cart.cart_items.find_by(product_id: product.id)

    if @cart_item
      @cart_item.qty += 1
    else
      @cart_item = cart.cart_items.build(product: product, qty: 1)
    end

    @cart_item.save
    redirect_to cart_path(cart), notice: "カートに商品を追加しました"
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_path, notice: "カートから商品を削除しました"
  end

end

