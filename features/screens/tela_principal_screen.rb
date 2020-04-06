class Home < Appium::Driver

# ================================= SCREEN ======================================    
    def initialize
        @home_screen = 'action_bar_container'
        @menu_my_conversion = 'My conversions'
        @left_menu = 'drawerItem'
    end
    
# ================================ METHODS ======================================
    
    def tela_principal_aberta?
        id(@home_screen).displayed?
    end
    
    def tocar_icone_menu
        find_element(class: 'android.widget.ImageButton').click
    end

    def tocar_minhas_conversoes
        text(@menu_my_conversion).click if text('Unit Converter').displayed?
    end

end