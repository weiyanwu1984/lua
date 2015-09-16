waxClass{"BlueController", UIViewController}



function init(self)
    self.super:init()
    return self
end

    
function viewDidLoad(self)

    self:view():setBackgroundColor(UIColor:blueColor())

    local label = UILabel:initWithFrame(CGRect(0, 520, 320, 40))
    label:setColor(UIColor:blackColor())
    label:setText("Hello Wax!")
    label:setTextAlignment(UITextAlignmentCenter)
    local font = UIFont:fontWithName_size("Helvetica-Bold",50)
    label:setFont(font)
    self:view():addSubview(label)

    local input =UITextView:initWithFrame(CGRect(20, 20, 280, 114))
    input:setBackgroundColor(UIColor:redColor())
    self.input = input

    local output =UITextView:initWithFrame(CGRect(20, 184, 280, 225))
    output:setBackgroundColor(UIColor:redColor())
    self.output = output


    local evalButton = UIButton:buttonWithType(UIButtonTypeRoundedRect)

    evalButton:setTitle_forState('Evaluate', UIControlStateNormal)

    evalButton:setFrame(CGRect(200,142, 100, 32))

    evalButton:addTarget_action_forControlEvents(self, 'eval:',UIControlEventTouchUpInside)

    self.evalButton = evalButton

    local eval2Button = UIButton:buttonWithType(UIButtonTypeRoundedRect)

    eval2Button:setTitle_forState('eval2', UIControlStateNormal)

    eval2Button:setFrame(CGRect(10,142, 100, 32))

    eval2Button:addTarget_action_forControlEvents(self, 'eval2:',UIControlEventTouchUpInside)

    self.eval2Button = eval2Button


    self:view():addSubview(input)

    self:view():addSubview(output)

    self:view():addSubview(evalButton)
    self:view():addSubview(eval2Button)

end


function eval(self, sender)
    self.input:resignFirstResponder()

    local str = self.input:text()
    self.output:setText(str)

end

function eval2(self, sender)
    local parentView = self:view():superview()
    UIView:beginAnimations_context(nil, nil)
    UIView:setAnimationTransition_forView_cache(UIViewAnimationTransitionFlipFromLeft, parentView, true)
    self:view():removeFromSuperview()
    parentView:addSubview(orangeController:view())
    UIView:commitAnimations()

end



