class Museum
  attr_reader :name,
              :exhibits,
              :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommendations = []
    @exhibits.each do |exhibit|
      patron.interests.each do |interest|
        if exhibit.name == interest
          recommendations << exhibit
        end
      end
    end
    recommendations
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
  exhibit_with_interests = {}
    @exhibits.each do |exhibit|
      exhibit_with_interests[exhibit] = [amy] if !exhibit_with_interests[exhibit] = []
      exhibit_with_interests[exhibit]
        patrons.each do |patron|
          patron.interests.each do |interest|
            if exhibit.name == interest
              exhibit_with_interests[exhibit] << patron
          end
        end
      end
    end
    exhibit_with_interests
  end

end
