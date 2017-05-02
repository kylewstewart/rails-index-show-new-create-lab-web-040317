class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to(coupon_path(@coupon))
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def edit
    @coupon = Coupon.find(params[:id])
  end

  def update
    @coupon = Coupon.find(params[:id])
    @coupon.update(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to(coupon_path(@coupon))
  end

end
