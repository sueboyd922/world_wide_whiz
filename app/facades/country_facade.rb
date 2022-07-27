class CountryFacade
  include CountryModule

  def self.fetch_countries(level, region)
    require "pry"; binding.pry
  end
end
