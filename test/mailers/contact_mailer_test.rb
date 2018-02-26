require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "notify_comment" do
    mail = ContactMailer.notify_comment
    assert_equal "Notify comment", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
