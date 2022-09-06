class Country
  attr_reader :name, :capital, :subregion, :region, :flag, :number

  def initialize(data, num)
    @name = data[:name][:common]
    @capital = data[:capital]
    @subregion = data[:subregion]
    @region = data[:region]
    @flag = data[:flags][:png]
    @number = num
  end

  def self.quiz_questions_hash(countries)
    hash = {}
    countries.each_with_index do |country|
      hash[country.number] = country
    end
    hash
  end

end
