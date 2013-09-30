json.array!(@market_comments) do |market_comment|
  json.extract! market_comment, :comment, :status
  json.url market_comment_url(market_comment, format: :json)
end
