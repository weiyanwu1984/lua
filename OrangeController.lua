waxClass{"OrangeController", UIViewController}


function init(self)
  self.super:init()
  return self
end

function viewDidLoad(self)
    self:view():setBackgroundColor(UIColor:greenColor())
    local evalButton = UIButton:buttonWithType(UIButtonTypeRoundedRect)

    evalButton:setTitle_forState('Evaluate', UIControlStateNormal)

    evalButton:setFrame(CGRect(200,142, 100, 32))

    evalButton:addTarget_action_forControlEvents(self, 'eval:',UIControlEventTouchUpInside)

    self.evalButton = evalButton
    self:view():addSubview(evalButton)
end


function eval(self, sender)
  local parentView = self:view():superview()
  UIView:beginAnimations_context(nil, nil)
  UIView:setAnimationTransition_forView_cache(UIViewAnimationTransitionFlipFromRight, parentView, true)
  self:view():removeFromSuperview()
  parentView:addSubview(blueController:view())
  UIView:commitAnimations()
end