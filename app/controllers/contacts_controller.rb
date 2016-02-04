class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end
    
    def create 
        @contact = Contact.new(contact_params)
        if @contact.save
            flash[:success] = "Сообщение успешно отправлено!"
            redirect_to new_contact_path
        else
            flash[:danger] = "Произошла ошибка, попробуйте еще раз!"
            redirect_to new_contact_path
        end
    end
    
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end
end
