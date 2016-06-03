[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 

$TitleFont = New-Object System.Drawing.Font("Arial",14,[System.Drawing.FontStyle]::Regular)

$TextBoxFont = New-Object System.Drawing.Font("Arial",8.5,[System.Drawing.FontStyle]::Regular)

$GroupBoxFont = New-Object System.Drawing.Font("Arial",8,[System.Drawing.FontStyle]::Bold)
# Font styles are: Regular, Bold, Italic, Underline, Strikeout

[int32] $rowOne = 10
[int32] $rowTwo = 60
[int32] $rowThree = 110
[int32] $rowFour = 160
[int32] $rowFive = 210
[int32] $rowSix = 260
[int32] $rowSeven = 310
[int32] $rowEight = 360
[int32] $rowNine = 410


[int32] $columnOne = 10
[int32] $columnTwo = 120
[int32] $columnThree = 215
[int32] $columnFour = 345

[int32] $x_offset = 10
[int32] $y_offset = 15


$objForm = New-Object System.Windows.Forms.Form 
$objForm.Text = "Computer Spec Sheet"
$objForm.Size = New-Object System.Drawing.Size(1000,600) 
$objForm.StartPosition = "CenterScreen"

$objForm.KeyPreview = $True

$objForm.Add_KeyDown({
    if ($_.KeyCode -eq "Enter") {
        $objForm.Close()
    }
})

$objForm.Add_KeyDown({
    if ($_.KeyCode -eq "Escape") {
        $objForm.Close()
    }
})


$OKButton = New-Object System.Windows.Forms.Button
$OKButton.Location = New-Object System.Drawing.Size(820,10)
$OKButton.Size = New-Object System.Drawing.Size(75,23)
$OKButton.Text = "OK"
$OKButton.Add_Click({
    $objForm.Close()
})
$objForm.Controls.Add($OKButton)

$CancelButton = New-Object System.Windows.Forms.Button
$CancelButton.Location = New-Object System.Drawing.Size(900,10)
$CancelButton.Size = New-Object System.Drawing.Size(75,23)
$CancelButton.Text = "Cancel"
$CancelButton.Add_Click({
    $objForm.Close()
})
$objForm.Controls.Add($CancelButton)


#Title
$objLabelTitle = New-Object System.Windows.Forms.Label
$objLabelTitle.Location = New-Object System.Drawing.Size(350,15) 
$objLabelTitle.Size = New-Object System.Drawing.Size(300,25) 
$objLabelTitle.Text = "Computer Spec Sheet"
$objLabelTitle.Font = $TitleFont
$FontSize = $objLabelTitle.Font.Size
$FontSize
$objForm.Controls.Add($objLabelTitle) 


# Tester
$objTextBoxTester = New-Object System.Windows.Forms.TextBox 
$objTextBoxTester.Location = New-Object System.Drawing.Size(150,($rowOne + $y_offset)) 
$objTextBoxTester.Size = New-Object System.Drawing.Size(80,20) 
$objTextBoxTester.Font = $TextBoxFont
$objTextBoxTester.Text = "jnitz"
#$objTextBoxTester.BorderStyle = "Fixed3D"
$objForm.Controls.Add($objTextBoxTester) 

$objGroupBoxTester = New-Object System.Windows.Forms.GroupBox
$objGroupBoxTester.Location = New-Object System.Drawing.Size(140,$rowOne)
$objGroupBoxTester.Size = New-Object System.Drawing.Size(100,45)
$objGroupBoxTester.Font = $GroupBoxFont
$objGroupBoxTester.Text = "Tester"
$objForm.Controls.Add($objGroupBoxTester)


# ISPF/PO
#$objLabelCondition.Size = New-Object System.Drawing.Size(50,15) 

$objTextBoxISPF_PO = New-Object System.Windows.Forms.TextBox 
$objTextBoxISPF_PO.Location = New-Object System.Drawing.Size(($columnOne + $x_offset),($rowTwo + $y_offset)) 
$objTextBoxISPF_PO.Size = New-Object System.Drawing.Size(80,20) 
$objTextBoxISPF_PO.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxISPF_PO) 

$objGroupBoxISPF_PO = New-Object System.Windows.Forms.GroupBox
$objGroupBoxISPF_PO.Location = New-Object System.Drawing.Size($columnOne,$rowTwo)
$objGroupBoxISPF_PO.Size = New-Object System.Drawing.Size(100,45)
$objGroupBoxISPF_PO.Font = $GroupBoxFont
$objGroupBoxISPF_PO.Text = "ISPF / PO"
$objForm.Controls.Add($objGroupBoxISPF_PO)

#Date
$CurrentDate = "12/12/1234"

$objLabelDate = New-Object System.Windows.Forms.Label
$objLabelDate.Location = New-Object System.Drawing.Size(($columnTwo + $x_offset),($rowTwo + $y_offset)) 
$objLabelDate.Size = New-Object System.Drawing.Size(70,15) 
$objLabelDate.Font = $TextBoxFont
$objLabelDate.Text = $CurrentDate
$objForm.Controls.Add($objLabelDate) 

$objGroupBoxDate = New-Object System.Windows.Forms.GroupBox
$objGroupBoxDate.Location = New-Object System.Drawing.Size($columnTwo,$rowTwo)
$objGroupBoxDate.Size = New-Object System.Drawing.Size(85,45)
$objGroupBoxDate.Font = $GroupBoxFont
$objGroupBoxDate.Text = "Date"
$objForm.Controls.Add($objGroupBoxDate)


#Condition
$objComboBoxCondition = New-Object System.Windows.Forms.ComboBox
$objComboBoxCondition.Location = New-Object System.Drawing.Size(($columnThree + $x_offset),($rowTwo + $y_offset))
$objComboBoxCondition.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxCondition.Font = $TextBoxFont

[void] $objComboBoxCondition.Items.Add("Boots to Bios")
[void] $objComboBoxCondition.Items.Add("Power Only")
[void] $objComboBoxCondition.Items.Add("Something Else")

$objForm.Controls.Add($objComboBoxCondition) 

$objGroupBoxCondition = New-Object System.Windows.Forms.GroupBox
$objGroupBoxCondition.Location = New-Object System.Drawing.Size($columnThree,$rowTwo)
$objGroupBoxCondition.Size = New-Object System.Drawing.Size(120,45)
$objGroupBoxCondition.Font = $GroupBoxFont
$objGroupBoxCondition.Text = "Condition"
$objForm.Controls.Add($objGroupBoxCondition)


# Weight
$objTextBoxWeight = New-Object System.Windows.Forms.TextBox 
$objTextBoxWeight.Location = New-Object System.Drawing.Size(($columnFour + $x_offset),($rowTwo + $y_offset)) 
$objTextBoxWeight.Size = New-Object System.Drawing.Size(40,20) 
$objTextBoxWeight.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxWeight) 

$objLabelWeight = New-Object System.Windows.Forms.Label
$objLabelWeight.Location = New-Object System.Drawing.Size(($columnFour + $x_offset + 45),($rowTwo + $y_offset + 5)) 
$objLabelWeight.Size = New-Object System.Drawing.Size(15,15) 
$objLabelWeight.Text = "lb"
$objLabelWeight.Font = $TextBoxFont
$objForm.Controls.Add($objLabelWeight) 

$objGroupBoxWeight = New-Object System.Windows.Forms.GroupBox
$objGroupBoxWeight.Location = New-Object System.Drawing.Size($columnFour,$rowTwo)
$objGroupBoxWeight.Size = New-Object System.Drawing.Size(75,45)
$objGroupBoxWeight.Font = $GroupBoxFont
$objGroupBoxWeight.Text = "Weight"
$objForm.Controls.Add($objGroupBoxWeight)


# Brand
$objComboBoxBrand = New-Object System.Windows.Forms.ComboBox
$objComboBoxBrand.Location = New-Object System.Drawing.Size(($columnOne + $x_offset),($rowThree + $y_offset))
$objComboBoxBrand.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxBrand.Font = $TextBoxFont

$objTextBoxOther = New-Object System.Windows.Forms.TextBox 
$objTextBoxOther.Location = New-Object System.Drawing.Size(($columnOne + $x_offset + 110),($rowThree + $y_offset)) 
$objTextBoxOther.Size = New-Object System.Drawing.Size(65,20) 
$objTextBoxOther.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxOther) 

<#
$objComboBoxBrand.Add_Click({
    if ($objComboBoxBrand.Text -eq "Other") {
        $objTextBoxOther.Text = "Testing"
    }
})
#>

[void] $objComboBoxBrand.Items.Add("Dell")
[void] $objComboBoxBrand.Items.Add("HP")
[void] $objComboBoxBrand.Items.Add("IBM")
[void] $objComboBoxBrand.Items.Add("Lenovo")
[void] $objComboBoxBrand.Items.Add("Other:")

$objForm.Controls.Add($objComboBoxBrand) 

$objGroupBoxBrand = New-Object System.Windows.Forms.GroupBox
$objGroupBoxBrand.Location = New-Object System.Drawing.Size($columnOne,$rowThree)
$objGroupBoxBrand.Size = New-Object System.Drawing.Size(195,45)
$objGroupBoxBrand.Font = $GroupBoxFont
$objGroupBoxBrand.Text = "Brand"
$objForm.Controls.Add($objGroupBoxBrand)


# Serial Number
$objTextBoxSerialNum = New-Object System.Windows.Forms.TextBox 
$objTextBoxSerialNum.Location = New-Object System.Drawing.Size(($columnThree + $x_offset),($rowThree + $y_offset)) 
$objTextBoxSerialNum.Size = New-Object System.Drawing.Size(100,20) 
$objTextBoxSerialNum.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxSerialNum) 

$objGroupBoxSerialNum = New-Object System.Windows.Forms.GroupBox
$objGroupBoxSerialNum.Location = New-Object System.Drawing.Size($columnThree,$rowThree)
$objGroupBoxSerialNum.Size = New-Object System.Drawing.Size(120,45)
$objGroupBoxSerialNum.Font = $GroupBoxFont
$objGroupBoxSerialNum.Text = "Serial Number"
$objForm.Controls.Add($objGroupBoxSerialNum)

# Model
$objTextBoxModel = New-Object System.Windows.Forms.TextBox 
$objTextBoxModel.Location = New-Object System.Drawing.Size(($columnOne + $x_offset),($rowFour + $y_offset)) 
$objTextBoxModel.Size = New-Object System.Drawing.Size(175,20) 
$objTextBoxModel.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxModel) 

$objGroupBoxModel = New-Object System.Windows.Forms.GroupBox
$objGroupBoxModel.Location = New-Object System.Drawing.Size($columnOne,$rowFour)
$objGroupBoxModel.Size = New-Object System.Drawing.Size(195,45)
$objGroupBoxModel.Font = $GroupBoxFont
$objGroupBoxModel.Text = "Model"
$objForm.Controls.Add($objGroupBoxModel)

# Form Factor
$objComboBoxFormFactor = New-Object System.Windows.Forms.ComboBox
$objComboBoxFormFactor.Location = New-Object System.Drawing.Size(($columnThree + $x_offset),($rowFour + $y_offset))
$objComboBoxFormFactor.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxFormFactor.Font = $TextBoxFont

[void] $objComboBoxFormFactor.Items.Add("Desktop")
[void] $objComboBoxFormFactor.Items.Add("Laptop")
[void] $objComboBoxFormFactor.Items.Add("Tablet")
[void] $objComboBoxFormFactor.Items.Add("Tablet Desktop")
[void] $objComboBoxFormFactor.Items.Add("SFF Desktop")
[void] $objComboBoxFormFactor.Items.Add("USFF Desktop")
[void] $objComboBoxFormFactor.Items.Add("Workstation")
[void] $objComboBoxFormFactor.Items.Add("Server")

$objForm.Controls.Add($objComboBoxFormFactor) 

$objGroupBoxFormFactor = New-Object System.Windows.Forms.GroupBox
$objGroupBoxFormFactor.Location = New-Object System.Drawing.Size($columnThree,$rowFour)
$objGroupBoxFormFactor.Size = New-Object System.Drawing.Size(120,45)
$objGroupBoxFormFactor.Font = $GroupBoxFont
$objGroupBoxFormFactor.Text = "Form Factor"
$objForm.Controls.Add($objGroupBoxFormFactor)


# CPU Quantity
$objTextBoxCPUQty = New-Object System.Windows.Forms.TextBox 
$objTextBoxCPUQty.Location = New-Object System.Drawing.Size(($columnOne + (3 * $x_offset)),($rowFive + $y_offset)) 
$objTextBoxCPUQty.Size = New-Object System.Drawing.Size(30,20) 
$objTextBoxCPUQty.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxCPUQty) 

$objGroupBoxCPUQty = New-Object System.Windows.Forms.GroupBox
$objGroupBoxCPUQty.Location = New-Object System.Drawing.Size(($columnOne + $x_offset),$rowFive)
$objGroupBoxCPUQty.Size = New-Object System.Drawing.Size(80,45)
$objGroupBoxCPUQty.Font = $GroupBoxFont
$objGroupBoxCPUQty.Text = "CPU Qty"
$objForm.Controls.Add($objGroupBoxCPUQty)

# CPU Cores 
$objTextBoxCPUCores = New-Object System.Windows.Forms.TextBox 
$objTextBoxCPUCores.Location = New-Object System.Drawing.Size(($columnTwo + (2 * $x_offset)),($rowFive + $y_offset)) 
$objTextBoxCPUCores.Size = New-Object System.Drawing.Size(30,20) 
$objTextBoxCPUCores.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxCPUCores) 

# HyperThreading Check Box
$objLabelHyperThreading = New-Object System.Windows.Forms.Label
$objLabelHyperThreading.Location = New-Object System.Drawing.Size(($columnTwo + (9 * $x_offset)),($rowFive + $y_offset + 5)) 
$objLabelHyperThreading.Size = New-Object System.Drawing.Size(20,15) 
$objLabelHyperThreading.Text = "HT"
$objLabelHyperThreading.Font = $TextBoxFont
$objForm.Controls.Add($objLabelHyperThreading) 

$objCheckBoxHyperThreading = New-Object System.Windows.Forms.CheckBox
$objCheckBoxHyperThreading.Location = New-Object System.Drawing.Size(($columnTwo + (7 * $x_offset)),($rowFive + $y_offset)) 
$objForm.Controls.Add($objCheckBoxHyperThreading) 

$objGroupBoxCPUCores = New-Object System.Windows.Forms.GroupBox
$objGroupBoxCPUCores.Location = New-Object System.Drawing.Size($columnTwo,$rowFive)
$objGroupBoxCPUCores.Size = New-Object System.Drawing.Size(180,45)
$objGroupBoxCPUCores.Font = $GroupBoxFont
$objGroupBoxCPUCores.Text = "CPU Cores"
$objForm.Controls.Add($objGroupBoxCPUCores)

# CPU Speed Text Box
$objTextBoxCPUSpeed = New-Object System.Windows.Forms.TextBox 
$objTextBoxCPUSpeed.Location = New-Object System.Drawing.Size(($columnOne + $x_offset),($rowSix + $y_offset)) 
$objTextBoxCPUSpeed.Size = New-Object System.Drawing.Size(50,20) 
$objTextBoxCPUSpeed.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxCPUSpeed) 

$objGroupBoxCPUSpeed = New-Object System.Windows.Forms.GroupBox
$objGroupBoxCPUSpeed.Location = New-Object System.Drawing.Size($columnOne,$rowSix)
$objGroupBoxCPUSpeed.Size = New-Object System.Drawing.Size(100,45)
$objGroupBoxCPUSpeed.Font = $GroupBoxFont
$objGroupBoxCPUSpeed.Text = "CPU Speed"
$objForm.Controls.Add($objGroupBoxCPUSpeed)


# CPU Type Combo Box
$objComboBoxCPUType = New-Object System.Windows.Forms.ComboBox
$objComboBoxCPUType.Location = New-Object System.Drawing.Size(($columnTwo + (2 * $x_offset)),($rowSix + $y_offset))
$objComboBoxCPUType.Size = New-Object System.Drawing.Size(180,20)
$objComboBoxCPUType.Font = $TextBoxFont

[void] $objComboBoxCPUType.Items.Add("Core 2 Duo")
[void] $objComboBoxCPUType.Items.Add("Core i3")
[void] $objComboBoxCPUType.Items.Add("Core i5")
[void] $objComboBoxCPUType.Items.Add("Core i7")

$objForm.Controls.Add($objComboBoxCPUType) 

$objGroupBoxCPUType = New-Object System.Windows.Forms.GroupBox
$objGroupBoxCPUType.Location = New-Object System.Drawing.Size(($columnTwo + $x_offset),$rowSix)
$objGroupBoxCPUType.Size = New-Object System.Drawing.Size(200,45)
$objGroupBoxCPUType.Font = $GroupBoxFont
$objGroupBoxCPUType.Text = "CPU Type"
$objForm.Controls.Add($objGroupBoxCPUType)

# CPU Bus Speed Text Box (Col1)(Row8)
$objLabelBusSpeed = New-Object System.Windows.Forms.Label
$objLabelBusSpeed.Location = New-Object System.Drawing.Size(($columnOne + 5),$rowSeven) 
$objLabelBusSpeed.Size = New-Object System.Drawing.Size(100,15) 
$objLabelBusSpeed.Text = "Bus Speed"
$objLabelBusSpeed.Font = "Arial"
$objForm.Controls.Add($objLabelBusSpeed) 

$objTextBoxBusSpeed = New-Object System.Windows.Forms.TextBox 
$objTextBoxBusSpeed.Location = New-Object System.Drawing.Size(($columnOne + 5),($rowSeven + 15)) 
$objTextBoxBusSpeed.Size = New-Object System.Drawing.Size(100,20) 
$objTextBoxBusSpeed.Font = "Arial"
$objForm.Controls.Add($objTextBoxBusSpeed) 


# CPU Name Text Box (Col2)(Row8)
$objLabelCPUName = New-Object System.Windows.Forms.Label
$objLabelCPUName.Location = New-Object System.Drawing.Size($columnTwo,$rowSeven) 
$objLabelCPUName.Size = New-Object System.Drawing.Size(100,15) 
$objLabelCPUName.Text = "CPU Name"
$objLabelCPUName.Font = "Arial"
$objForm.Controls.Add($objLabelCPUName) 

$objTextBoxCPUName = New-Object System.Windows.Forms.TextBox 
$objTextBoxCPUName.Location = New-Object System.Drawing.Size($columnTwo,($rowSeven + 15)) 
$objTextBoxCPUName.Size = New-Object System.Drawing.Size(100,20) 
$objTextBoxCPUName.Font = "Arial"
$objForm.Controls.Add($objTextBoxCPUName) 


# Memory Size
$objLabelMemorySize = New-Object System.Windows.Forms.Label
$objLabelMemorySize.Location = New-Object System.Drawing.Size(($columnOne + 5),$rowEight) 
$objLabelMemorySize.Size = New-Object System.Drawing.Size(100,15) 
$objLabelMemorySize.Text = "Memory Size"
$objLabelMemorySize.Font = "Arial"
$objForm.Controls.Add($objLabelMemorySize) 

$objComboBoxMemorySize = New-Object System.Windows.Forms.ComboBox
$objComboBoxMemorySize.Location = New-Object System.Drawing.Size(($columnOne + 5),($rowEight + 15))
$objComboBoxMemorySize.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxMemorySize.Font = "Arial"

[void] $objComboBoxMemorySize.Items.Add("1 GB")
[void] $objComboBoxMemorySize.Items.Add("2 GB")
[void] $objComboBoxMemorySize.Items.Add("3 GB")
[void] $objComboBoxMemorySize.Items.Add("4 GB")

$objForm.Controls.Add($objComboBoxMemorySize) 


# Memory Type
$objLabelMemoryType = New-Object System.Windows.Forms.Label
$objLabelMemoryType.Location = New-Object System.Drawing.Size($columnTwo,$rowEight) 
$objLabelMemoryType.Size = New-Object System.Drawing.Size(100,15) 
$objLabelMemoryType.Text = "Memory Type"
$objLabelMemoryType.Font = "Arial"
$objForm.Controls.Add($objLabelMemoryType) 

$objComboBoxMemoryType = New-Object System.Windows.Forms.ComboBox
$objComboBoxMemoryType.Location = New-Object System.Drawing.Size($columnTwo,($rowEight + 15))
$objComboBoxMemoryType.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxMemoryType.Font = "Arial"

[void] $objComboBoxMemoryType.Items.Add("DDR")
[void] $objComboBoxMemoryType.Items.Add("DDR2")
[void] $objComboBoxMemoryType.Items.Add("DDR3")

$objForm.Controls.Add($objComboBoxMemoryType) 


# Memory Rating
$objLabelMemoryRating = New-Object System.Windows.Forms.Label
$objLabelMemoryRating.Location = New-Object System.Drawing.Size(($columnOne + 5),$rowNine) 
$objLabelMemoryRating.Size = New-Object System.Drawing.Size(100,15) 
$objLabelMemoryRating.Text = "Memory Rating"
$objLabelMemoryRating.Font = "Arial"
$objForm.Controls.Add($objLabelMemoryRating) 

$objComboBoxMemoryRating = New-Object System.Windows.Forms.ComboBox
$objComboBoxMemoryRating.Location = New-Object System.Drawing.Size(($columnOne + 5),($rowNine + 15))
$objComboBoxMemoryRating.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxMemoryRating.Font = "Arial"

[void] $objComboBoxMemoryRating.Items.Add("PC2-8500")
[void] $objComboBoxMemoryRating.Items.Add("PC2-10600")
[void] $objComboBoxMemoryRating.Items.Add("PC3-8500")
[void] $objComboBoxMemoryRating.Items.Add("PC3-10600")

$objForm.Controls.Add($objComboBoxMemoryRating) 


# Memory Speed
$objLabelMemorySpeed = New-Object System.Windows.Forms.Label
$objLabelMemorySpeed.Location = New-Object System.Drawing.Size($columnTwo,$rowNine) 
$objLabelMemorySpeed.Size = New-Object System.Drawing.Size(100,15) 
$objLabelMemorySpeed.Text = "Memory Speed"
$objLabelMemorySpeed.Font = "Arial"
$objForm.Controls.Add($objLabelMemorySpeed) 

$objComboBoxMemorySpeed = New-Object System.Windows.Forms.ComboBox
$objComboBoxMemorySpeed.Location = New-Object System.Drawing.Size($columnTwo,($rowNine + 15))
$objComboBoxMemorySpeed.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxMemorySpeed.Font = "Arial"

[void] $objComboBoxMemorySpeed.Items.Add("667")
[void] $objComboBoxMemorySpeed.Items.Add("800")
[void] $objComboBoxMemorySpeed.Items.Add("1066")
[void] $objComboBoxMemorySpeed.Items.Add("1333")

$objForm.Controls.Add($objComboBoxMemorySpeed) 

# HDD (4 Inputs) **************************************
# Number of HDDs
# HDD Size
# HDD Type
# HDD RPM


# Video (3 Inputs) ************************************
# Video Type Combo Box
# Graphics Card Text Box
# Onboard Memory Text Box

# Optical Drive Combo Box *****************************

# Other Drives Check Boxes ****************************
# None (Default)
# FDD
# Tape

# Network Check Boxes *********************************
# None (Default)
# Ethernet
# Modem
# Wifi
# BT (Bluetooth)

# COA Combo Box ***************************************

# OS Installed Radio Button ***************************
# Yes / No

# Notes Text Box **************************************

# Grade Combo Box *************************************

# Accessories Check Boxes *****************************
# Power Cord
# AC Adapter
# Battery
# Extended Battery
# Fingerprint Reader
# Web Cam
# Keyboard
# Mouse


<#*******************************************************
# Ports Check Boxes
$objLabelHyperThreading = New-Object System.Windows.Forms.Label
$objLabelHyperThreading.Location = New-Object System.Drawing.Size($columnTwo,$rowSix) 
$objLabelHyperThreading.Size = New-Object System.Drawing.Size(100,15) 
$objLabelHyperThreading.Text = "HT"
$objLabelHyperThreading.Font = "Arial"
$objForm.Controls.Add($objLabelHyperThreading) 

$objCheckBoxHyperThreading = New-Object System.Windows.Forms.CheckBox
$objCheckBoxHyperThreading.Location = New-Object System.Drawing.Size($columnTwo,($rowSix + 15)) 
$objForm.Controls.Add($objCheckBoxHyperThreading) 



#>

# Ports: USB
# Ports: Ethernet
# Ports: Modem
# Ports: VGA
# Ports: DVI
# Ports: Audio
# Ports: PS/2
# Ports: HDMI
# Ports: eSATA
# Ports: eSATAp
# Ports: SD Card
# Ports: Parallel
# Ports: Serial
# Ports: Firewire
# Ports: Display Port
# Ports: 
# Ports: 
# Ports: 
# Ports: 
# Ports: 
# Ports: Display Port that looks like PS/2



# Display Dialog Box
$objForm.Topmost = $True

$objForm.Add_Shown({$objForm.Activate()})
[void] $objForm.ShowDialog()


# Capture Input from form into variables
$Tester = $objTextBoxTester.Text
$ISPF_PO = $objTextBoxISPF_PO.Text
$Date = $objLabelDate.Text
$Condition = $objComboBoxCondition.Text
$Weight = $objTextBoxWeight.Text
$Brand = $objComboBoxBrand.Text
$SerialNum = $objTextBoxSerialNum.Text
$Model = $objTextBoxModel.Text
$FormFactor = $objComboBoxFormFactor.Text
$NumCPUs = $objTextBoxNumCPUs.Text
$NumCores = $objTextBoxNumCores.Text
$HyperThreading = $objCheckBoxHyperThreading.Checked
$CPUSpeed = $objTextBoxCPUSpeed.Text
$CPUFamily = $objComboBoxCPUFamily.Text
$BusSpeed = $objTextBoxBusSpeed.Text
$CPUName = $objTextBoxCPUName.Text
$MemorySize = $objComboBoxMemorySize.Text
$MemoryType = $objComboBoxMemoryType.Text
$MemoryRating = $objComboBoxMemoryRating.Text
$MemorySpeed = $objComboBoxMemorySpeed.Text



# Display variables
$Tester
$ISPF_PO
$Date
$Condition
$Weight
$Brand
$SerialNum
$Model
$FormFactor
$NumCPUs
$NumCores
$HyperThreading
$CPUSpeed
$CPUFamily
$BusSpeed
$CPUName
$MemorySize
$MemoryType
$MemoryRating
$MemorySpeed


<#
$objTextBoxManufacturer = New-Object System.Windows.Forms.TextBox 
$objTextBoxManufacturer.Location = New-Object System.Drawing.Size(10,95) 
$objTextBoxManufacturer.Size = New-Object System.Drawing.Size(80,20) 
$objTextBoxManufacturer.Font = "Arial"
$objForm.Controls.Add($objTextBoxManufacturer) 

$objListBoxManufacturer = New-Object System.Windows.Forms.ListBox 
$objListBoxManufacturer.Location = New-Object System.Drawing.Size(10,40) 
$objListBoxManufacturer.Size = New-Object System.Drawing.Size(260,20) 
$objListBoxManufacturer.Height = 80

[void] $objListBoxManufacturer.Items.Add("atl-dc-001")
[void] $objListBoxManufacturer.Items.Add("atl-dc-002")
[void] $objListBoxManufacturer.Items.Add("atl-dc-003")
[void] $objListBoxManufacturer.Items.Add("atl-dc-004")
[void] $objListBoxManufacturer.Items.Add("atl-dc-005")
[void] $objListBoxManufacturer.Items.Add("atl-dc-006")
[void] $objListBoxManufacturer.Items.Add("atl-dc-007")

$objForm.Controls.Add($objListBox) 
#>
