require 'test_helper'

class PaygateNotificationTest < Test::Unit::TestCase
  include OffsitePayments::Integrations

  def setup
    @paygate = Paygate::Notification.new(http_raw_data)
  end

  def test_accessors
    assert @paygate.complete?
    assert_equal "", @paygate.status
    assert_equal "", @paygate.transaction_id
    assert_equal "", @paygate.item_id
    assert_equal "", @paygate.gross
    assert_equal "", @paygate.currency
    assert_equal "", @paygate.received_at
    assert @paygate.test?
  end

  def test_compositions
    assert_equal Money.new(3166, 'USD'), @paygate.amount
  end

  # Replace with real successful acknowledgement code
  def test_acknowledgement

  end

  def test_send_acknowledgement
  end

  def test_respond_to_acknowledge
    assert @paygate.respond_to?(:acknowledge)
  end

  private
  def http_raw_data
    ""
  end
end
