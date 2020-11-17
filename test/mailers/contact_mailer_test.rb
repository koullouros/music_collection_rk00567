require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "should return contact email" do
    mail = ContactMailer.contact_email("rafael@musiccollection.com", "Rafael Koullouros", @message="Test message")
    assert_equal ['info@musiccollection.com'], mail.to
    assert_equal ['from@musiccollection.com'], mail.from
  end
end
