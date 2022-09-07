class CountryService

  def self.countries(codes)
    set_codes = country_codes(codes)
    conn = connection.get("alpha?codes=#{set_codes}")
    get_json(conn)
  end

  def self.connection
    Faraday.new("https://restcountries.com/v3.1/")
  end

  def self.country_codes(codes)
    codes.join(",")
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
