namespace :ingredients do
  desc "Add the ingredients to the DB"
  task :add => :environment do
    ingredients = [
      ["high fructose corn syrup", "May predispose the body to turn fructose into fat. Increases risk for Type-2 diabetes, coronary heart disease, stroke and cancer. Isn't easily metabolized by the liver.", true],
      ["aspartane", "Can negatively impact metabolism. Some have been linked to cancer, dizziness hallucinations and headaches.", true],
      ["msg", "May stimulate appetite and cause headaches, nausea, weakness, wheezing, edema, change in heart rate, burning sensations and difficulty in breathing.", true]
    ]

    ingredients.each do |ingredient|
      Ingredient.create :name => ingredient[0], :description => ingredient[1], :rating => ingredient[2]
    end
  end
end



