module GiftHelper
  def requested?(gift)
    return !!RequestGiftLog.find_by(gift_id: gift.id)
  end

  def gift_name(gift_id)
    Gift.find(gift_id).substance.name
  end
  def gift_price(gift_id)
    Gift.find(gift_id).substance.price
  end
  def gift_date(gift_id)
    Gift.find(gift_id).date
  end
end
