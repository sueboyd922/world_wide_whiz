class CountryFacade
  include CountryModule

  def self.fetch_countries(level, region)
    if level == "full"
      CountryService.full_region(region)
    else
      CountryService.countries(select_countries(level, region))
    end
  end

  def self.select_countries(level, region)
    if level == "easy" || level == "hard"
      unique_codes(CountryModule.country_hash[region.to_sym][level.to_sym])
    elsif level == "random"
      unique_codes(CountryModule.country_hash[region.to_sym].values.flatten)
    end
  end

  def self.unique_codes(countries)
    codes = []
    until codes.count == 15 do
      code = countries.sample
      codes << code if !codes.include?(code)
    end
    codes
  end

end
