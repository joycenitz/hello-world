[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 

$TitleFont = New-Object System.Drawing.Font("Arial",14,[System.Drawing.FontStyle]::Regular)

$TextBoxFont = New-Object System.Drawing.Font("Arial",8.5,[System.Drawing.FontStyle]::Regular)

$GroupBoxFont = New-Object System.Drawing.Font("Arial",8,[System.Drawing.FontStyle]::Bold)
# Font styles are: Regular, Bold, Italic, Underline, Strikeout

[int32] $rowOne = 10
[int32] $rowTwo = 60
[int32] $rowThree = 130
[int32] $rowFour = 185
[int32] $rowFive = 240
[int32] $rowSix = 295
[int32] $rowSeven = 350
[int32] $rowEight = 405
[int32] $rowNine = 460
[int32] $rowTen = 515
[int32] $rowEleven = 570


[int32] $columnOne = 10
[int32] $columnTwo = 120
[int32] $columnThree = 215
[int32] $columnFour = 345



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
$objTextBoxTester.Location = New-Object System.Drawing.Size(150,($rowOne + 15)) 
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

$objTextBoxCondition = New-Object System.Windows.Forms.TextBox 
$objTextBoxCondition.Location = New-Object System.Drawing.Size(($columnOne + 10),($rowTwo + 15)) 
$objTextBoxCondition.Size = New-Object System.Drawing.Size(80,20) 
$objTextBoxCondition.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxCondition) 

$objGroupBoxCondition = New-Object System.Windows.Forms.GroupBox
$objGroupBoxCondition.Location = New-Object System.Drawing.Size($columnOne,$rowTwo)
$objGroupBoxCondition.Size = New-Object System.Drawing.Size(100,45)
$objGroupBoxCondition.Font = $GroupBoxFont
$objGroupBoxCondition.Text = "ISPF / PO"
$objForm.Controls.Add($objGroupBoxCondition)

#Date
$Date = "12/12/1234"

$objLabelDate = New-Object System.Windows.Forms.Label
$objLabelDate.Location = New-Object System.Drawing.Size(($columnTwo + 10),($rowTwo + 20)) 
$objLabelDate.Size = New-Object System.Drawing.Size(70,15) 
$objLabelDate.Font = $TextBoxFont
$objLabelDate.Text = $Date
$objForm.Controls.Add($objLabelDate) 

$objGroupBoxDate = New-Object System.Windows.Forms.GroupBox
$objGroupBoxDate.Location = New-Object System.Drawing.Size($columnTwo,$rowTwo)
$objGroupBoxDate.Size = New-Object System.Drawing.Size(85,45)
$objGroupBoxDate.Font = $GroupBoxFont
$objGroupBoxDate.Text = "Date"
$objForm.Controls.Add($objGroupBoxDate)


#Condition
$objComboBoxCondition = New-Object System.Windows.Forms.ComboBox
$objComboBoxCondition.Location = New-Object System.Drawing.Size(($columnThree + 10),($rowTwo + 15))
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
$objTextBoxWeight.Location = New-Object System.Drawing.Size(($columnFour + 10),($rowTwo + 15)) 
$objTextBoxWeight.Size = New-Object System.Drawing.Size(40,20) 
$objTextBoxWeight.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxWeight) 

$objLabelWeigth = New-Object System.Windows.Forms.Label
$objLabelWeight.Location = New-Object System.Drawing.Size(($columnFour + 55),($rowTwo + 20)) 
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
$objLabelBrand = New-Object System.Windows.Forms.Label
$objLabelBrand.Location = New-Object System.Drawing.Size($columnOne,$rowThree) 
$objLabelBrand.Size = New-Object System.Drawing.Size(100,15) 
$objLabelBrand.Text = "Brand"
$objLabelBrand.Font = "Arial"
$objForm.Controls.Add($objLabelBrand) 


$objComboBoxBrand = New-Object System.Windows.Forms.ComboBox
$objComboBoxBrand.Location = New-Object System.Drawing.Size($columnOne,($rowThree + 15))
$objComboBoxBrand.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxBrand.Font = "Arial"

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

<#
$objTextBoxOther = New-Object System.Windows.Forms.TextBox 
$objTextBoxOther.Location = New-Object System.Drawing.Size(125,95) 
$objTextBoxOther.Size = New-Object System.Drawing.Size(40,20) 
$objTextBoxOther.Font = "Arial"
$objForm.Controls.Add($objTextBoxOther) 
#>

# Serial Number
$objLabelSerialNum = New-Object System.Windows.Forms.Label
$objLabelSerialNum.Location = New-Object System.Drawing.Size($columnTwo,$rowThree) 
$objLabelSerialNum.Size = New-Object System.Drawing.Size(100,15) 
$objLabelSerialNum.Text = "Serial Number"
$objLabelSerialNum.Font = "Arial"
$objForm.Controls.Add($objLabelSerialNum) 

$objTextBoxSerialNum = New-Object System.Windows.Forms.TextBox 
$objTextBoxSerialNum.Location = New-Object System.Drawing.Size($columnTwo,($rowThree + 15)) 
$objTextBoxSerialNum.Size = New-Object System.Drawing.Size(100,20) 
$objTextBoxSerialNum.Font = "Arial"
$objForm.Controls.Add($objTextBoxSerialNum) 


# Model
$objLabelModel = New-Object System.Windows.Forms.Label
$objLabelModel.Location = New-Object System.Drawing.Size($columnOne,$rowFour) 
$objLabelModel.Size = New-Object System.Drawing.Size(100,15) 
$objLabelModel.Text = "Model"
$objLabelModel.Font = "Arial"
$objForm.Controls.Add($objLabelModel) 

$objTextBoxModel = New-Object System.Windows.Forms.TextBox 
$objTextBoxModel.Location = New-Object System.Drawing.Size($columnOne,($rowFour + 15)) 
$objTextBoxModel.Size = New-Object System.Drawing.Size(100,20) 
$objTextBoxModel.Font = "Arial"
$objForm.Controls.Add($objTextBoxModel) 


# Form Factor
$objLabelFormFactor = New-Object System.Windows.Forms.Label
$objLabelFormFactor.Location = New-Object System.Drawing.Size($columnTwo,$rowFour) 
$objLabelFormFactor.Size = New-Object System.Drawing.Size(100,15) 
$objLabelFormFactor.Text = "Form Factor"
$objLabelFormFactor.Font = "Arial"
$objForm.Controls.Add($objLabelFormFactor) 

$objComboBoxFormFactor = New-Object System.Windows.Forms.ComboBox
$objComboBoxFormFactor.Location = New-Object System.Drawing.Size($columnTwo,($rowFour + 15))
$objComboBoxFormFactor.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxFormFactor.Font = "Arial"

[void] $objComboBoxFormFactor.Items.Add("Desktop")
[void] $objComboBoxFormFactor.Items.Add("Laptop")
[void] $objComboBoxFormFactor.Items.Add("Tablet")
[void] $objComboBoxFormFactor.Items.Add("Tablet Desktop")
[void] $objComboBoxFormFactor.Items.Add("SFF Desktop")
[void] $objComboBoxFormFactor.Items.Add("USFF Desktop")
[void] $objComboBoxFormFactor.Items.Add("Workstation")
[void] $objComboBoxFormFactor.Items.Add("Server")

$objForm.Controls.Add($objComboBoxFormFactor) 


# Number of CPUs (Col1)(Row6)
$objLabelNumCPUs = New-Object System.Windows.Forms.Label
$objLabelNumCPUs.Location = New-Object System.Drawing.Size(($columnOne + 30),$rowSix) 
$objLabelNumCPUs.Size = New-Object System.Drawing.Size(30,15) 
$objLabelNumCPUs.Text = "CPUs"
$objLabelNumCPUs.Font = "Arial"
$objForm.Controls.Add($objLabelNumCPUs) 

$objTextBoxNumCPUs = New-Object System.Windows.Forms.TextBox 
$objTextBoxNumCPUs.Location = New-Object System.Drawing.Size(($columnOne + 30),($rowSix + 15)) 
$objTextBoxNumCPUs.Size = New-Object System.Drawing.Size(30,20) 
$objTextBoxNumCPUs.Font = "Arial"
$objForm.Controls.Add($objTextBoxNumCPUs) 


# Number of Cores (Col2)(Row6)
$objLabelNumCores = New-Object System.Windows.Forms.Label
$objLabelNumCores.Location = New-Object System.Drawing.Size(($columnTwo - 50),$rowSix) 
$objLabelNumCores.Size = New-Object System.Drawing.Size(30,15) 
$objLabelNumCores.Text = "Cores"
$objLabelNumCores.Font = "Arial"
$objForm.Controls.Add($objLabelNumCores) 

$objTextBoxNumCores = New-Object System.Windows.Forms.TextBox 
$objTextBoxNumCores.Location = New-Object System.Drawing.Size(($columnTwo - 50),($rowSix + 15)) 
$objTextBoxNumCores.Size = New-Object System.Drawing.Size(30,20) 
$objTextBoxNumCores.Font = "Arial"
$objForm.Controls.Add($objTextBoxNumCores) 


# HyperThreading Check Box (Col3)(Row6)
$objLabelHyperThreading = New-Object System.Windows.Forms.Label
$objLabelHyperThreading.Location = New-Object System.Drawing.Size($columnTwo,$rowSix) 
$objLabelHyperThreading.Size = New-Object System.Drawing.Size(100,15) 
$objLabelHyperThreading.Text = "HT"
$objLabelHyperThreading.Font = "Arial"
$objForm.Controls.Add($objLabelHyperThreading) 

$objCheckBoxHyperThreading = New-Object System.Windows.Forms.CheckBox
$objCheckBoxHyperThreading.Location = New-Object System.Drawing.Size($columnTwo,($rowSix + 15)) 
$objForm.Controls.Add($objCheckBoxHyperThreading) 


# CPU Speed Text Box (Col1)(Row7)
$objLabelCPUSpeed = New-Object System.Windows.Forms.Label
$objLabelCPUSpeed.Location = New-Object System.Drawing.Size(($columnOne + 5),$rowSeven) 
$objLabelCPUSpeed.Size = New-Object System.Drawing.Size(100,15) 
$objLabelCPUSpeed.Text = "CPU Speed"
$objLabelCPUSpeed.Font = "Arial"
$objForm.Controls.Add($objLabelCPUSpeed) 

$objTextBoxCPUSpeed = New-Object System.Windows.Forms.TextBox 
$objTextBoxCPUSpeed.Location = New-Object System.Drawing.Size(($columnOne + 5),($rowSeven + 15)) 
$objTextBoxCPUSpeed.Size = New-Object System.Drawing.Size(100,20) 
$objTextBoxCPUSpeed.Font = "Arial"
$objForm.Controls.Add($objTextBoxCPUSpeed) 


# CPU Family Combo Box (Col2)(Row7)
$objLabelCPUFamily = New-Object System.Windows.Forms.Label
$objLabelCPUFamily.Location = New-Object System.Drawing.Size($columnTwo,$rowSeven) 
$objLabelCPUFamily.Size = New-Object System.Drawing.Size(100,15) 
$objLabelCPUFamily.Text = "CPU Family"
$objLabelCPUFamily.Font = "Arial"
$objForm.Controls.Add($objLabelCPUFamily) 

$objComboBoxCPUFamily = New-Object System.Windows.Forms.ComboBox
$objComboBoxCPUFamily.Location = New-Object System.Drawing.Size($columnTwo,($rowSeven + 15))
$objComboBoxCPUFamily.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxCPUFamily.Font = "Arial"

[void] $objComboBoxCPUFamily.Items.Add("Core 2 Duo")
[void] $objComboBoxCPUFamily.Items.Add("Core i3")
[void] $objComboBoxCPUFamily.Items.Add("Core i5")
[void] $objComboBoxCPUFamily.Items.Add("Core i7")

$objForm.Controls.Add($objComboBoxCPUFamily) 


# CPU Bus Speed Text Box (Col1)(Row8)
$objLabelBusSpeed = New-Object System.Windows.Forms.Label
$objLabelBusSpeed.Location = New-Object System.Drawing.Size(($columnOne + 5),$rowEight) 
$objLabelBusSpeed.Size = New-Object System.Drawing.Size(100,15) 
$objLabelBusSpeed.Text = "Bus Speed"
$objLabelBusSpeed.Font = "Arial"
$objForm.Controls.Add($objLabelBusSpeed) 

$objTextBoxBusSpeed = New-Object System.Windows.Forms.TextBox 
$objTextBoxBusSpeed.Location = New-Object System.Drawing.Size(($columnOne + 5),($rowEight + 15)) 
$objTextBoxBusSpeed.Size = New-Object System.Drawing.Size(100,20) 
$objTextBoxBusSpeed.Font = "Arial"
$objForm.Controls.Add($objTextBoxBusSpeed) 


# CPU Name Text Box (Col2)(Row8)
$objLabelCPUName = New-Object System.Windows.Forms.Label
$objLabelCPUName.Location = New-Object System.Drawing.Size($columnTwo,$rowEight) 
$objLabelCPUName.Size = New-Object System.Drawing.Size(100,15) 
$objLabelCPUName.Text = "CPU Name"
$objLabelCPUName.Font = "Arial"
$objForm.Controls.Add($objLabelCPUName) 

$objTextBoxCPUName = New-Object System.Windows.Forms.TextBox 
$objTextBoxCPUName.Location = New-Object System.Drawing.Size($columnTwo,($rowEight + 15)) 
$objTextBoxCPUName.Size = New-Object System.Drawing.Size(100,20) 
$objTextBoxCPUName.Font = "Arial"
$objForm.Controls.Add($objTextBoxCPUName) 


# CPU Group Box
$objGroupBoxCPU = New-Object System.Windows.Forms.GroupBox
$objGroupBoxCPU.Location = New-Object System.Drawing.Size($columnOne,$rowFive)
$objGroupBoxCPU.Size = New-Object System.Drawing.Size(290,170)
$objGroupBoxCPU.Font = "Arial"
$objGroupBoxCPU.Text = "CPU"

$objForm.Controls.Add($objGroupBoxCPU)


# RAM Size (Col1)(Row10)
$objLabelRAMSize = New-Object System.Windows.Forms.Label
$objLabelRAMSize.Location = New-Object System.Drawing.Size(($columnOne + 5),$rowTen) 
$objLabelRAMSize.Size = New-Object System.Drawing.Size(100,15) 
$objLabelRAMSize.Text = "RAM Size"
$objLabelRAMSize.Font = "Arial"
$objForm.Controls.Add($objLabelRAMSize) 

$objComboBoxRAMSize = New-Object System.Windows.Forms.ComboBox
$objComboBoxRAMSize.Location = New-Object System.Drawing.Size(($columnOne + 5),($rowTen + 15))
$objComboBoxRAMSize.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxRAMSize.Font = "Arial"

[void] $objComboBoxRAMSize.Items.Add("1 GB")
[void] $objComboBoxRAMSize.Items.Add("2 GB")
[void] $objComboBoxRAMSize.Items.Add("3 GB")
[void] $objComboBoxRAMSize.Items.Add("4 GB")

$objForm.Controls.Add($objComboBoxRAMSize) 


# RAM Type (Col2)(Row10)
$objLabelRAMType = New-Object System.Windows.Forms.Label
$objLabelRAMType.Location = New-Object System.Drawing.Size($columnTwo,$rowTen) 
$objLabelRAMType.Size = New-Object System.Drawing.Size(100,15) 
$objLabelRAMType.Text = "RAM Type"
$objLabelRAMType.Font = "Arial"
$objForm.Controls.Add($objLabelRAMType) 

$objComboBoxRAMType = New-Object System.Windows.Forms.ComboBox
$objComboBoxRAMType.Location = New-Object System.Drawing.Size($columnTwo,($rowTen + 15))
$objComboBoxRAMType.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxRAMType.Font = "Arial"

[void] $objComboBoxRAMType.Items.Add("DDR")
[void] $objComboBoxRAMType.Items.Add("DDR2")
[void] $objComboBoxRAMType.Items.Add("DDR3")

$objForm.Controls.Add($objComboBoxRAMType) 


# RAM Name (Col1)(Row11)
$objLabelRAMName = New-Object System.Windows.Forms.Label
$objLabelRAMName.Location = New-Object System.Drawing.Size(($columnOne + 5),$rowEleven) 
$objLabelRAMName.Size = New-Object System.Drawing.Size(100,15) 
$objLabelRAMName.Text = "RAM Name"
$objLabelRAMName.Font = "Arial"
$objForm.Controls.Add($objLabelRAMName) 

$objComboBoxRAMName = New-Object System.Windows.Forms.ComboBox
$objComboBoxRAMName.Location = New-Object System.Drawing.Size(($columnOne + 5),($rowEleven + 15))
$objComboBoxRAMName.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxRAMName.Font = "Arial"

[void] $objComboBoxRAMName.Items.Add("PC2-8500")
[void] $objComboBoxRAMName.Items.Add("PC2-10600")
[void] $objComboBoxRAMName.Items.Add("PC3-8500")
[void] $objComboBoxRAMName.Items.Add("PC3-10600")

$objForm.Controls.Add($objComboBoxRAMName) 


# RAM Speed (Col2)(Row11)
$objLabelRAMSpeed = New-Object System.Windows.Forms.Label
$objLabelRAMSpeed.Location = New-Object System.Drawing.Size($columnTwo,$rowEleven) 
$objLabelRAMSpeed.Size = New-Object System.Drawing.Size(100,15) 
$objLabelRAMSpeed.Text = "RAM Speed"
$objLabelRAMSpeed.Font = "Arial"
$objForm.Controls.Add($objLabelRAMSpeed) 

$objComboBoxRAMSpeed = New-Object System.Windows.Forms.ComboBox
$objComboBoxRAMSpeed.Location = New-Object System.Drawing.Size($columnTwo,($rowEleven + 15))
$objComboBoxRAMSpeed.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxRAMSpeed.Font = "Arial"

[void] $objComboBoxRAMSpeed.Items.Add("667")
[void] $objComboBoxRAMSpeed.Items.Add("800")
[void] $objComboBoxRAMSpeed.Items.Add("1066")
[void] $objComboBoxRAMSpeed.Items.Add("1333")

$objForm.Controls.Add($objComboBoxRAMSpeed) 

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
$Condition = $objTextBoxCondition.Text
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
$RAMSize = $objComboBoxRAMSize.Text
$RAMType = $objComboBoxRAMType.Text
$RAMName = $objComboBoxRAMName.Text
$RAMSpeed = $objComboBoxRAMSpeed.Text



# Display variables
$Tester
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
$RAMSize
$RAMType
$RAMName
$RAMSpeed


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
