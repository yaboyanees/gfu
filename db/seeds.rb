# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'pp'
require 'mongo'

hair_colors = ['blonde', 'black', 'light_brown', 'brown', 'white', 'red']
skin_tones = ['light', 'fair', 'medium', 'olive', 'brown', 'ebony']
undertones = ['cool', 'warm']
looks = ['natural', 'sassy', 'classy', 'lom', 'wildcard']

hair_colors.each do |hair_color|
  skin_tones.each do |skin_tone|
    undertones.each do |undertone|
      looks.each do |look|
        filename = "#{[skin_tone, undertone, hair_color, look].join('_')}.jpeg'"
        p = Profile.new(hair_color: hair_color,
                        skin_tone: skin_tone,
                        undertone: undertone,
                        look: look,
                        image: filename)
        p.save
      end
    end
  end
end
