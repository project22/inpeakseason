# Rails.application.config.middleware.use OmniAuth::Builder do  
#   provider :facebook, Config['194542940727598'], Config['4b4ffe23ed93c0a06e4f3770d3fe8e57'], :setup => true
# end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '194542940727598', '4b4ffe23ed93c0a06e4f3770d3fe8e57', :setup => true 
end