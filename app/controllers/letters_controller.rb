class LettersController < ApplicationController

    def index
        letters = []
        
        2.times do |x|
            letters  << Letter.where('point >= 4').sample
            letters << Letter.all.sample 
        end

        3.times do |x|
            letters << Letter.where("point <= 3", vowel: false).sample 
        end

        2.times do |x|
            letters <<  Letter.where(vowel: true).sample
        end

        render json: letters
    end

end
