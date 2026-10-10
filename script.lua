-- سكربت سرقة البيض الاحترافي (Steal An Egg)
-- تطوير: المطور مـــيـــرو اوتـــــــــشيها

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local Title = Instance.new("TextLabel")
local DevLabel = Instance.new("TextLabel")

-- خصائص الشاشة الرئيسية
ScreenGui.Name = "StealAnEggGUI"
ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

-- الإطار الرئيسي للسكربت
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
MainFrame.Position = UDim2.new(0.5, -160, 0.5, -220)
MainFrame.Size = UDim2.new(0, 320, 0, 440)
MainFrame.Active = true
MainFrame.Draggable = true -- تحريك الواجهة بكل سهولة

-- تدوير الحواف والإطار الأحمر الفخم
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = MainFrame

UIStroke.Color = Color3.fromRGB(255, 0, 0)
UIStroke.Thickness = 2
UIStroke.Parent = MainFrame

-- عنوان السكربت
Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundTransparency = 1.00
Title.Position = UDim2.new(0, 0, 0, 10)
Title.Size = UDim2.new(0, 320, 0, 40)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "🥚 سكربت سرقة البيض الاحترافي 🥚"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20

-- خانة التعريف بالمطور (ميرو أوتشيها)
DevLabel.Name = "DevLabel"
DevLabel.Parent = MainFrame
DevLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
DevLabel.Position = UDim2.new(0, 15, 0, 55)
DevLabel.Size = UDim2.new(0, 290, 0, 40)
DevLabel.Font = Enum.Font.SourceSansBold
DevLabel.Text = "المطور: مـــيـــرو اوتـــــــــشيها"
DevLabel.TextColor3 = Color3.fromRGB(0, 170, 255)
DevLabel.TextSize = 18

local DevCorner = Instance.new("UICorner")
DevCorner.CornerRadius = UDim.new(0, 8)
DevCorner.Parent = DevLabel

-- دالة لإنشاء الأزرار بشكل مرتب وسهل الاستخدام
local function createButton(name, text, yPos)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Parent = MainFrame
    btn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    btn.Position = UDim2.new(0, 15, 0, yPos)
    btn.Size = UDim2.new(0, 290, 0, 45)
    btn.Font = Enum.Font.SourceSansBold
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 16
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = btn
    
    return btn
end

-- إضافة الأزرار المخصصة حسب طلبك
local Btn1 = createButton("Btn1", "🥷 تفعيل الوقوف الثابت (إخفاء الشيل)", 110)
local Btn2 = createButton("Btn2", "💤 إبقاء الحيوان نائماً عند السرقة", 165)
local Btn3 = createButton("Btn3", "💎 جمع تلقائي: ديفاين (Divine)", 220)
local Btn4 = createButton("Btn4", "⚡ جمع تلقائي: أدرينالين (Adrenaline)", 275)
local Btn5 = createButton("Btn5", "🚀 زيادة السرعة الخارقة", 330)

-- تأثير بسيط عند الضغط على الأزرار للتأكيد
for _, button in ipairs(MainFrame:GetChildren()) do
    if button:IsA("TextButton") then
        button.MouseButton1Click:Connect(function()
            button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
            task.wait(0.2)
            button.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
        end)
    end
end

print("تم تحميل سكربت المطور ميرو أوتشيها بنجاح!")
