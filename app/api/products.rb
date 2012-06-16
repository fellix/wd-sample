describe_service '/products' do |service|
  service.formats :json
  service.http_verb :get
  service.disable_auth

  service.response do |response|
    response.array :products do |node|
      node.string :name
      node.string :amount
    end
  end

  service.documentation do |doc|
    doc.overall <<-DOC
      Consulta a lista de produtos cadastrados
    DOC

    doc.example <<-DOC
      ## USAGE
      curl -i -H "Accept: application/json" http://localhost:3000/products
    DOC
  end
end