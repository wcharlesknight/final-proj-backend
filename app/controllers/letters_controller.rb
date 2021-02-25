class LettersController < ApplicationController

    def index
        letters = []
        
        2.times do |x|
            letters << Letter.where(character: 'E').sample
            letters << Letter.all.sample 
        end

        # 1.times do |x|
        #     letters << Letter.where('point < 8').sample 
        # end
        
        1.times do |x|
            letters  << Letter.where(character: 'Q').sample
            letters  << Letter.where(character: 'U').sample
            letters  << Letter.where(character: 'N').sample
            # letters  << Letter.where('point >= 4').sample
        end

        3.times do |x|
            letters << Letter.where("point <= 3", vowel: false).sample 
        end

        2.times do |x|
            letters <<  Letter.where(vowel: true).sample
        end

        render json: letters
    end

    def score
        scores  = Letter.where(character: params[:character])
        render json: scores
    end

end
