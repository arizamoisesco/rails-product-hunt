class MainController < ApplicationController
    # layout 'custome' -> Se usa para el controllador en general

    def welcome
        @name = 'Mariano'
        # render layout: 'custome' -> Se usa para renderizar en un metodo especifico
    end
end