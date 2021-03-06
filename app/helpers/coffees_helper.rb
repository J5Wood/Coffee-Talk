module CoffeesHelper

    def coffee_origin(coffee)
        if !coffee.origin.blank?
            render partial: "coffees/origin", locals: {coffee: coffee}
        end
    end

    def coffee_notes(coffee)
        if !coffee.notes.blank?
            render partial: "coffees/notes", locals: {coffee: coffee}
        end
    end
end
