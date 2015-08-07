class Remote
  include HTTParty
  base_uri Globber.configuration.base_uri

  headers({
    "Content-Type" => 'application/json; charset=utf-8;',
    "Accept" => "application/json"
  })

  def self.get(path)
    super "/#{path}"
  end

end
