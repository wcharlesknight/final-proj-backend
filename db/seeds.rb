# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Letter.destroy_all

# vowels 
Letter.create(character: 'A', vowel: true, point: 1)
Letter.create(character: 'E', vowel: true, point: 1)
Letter.create(character: 'I', vowel: true, point: 1)
Letter.create(character: 'O', vowel: true, point: 1)
Letter.create(character: 'U', vowel: true, point: 1)
Letter.create(character: 'Y', vowel: true, point: 4)

# 1 point consonants 
Letter.create(character: 'N', vowel: false, point: 1)
Letter.create(character: 'R', vowel: false, point: 1)
Letter.create(character: 'T', vowel: false, point: 1)
Letter.create(character: 'L', vowel: false, point: 1)
Letter.create(character: 'S', vowel: false, point: 1)

# 2 point consonants
Letter.create(character: 'D', vowel: false, point: 2)
Letter.create(character: 'G', vowel: false, point: 2)

# 3 point consonants
Letter.create(character: 'B', vowel: false, point: 3)
Letter.create(character: 'C', vowel: false, point: 3)
Letter.create(character: 'M', vowel: false, point: 3)
Letter.create(character: 'P', vowel: false, point: 3)

#4 point consonants
Letter.create(character: 'F', vowel: false, point: 4)
Letter.create(character: 'H', vowel: false, point: 4)
Letter.create(character: 'V', vowel: false, point: 4)
Letter.create(character: 'W', vowel: false, point: 4)

# 5
Letter.create(character: 'K', vowel: false, point: 5)

# 8
Letter.create(character: 'J', vowel: false, point: 8)
Letter.create(character: 'X', vowel: false, point: 8)

#10 
Letter.create(character: 'Q', vowel: false, point: 10)
Letter.create(character: 'Z', vowel: false, point: 10)

