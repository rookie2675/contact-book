class Menu

    VIEW = :view
    CREATE = :create
    EDIT = :edit
    DELETE = :delete

    def display
        puts "Choose one of the options below: "
        puts "1) View all contacts"
        puts "2) Create a new contact"
        puts "3) Edit a contact"
        puts "4) Delete a contact"
    end

    def get_option
        option = STDIN.getch.to_i

        case option
        when 1
            VIEW
        when 2
            CREATE
        when 3
            EDIT
        when 4
            DELETE
        else
            nil
        end
    end
end
