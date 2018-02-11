class PhrasesController < ApplicationController

    before_action :check_if_logged_in, only: [:new, :create, :edit, :update, :destroy]

    #create
    def new

      @phrase = Phrase.new

    end

    def create

      phrase = Phrase.create phrase_params

      if phrase.save
        redirect_to phrase
      else
        # phrase could not be saved
        flash[:errors] = phrase.errors.full_messages

        redirect_to new_phrase_path

      end

    end


    # Read
    def home
       @phrases = Phrase.all

    end

    # listing
    def index
      @phrases = Phrase.all

    end

    def show

      @phrase = Phrase.find params[:id]

    end

    def your_phrases

      @phrases = current_user.phrases

    end

    # Edit/Update
    def edit
      @phrase = Phrase.find params[:id]

    end

    def update

      phrase = Phrase.find params[:id]

      phrase.update phrase_params

      redirect_to phrase_path

    end

    def destroy
      Phrase.destroy params[:id]

      redirect_to phrases_path
    end

    private

    def phrase_params
      params.require(:phrase).permit(:body, :value)
    end

  

end
