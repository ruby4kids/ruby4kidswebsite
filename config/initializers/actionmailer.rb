
ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "ruby4kids.com",  
  :user_name            => "someaddress@ruby4kids.com",  
  :password             => "somepass",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
} 

