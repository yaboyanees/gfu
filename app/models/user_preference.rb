class UserPreference
  include Mongoid::Document

  field :skin_tone
  field :undertone
  field :hair_color
  field :look
  field :accessory

  embedded_in :user


  def to_s
    "Hair color: #{hair_color}, Skin Tone: #{skin_tone}, Undertone: #{undertone}, Look: #{look}, Accessory: #{accessory}"
  end

end

