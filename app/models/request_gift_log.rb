class RequestGiftLog < ApplicationRecord
  def self.create_log(request_id, gift_id, status=0)
    RequestGiftLog.create(request_id: request_id, gift_id: gift_id, status: status)
  end

  def self.status_update(log)
    if log.status == 0
      log.update(status: 1)
    else
      log.update(status: 0)
    end
    
  end
end
