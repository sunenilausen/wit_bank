class PreparationFactory
  def self.create(errand, args)
    Preparation.const_get(errand.capitalize).new(args)
  end
end