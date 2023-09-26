class DiceController < ApplicationController
  def roll
    @num_dice = params.fetch(:number_of_dice).to_i
    @sides = params.fetch(:how_many_sides).to_i
    @dicerolls = []
    @num_dice.times do
      @die = rand(1..@sides)
      @dicerolls.push(@die)
    end


    render({:template => "dicerolls/roll_flexible"})

  end


end
