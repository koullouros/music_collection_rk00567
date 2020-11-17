class ApplicationMailer < ActionMailer::Base
  default to: 'info@musiccollection.com', from: 'from@musiccollection.com'
  layout 'mailer'
end
