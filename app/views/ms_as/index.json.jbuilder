json.array!(@msas) do |msa|
  json.extract! msa, :id, :name, :logo, :description
  json.url msa_url(msa, format: :json)
end
