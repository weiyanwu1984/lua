require "BlueController"
require "OrangeController"

blueController = BlueController:init()
orangeController = OrangeController:init()

window = UIApplication:sharedApplication():keyWindow()
window:setRootViewController(blueController)

