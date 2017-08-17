require 'appium_lib'
require 'pry'
require 'rspec'

def caps
    {
        caps: {
            deviceName: "Nexus",
            platformName: "Android",
            app: (File.join(File.dirname(__FILE__), "PreciseUnitConversion.apk")),
            appPackage: "com.ba.universalconverter", #uiautomatorviewer& || Appium logs
            appActivity: "MainConverterActivity", #Appium logs
            newCommandTimeout: "3600",
            #noReset: true,
            #fullReset: true,
        appium_lib: { wait: 20,
                      debug: false
                    }
        }
    }
end

Appium::Driver.new(caps)
Appium.promote_appium_methods Object