json.array!(@ideas) do |idea|
  json.extract! idea, :id, :question, :explanation
  json.url idea_url(idea, format: :json)
end
