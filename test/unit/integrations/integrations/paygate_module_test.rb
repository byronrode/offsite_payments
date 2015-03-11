require 'test_helper'

class PaygateTest < Test::Unit::TestCase
  include OffsitePayments::Integrations

  def test_notification_method
    assert_instance_of Paygate::Notification, Paygate.notification('name=cody')
  end
end
