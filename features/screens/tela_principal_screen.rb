class Home < Appium::Driver

# ================================= SCREEN ======================================    
    def initialize
        @home_screen = "target_value_placeholder"
        @menu_icon = "Open navigation drawer"
        @menu_my_conversion = "My conversions"
        @left_menu = "drawerItem"
    end
    
# ================================ METHODS ======================================
    
    def tela_principal_aberta?
        id(@home_screen)
    end
    
    def tocar_icone_menu
        id(@menu_icon).click
    end

    def tocar_minhas_conversoes
        id(@left_menu)
        text_exact(@menu_my_conversion).click
    end

end