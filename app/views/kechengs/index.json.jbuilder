json.array!(@kechengs) do |kecheng|
  json.extract! kecheng, :id, :name, :teacher, :time
  json.url kecheng_url(kecheng, format: :json)
end
