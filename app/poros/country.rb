class Country

  def initialize(data)
    @name = data[:name][:common]
    @capital = data[:capital]
    @subregion = data[:subregion]
    @region = data[:region]
    @flag = data[:flags][:png]
  end

  def self.quiz_questions_hash(countries)
    hash = {}
    countries.each_with_index do |country, index|
      hash[index + 1] = country
    end
    hash
  end
end
