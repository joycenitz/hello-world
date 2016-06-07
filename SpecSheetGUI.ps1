$ISPF_PO = ""
$Date = ""
$Condition = ""
$Brand = ""
$BrandOther = ""
$SerialNumber = ""
$Model = ""
$FormFactor = ""
$CPUQty = ""
$CPUCores = ""
$HyperThreading = ""
$CPUSpeed = ""
$CPUType = ""
$BusSpeed = ""
$CPUName = ""
$MemorySize = ""
$MemoryRating = ""
$MemoryType = ""
$MemorySpeed = ""
$Weight = ""
$HDDQty = ""
$HDDSize = ""
$HDDType = ""
$HDDRPM = ""
$HDDSerial = ""
$Video = ""
$VideoModel = ""
$VideoRAM = ""
$OpticalDrive = ""
$OtherDrivesNone = ""
$OtherDrivesFDD = ""
$OtherDrivesTape = ""
$LCDSize = ""
$NetworkNone = ""
$NetworkEthernet = ""
$NetworkModem = ""
$NetworkWifi = ""
$NetworkBluetooth = ""
$WindowsCOA = ""
$OSInstallNo = ""
$OSInstallYes = ""
$Notes = ""
$AccessoriesNone = ""
$AccessoriesACAdapter = ""
$AccessoriesPowerCord = ""
$AccessoriesBattery = ""
$AccessoriesExtendedBattery = ""
$AccessoriesFingerprintReader = ""
$AccessoriesWebcam = ""
$AccessoriesKeyboard = ""
$AccessoriesMouse = ""
$Damage = ""
$PortsUSB = ""
$PortsEthernet = ""
$PortsModem = ""
$PortsVGA = ""
$PortsDVI = ""
$PortsSVideo = ""
$PortsPS2 = ""
$PortsAudio = ""
$PortseSATAp = ""
$PortsSerial = ""
$PortsParallel = ""
$PortsPCMCIA = ""
$PortsSDCard = ""
$PortsFirewire = ""
$PortseSATA = ""
$PortsHDMI = ""
$PortsSCSI = ""
$PortsDisplayPort = ""
$Version = ""
$Tester = ""



$arrConditionComboValues = @("Boots to BIOS", "Power Only", "For Parts", "Untested")

$arrBrandComboValues = @("Dell", "HP", "IBM", "Other:")
# Lenovo, Toshiba, Fujitsu, Sony, Apple, MPC, American Dynamics, Sensormatic, Custom

$arrFormFactorComboValues = @("Desktop"
                              "SFF Desktop"
                              "USFF Dektop"
                              "Laptop"
                              "Server"
                              "Workstation"
                              "Tablet Laptop"
                              "Mini Tower"
)

# Desktop, SFF Desktop, USFF Desktop, Laptop, Server, Workstation,
# Motherboard, DVR, Thin Client, Tablet, All-in-One, Slim Desktop, POS, Micro Tower, Tablet Laptop, 
# Convertable Mini Tower?, Ultra Slim Desktop, Micro PC, Rack Workstation, Mini Tower, Slim Tower
# Tower Server, Server Blade, Enclosure
# 8 item selection

$arrCPUTypeComboValues = @("Core 2 Duo", "Core i3", "Core i5", "Core i7")
$arrMemorySizeComboValues = @("1GB", 
                              "2GB",
                              "3GB",
                              "4GB",
                              "6GB",
                              "8GB",
                              "10GB",
                              "12GB",
                              "16GB",
                              "32GB",
                              "64GB"
)
$arrMemoryTypeComboValues = @("DDR", "DDR2", "DDR3")
$arrMemoryRatingComboValues = @("PC3-8500", "PC3-10600")
$arrMemorySpeedComboValues = @("667 MHz", "800 MHz", "1066 MHz", "1333 MHz", "1666 MHz")
$arrHDDTypeComboValues = @("IDE", "SATA", "SCSI", "SAS", "ZIF", "FLASH", "SSD", "microSATA")
$arrHDDRPMComboValues = @("Unknown", "4200", "5400", "7200", "10K", "15K", "N/A")
$arrVideoComboValues = @("Mobile", "Onboard", "PCIe")
$arrOpticalDriveComboValues = @("None", "CD-ROM", "CD-RW", "DVD-ROM", "CD-RW/DVD", "DVD+/-RW", "Blu-ray")
$arrWindowsCOAComboValues = @("None", "Windows XP", "Windows Vista", "Win 7 Pro")
$arrDamageComboValues = @("Grade A", "Grade B", "Grade C", "Grade D", "N/A")

$hashOtherDrivesCheckValues = @{"None" = "$true" 
                               "FDD" = "$false" 
                               "Tape" = "$false"
}

$hashNetworkCheckValues = @{"None" = "$true"
                            "Ethernet" = "$false"
                            "Modem" = "$false"
                            "WiFi" = "$false"
                            "BT" = "$false"
}

$hashAccessoriesCheckValues = @{"None" = "$true"
                                "AC Adapter" = "$false"
                                "Power Cord" = "$false"
                                "Battery" = "$false"
                                "Extended Battery" = "$false"
                                "Fingerprint Reader" = "$false"
                                "Webcam" = "$false"
                                "Keyboard" = "$false"
                                "Mouse" = "$false"
}

$hashPortsTextValues = @{"USB" = "0"
                         "Ethernet" = "0"
                         "Modem" = "0"
                         "VGA" = "0"
                         "DVI" = "0"
                         "SVideo" = "0"
                         "PS2" = "0"
                         "Audio" = "0"
                         "eSATAp" = "0"
                         "Serial" = "0"
                         "Parallel" = "0"
                         "PCMCIA" = "0"
                         "SDCard" = "0"
                         "Firewire" = "0"
                         "eSATA" = "0"
                         "HDMI" = "0"
                         "SCSI" = "0"
                         "DisplayPort" = "0"
}




[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 

$TitleFont = New-Object System.Drawing.Font("Arial",14,[System.Drawing.FontStyle]::Regular)
$TextBoxFont = New-Object System.Drawing.Font("Arial",8.5,[System.Drawing.FontStyle]::Regular)
$GroupBoxFont = New-Object System.Drawing.Font("Arial",8,[System.Drawing.FontStyle]::Bold)
$LabelFont = New-Object System.Drawing.Font("Arial",7,[System.Drawing.FontStyle]::Regular)
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
[int32] $columnFive = 430
[int32] $columnSix = 505
[int32] $columnSeven = 600
[int32] $columnEight = 700
[int32] $columnNine = 800

[int32] $x_offset = 10
[int32] $y_offset = 15

[int32] $portColumnOne = ($columnEight + (3 * $x_offset))
[int32] $portColumnTwo = ($portColumnOne + (5 * $x_offset))
[int32] $portColumnThree = ($portColumnOne + (9 * $x_offset))
[int32] $portColumnFour = ($portColumnOne + (15 * $x_offset))

[int32] $portRowOne = ($rowThree + (1.5 * $y_offset))
[int32] $portRowTwo = ($portRowOne + (2 * $y_offset))
[int32] $portRowThree = ($portRowOne + (4 * $y_offset))
[int32] $portRowFour = ($portRowOne + (6 * $y_offset))
[int32] $portRowFive = ($portRowOne + (8 * $y_offset))
[int32] $portRowSix = ($portRowOne + (10 * $y_offset))
[int32] $portRowSeven = ($portRowOne + (12 * $y_offset))
[int32] $portRowEight = ($portRowOne + (14 * $y_offset))
[int32] $portRowNine = ($portRowOne + (16 * $y_offset))




$objForm = New-Object System.Windows.Forms.Form 
$objForm.Text = "Computer Spec Sheet"
$objForm.Size = New-Object System.Drawing.Size(950,510) 
$objForm.StartPosition = "CenterScreen"


$objForm.KeyPreview = $True

<#
$objForm.Add_KeyDown({
    if ($_.KeyCode -eq "Enter") {
        $objForm.Close()
    }
})
#>

$objForm.Add_KeyDown({
    if ($_.KeyCode -eq "Escape") {
        $objForm.Close()
    }
})


$OKButton = New-Object System.Windows.Forms.Button
$OKButton.Location = New-Object System.Drawing.Size(700,10)
$OKButton.Size = New-Object System.Drawing.Size(75,23)
$OKButton.Text = "OK"
$OKButton.Add_Click({
    $objForm.Close()
})
$objForm.Controls.Add($OKButton)

$CancelButton = New-Object System.Windows.Forms.Button
$CancelButton.Location = New-Object System.Drawing.Size(800,10)
$CancelButton.Size = New-Object System.Drawing.Size(75,23)
$CancelButton.Text = "Cancel"
$CancelButton.Add_Click({
    $objForm.Close()
})
$objForm.Controls.Add($CancelButton)

<#
$PrintLabelButton = New-Object System.Windows.Forms.Button
$PrintLabelButton.Location = New-Object System.Drawing.Size(($columnFour + $x_offset),($rowNine + (1 * $y_offset)))
$PrintLabelButton.Size = New-Object System.Drawing.Size(75,23)
$PrintLabelButton.Text = "Print Label"
$PrintLabelButton.Add_Click({
    $printLabel = "Print Label Button Clicked"
    Write-Host $printLabel
})
$objForm.Controls.Add($PrintLabelButton)
#>

$SaveSerialCSVButton = New-Object System.Windows.Forms.Button
$SaveSerialCSVButton.Location = New-Object System.Drawing.Size(($columnFour + $x_offset),($rowNine + (1 * $y_offset)))
$SaveSerialCSVButton.Size = New-Object System.Drawing.Size(75,23)
$SaveSerialCSVButton.Text = "Save Serial CSV"
$SaveSerialCSVButton.Add_Click({
    # Capture Input from form into variables
    $ISPF_PO = $objTextBoxISPF_PO.Text
    $Date = $objLabelDate.Text
    $Condition = $objComboBoxCondition.Text
    $Brand = $objComboBoxBrand.Text
    $BrandOther = $objTextBoxOther.Text
    $SerialNumber = $objTextBoxSerialNum.Text
    $Model = $objTextBoxModel.Text
    $FormFactor = $objComboBoxFormFactor.Text
    $CPUQty = $objTextBoxCPUQty.Text
    $CPUCores = $objTextBoxCPUCores.Text
    $HyperThreading = $objCheckBoxHyperThreading.Checked
    $CPUSpeed = $objTextBoxCPUSpeed.Text
    $CPUType = $objComboBoxCPUType.Text
    $BusSpeed = $objTextBoxBusSpeed.Text
    $CPUName = $objTextBoxCPUName.Text
    $MemorySize = $objComboBoxMemorySize.Text
    $MemoryRating = $objComboBoxMemoryRating.Text
    $MemoryType = $objComboBoxMemoryType.Text
    $MemorySpeed = $objComboBoxMemorySpeed.Text
    $Weight = $objTextBoxWeight.Text
    $HDDQty = $objTextBoxHDDQty.Text
    $HDDSize = $objTextBoxHDDSize.Text
    $HDDType = $objComboBoxHDDType.Text
    $HDDRPM = $objComboBoxHDDRPM.Text
    $HDDSerial = $objTextBoxHDDSerial.Text
    $Video = $objComboBoxVideo.Text
    $VideoModel = $objTextBoxVideoModel.Text
    $VideoRAM = $objTextBoxVideoRAM.Text
    $OpticalDrive = $objComboBoxOpticalDrive.Text
    $OtherDrivesNone = $objCheckBoxOtherDrivesNone.Checked
    $OtherDrivesFDD = $objCheckBoxOtherDrivesFDD.Checked
    $OtherDrivesTape = $objCheckBoxOtherDrivesTape.Checked
    $LCDSize = $objTextBoxLCDSize.Text
    $NetworkNone = $objCheckBoxNetworkNone.Checked
    $NetworkEthernet = $objCheckBoxNetworkEthernet.Checked
    $NetworkModem = $objCheckBoxNetworkModem.Checked
    $NetworkWifi = $objCheckBoxNetworkWifi.Checked
    $NetworkBluetooth = $objCheckBoxNetworkBluetooth.Checked
    $WindowsCOA = $objComboBoxWindowsCOA.Text
    $OSInstallNo = $objRadioButtonOSInstalledNo.Checked
    $OSInstallYes = $objRadioButtonOSInstalledYes.Checked
    $Notes = $objTextBoxNotes.Text
    $AccessoriesNone = $objCheckBoxAccessoriesNone.Checked
    $AccessoriesACAdapter = $objCheckBoxAccessoriesACAdapter.Checked
    $AccessoriesPowerCord = $objCheckBoxAccessoriesPowerCord.Checked
    $AccessoriesBattery = $objCheckBoxAccessoriesBattery.Checked
    $AccessoriesExtendedBattery = $objCheckBoxAccessoriesExtendedBattery.Checked
    $AccessoriesFingerprintReader = $objCheckBoxAccessoriesFingerprintReader.Checked
    $AccessoriesWebcam = $objCheckBoxAccessoriesWebcam.Checked
    $AccessoriesKeyboard = $objCheckBoxAccessoriesKeyboard.Checked
    $AccessoriesMouse = $objCheckBoxAccessoriesMouse.Checked
    $Damage = $objComboBoxDamage.Text
    $PortsUSB = $objTextBoxPortsUSB.Text
    $PortsEthernet = $objTextBoxPortsEthernet.Text
    $PortsModem = $objTextBoxPortsModem.Text
    $PortsVGA = $objTextBoxPortsVGA.Text
    $PortsDVI = $objTextBoxPortsDVI.Text
    $PortsSVideo = $objTextBoxPortsSVideo.Text
    $PortsPS2 = $objTextBoxPortsPS2.Text
    $PortsAudio = $objTextBoxPortsAudio.Text
    $PortseSATAp = $objTextBoxPortseSATAp.Text
    $PortsSerial = $objTextBoxPortsSerial.Text
    $PortsParallel = $objTextBoxPortsParallel.Text
    $PortsPCMCIA = $objTextBoxPortsPCMCIA.Text
    $PortsSDCard = $objTextBoxPortsSDCard.Text
    $PortsFirewire = $objTextBoxPortsFirewire.Text
    $PortseSATA = $objTextBoxPortseSATA.Text
    $PortsHDMI = $objTextBoxPortsHDMI.Text
    $PortsSCSI = $objTextBoxPortsSCSI.Text
    $PortsDisplayPort = $objTextBoxPortsDisplayPort.Text
    $Version = "TBD"
    $Tester = $objTextBoxTester.Text

    # Display variables
    Write-Host $ISPF_PO
    Write-Host $Date
    Write-Host $Condition
    Write-Host $Brand
    Write-Host $BrandOther
    Write-Host $SerialNumber
    Write-Host $Model
    Write-Host $FormFactor
    Write-Host $CPUQty
    Write-Host $CPUCores
    Write-Host $HyperThreading
    Write-Host $CPUSpeed
    Write-Host $CPUType
    Write-Host $BusSpeed
    Write-Host $CPUName
    Write-Host $MemorySize
    Write-Host $MemoryRating
    Write-Host $MemoryType
    Write-Host $MemorySpeed
    Write-Host $Weight
    Write-Host $HDDQty
    Write-Host $HDDSize
    Write-Host $HDDType
    Write-Host $HDDRPM
    Write-Host $HDDSerial
    Write-Host $Video
    Write-Host $VideoModel
    Write-Host $VideoRAM
    Write-Host $OpticalDrive
    Write-Host $OtherDrivesNone
    Write-Host $OtherDrivesFDD
    Write-Host $OtherDrivesTape
    Write-Host $LCDSize
    Write-Host $NetworkNone
    Write-Host $NetworkEthernet
    Write-Host $NetworkModem
    Write-Host $NetworkWifi
    Write-Host $NetworkBluetooth
    Write-Host $WindowsCOA
    Write-Host $OSInstallNo
    Write-Host $OSInstallYes
    Write-Host $Notes
    Write-Host $AccessoriesNone
    Write-Host $AccessoriesACAdapter
    Write-Host $AccessoriesPowerCord
    Write-Host $AccessoriesBattery
    Write-Host $AccessoriesExtendedBattery
    Write-Host $AccessoriesFingerprintReader
    Write-Host $AccessoriesWebcam
    Write-Host $AccessoriesKeyboard
    Write-Host $AccessoriesMouse
    Write-Host $Damage
    Write-Host $PortsUSB
    Write-Host $PortsEthernet
    Write-Host $PortsModem
    Write-Host $PortsVGA
    Write-Host $PortsDVI
    Write-Host $PortsSVideo
    Write-Host $PortsPS2
    Write-Host $PortsAudio
    Write-Host $PortseSATAp
    Write-Host $PortsSerial
    Write-Host $PortsParallel
    Write-Host $PortsPCMCIA
    Write-Host $PortsSDCard
    Write-Host $PortsFirewire
    Write-Host $PortseSATA
    Write-Host $PortsHDMI
    Write-Host $PortsSCSI
    Write-Host $PortsDisplayPort
    Write-Host $Version
    Write-Host $Tester

    $ISPF_PO + 
    ", " + 
    $Date +  
    ", " + 
    $Condition +
    ", " + 
    $Brand + 
    ", " + 
    $BrandOther + 
    ", " + 
    $SerialNumber + 
    ", " + 
    $Model + 
    ", " + 
    $FormFactor + 
    ", " + 
    $CPUQty + 
    ", " + 
    $CPUCores + 
    ", " + 
    $HyperThreading + 
    ", " + 
    $CPUSpeed + 
    ", " + 
    $CPUType + 
    ", " + 
    $BusSpeed + 
    ", " + 
    $CPUName + 
    ", " + 
    $MemorySize + 
    ", " + 
    $MemoryRating + 
    ", " + 
    $MemoryType + 
    ", " + 
    $MemorySpeed + 
    ", " + 
    $Weight + 
    ", " + 
    $HDDQty + 
    ", " + 
    $HDDSize + 
    ", " + 
    $HDDType + 
    ", " + 
    $HDDRPM + 
    ", " + 
    $HDDSerial + 
    ", " + 
    $Video + 
    ", " + 
    $VideoModel + 
    ", " + 
    $VideoRAM + 
    ", " + 
    $OpticalDrive + 
    ", " + 
    $OtherDrivesNone + 
    ", " + 
    $OtherDrivesFDD + 
    ", " + 
    $OtherDrivesTape + 
    ", " + 
    $LCDSize + 
    ", " + 
    $NetworkNone + 
    ", " + 
    $NetworkEthernet + 
    ", " + 
    $NetworkModem + 
    ", " + 
    $NetworkWifi + 
    ", " + 
    $NetworkBluetooth + 
    ", " + 
    $WindowsCOA + 
    ", " + 
    $OSInstallNo + 
    ", " + 
    $OSInstallYes + 
    ", " + 
    $Notes + 
    ", " + 
    $AccessoriesNone + 
    ", " + 
    $AccessoriesACAdapter + 
    ", " + 
    $AccessoriesPowerCord + 
    ", " + 
    $AccessoriesBattery + 
    ", " + 
    $AccessoriesExtendedBattery + 
    ", " + 
    $AccessoriesFingerprintReader + 
    ", " + 
    $AccessoriesWebcam + 
    ", " + 
    $AccessoriesKeyboard + 
    ", " + 
    $AccessoriesMouse + 
    ", " + 
    $Damage + 
    ", " + 
    $PortsUSB + 
    ", " + 
    $PortsEthernet + 
    ", " + 
    $PortsModem + 
    ", " + 
    $PortsVGA + 
    ", " + 
    $PortsDVI + 
    ", " + 
    $PortsSVideo + 
    ", " + 
    $PortsPS2 + 
    ", " + 
    $PortsAudio + 
    ", " + 
    $PortseSATAp + 
    ", " + 
    $PortsSerial + 
    ", " + 
    $PortsParallel + 
    ", " + 
    $PortsPCMCIA + 
    ", " + 
    $PortsSDCard + 
    ", " + 
    $PortsFirewire + 
    ", " + 
    $PortseSATA + 
    ", " + 
    $PortsHDMI + 
    ", " + 
    $PortsSCSI + 
    ", " + 
    $PortsDisplayPort + 
    ", " + 
    $Version + 
    ", " + 
    $Tester | Out-File -FilePath .\$SerialNumber.csv
    

    #Export-Csv -LiteralPath $WorkFile -NoTypeInformation -Encoding UTF8 Invoke-Item -Path $WorkFile
})
$objForm.Controls.Add($SaveSerialCSVButton)


#Title
$objLabelTitle = New-Object System.Windows.Forms.Label
$objLabelTitle.Location = New-Object System.Drawing.Size(350,15) 
$objLabelTitle.Size = New-Object System.Drawing.Size(300,25) 
$objLabelTitle.Text = "Computer Spec Sheet"
$objLabelTitle.Font = $TitleFont
$FontSize = $objLabelTitle.Font.Size
$objForm.Controls.Add($objLabelTitle) 


# Tester
$objTextBoxTester = New-Object System.Windows.Forms.TextBox 
$objTextBoxTester.Location = New-Object System.Drawing.Size(150,($rowOne + $y_offset)) 
$objTextBoxTester.Size = New-Object System.Drawing.Size(80,20) 
$objTextBoxTester.Font = $TextBoxFont
$objTextBoxTester.Text = "jnitz"
$objForm.Controls.Add($objTextBoxTester) 

$objGroupBoxTester = New-Object System.Windows.Forms.GroupBox
$objGroupBoxTester.Location = New-Object System.Drawing.Size(140,$rowOne)
$objGroupBoxTester.Size = New-Object System.Drawing.Size(100,45)
$objGroupBoxTester.Font = $GroupBoxFont
$objGroupBoxTester.Text = "Tester"
$objForm.Controls.Add($objGroupBoxTester)

# ISPF/PO
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
$CurrentDate = (Get-Date).ToString('MM/dd/yyyy')

$objLabelDate = New-Object System.Windows.Forms.Label
$objLabelDate.Location = New-Object System.Drawing.Size(($columnTwo + $x_offset),($rowTwo + $y_offset + 5)) 
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

foreach($item in $arrConditionComboValues){
    [void] $objComboBoxCondition.Items.Add($item)
}

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
$objLabelWeight.Font = $LabelFont
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

foreach($item in $arrBrandComboValues){
    [void] $objComboBoxBrand.Items.Add($item)
}

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

foreach($item in $arrFormFactorComboValues){
    [void] $objComboBoxFormFactor.Items.Add($item)
}

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
$objGroupBoxCPUQty.Size = New-Object System.Drawing.Size(65,45)
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
$objCheckBoxHyperThreading = New-Object System.Windows.Forms.CheckBox
$objCheckBoxHyperThreading.Location = New-Object System.Drawing.Size(($columnTwo + (7 * $x_offset)),($rowFive + (1.30 * $y_offset))) 
$objCheckBoxHyperThreading.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxHyperThreading.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxHyperThreading) 

$objLabelHyperThreading = New-Object System.Windows.Forms.Label
$objLabelHyperThreading.Location = New-Object System.Drawing.Size(($columnTwo + (8.75 * $x_offset)),($rowFive + $y_offset + 5)) 
$objLabelHyperThreading.Size = New-Object System.Drawing.Size(30,15) 
$objLabelHyperThreading.Text = "HT"
$objLabelHyperThreading.Font = $LabelFont
$objForm.Controls.Add($objLabelHyperThreading) 

# CPU Cores Group Box
$objGroupBoxCPUCores = New-Object System.Windows.Forms.GroupBox
$objGroupBoxCPUCores.Location = New-Object System.Drawing.Size($columnTwo,$rowFive)
$objGroupBoxCPUCores.Size = New-Object System.Drawing.Size(125,45)
$objGroupBoxCPUCores.Font = $GroupBoxFont
$objGroupBoxCPUCores.Text = "CPU Cores"
$objForm.Controls.Add($objGroupBoxCPUCores)


# CPU Speed Text Box
$objTextBoxCPUSpeed = New-Object System.Windows.Forms.TextBox 
$objTextBoxCPUSpeed.Location = New-Object System.Drawing.Size(($columnOne + $x_offset),($rowSix + $y_offset)) 
$objTextBoxCPUSpeed.Size = New-Object System.Drawing.Size(50,20) 
$objTextBoxCPUSpeed.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxCPUSpeed) 

$objLabelGHz = New-Object System.Windows.Forms.Label
$objLabelGHz.Location = New-Object System.Drawing.Size(($columnTwo - (4.75 * $x_offset)),($rowSix + (1.5 * $y_offset))) 
$objLabelGHz.Size = New-Object System.Drawing.Size(30,15) 
$objLabelGHz.Text = "GHz"
$objLabelGHz.Font = $LabelFont
$objForm.Controls.Add($objLabelGHz) 

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

foreach($item in $arrCPUTypeComboValues){
    [void] $objComboBoxCPUType.Items.Add($item)
}

$objForm.Controls.Add($objComboBoxCPUType) 

$objGroupBoxCPUType = New-Object System.Windows.Forms.GroupBox
$objGroupBoxCPUType.Location = New-Object System.Drawing.Size(($columnTwo + $x_offset),$rowSix)
$objGroupBoxCPUType.Size = New-Object System.Drawing.Size(200,45)
$objGroupBoxCPUType.Font = $GroupBoxFont
$objGroupBoxCPUType.Text = "CPU Type"
$objForm.Controls.Add($objGroupBoxCPUType)

# CPU Bus Speed Text Box
$objTextBoxBusSpeed = New-Object System.Windows.Forms.TextBox 
$objTextBoxBusSpeed.Location = New-Object System.Drawing.Size(($columnOne + $x_offset),($rowSeven + $y_offset)) 
$objTextBoxBusSpeed.Size = New-Object System.Drawing.Size(100,20) 
$objTextBoxBusSpeed.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxBusSpeed) 

$objGroupBoxBusSpeed = New-Object System.Windows.Forms.GroupBox
$objGroupBoxBusSpeed.Location = New-Object System.Drawing.Size($columnOne,$rowSeven)
$objGroupBoxBusSpeed.Size = New-Object System.Drawing.Size(120,45)
$objGroupBoxBusSpeed.Font = $GroupBoxFont
$objGroupBoxBusSpeed.Text = "Bus Speed"
$objForm.Controls.Add($objGroupBoxBusSpeed)


# CPU Name Text Box
$objTextBoxCPUName = New-Object System.Windows.Forms.TextBox 
$objTextBoxCPUName.Location = New-Object System.Drawing.Size(($columnThree + $x_offset),($rowSeven + $y_offset)) 
$objTextBoxCPUName.Size = New-Object System.Drawing.Size(100,20) 
$objTextBoxCPUName.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxCPUName) 

$objGroupBoxCPUName = New-Object System.Windows.Forms.GroupBox
$objGroupBoxCPUName.Location = New-Object System.Drawing.Size($columnThree,$rowSeven)
$objGroupBoxCPUName.Size = New-Object System.Drawing.Size(120,45)
$objGroupBoxCPUName.Font = $GroupBoxFont
$objGroupBoxCPUName.Text = "CPU Name"
$objForm.Controls.Add($objGroupBoxCPUName)


# Memory Size
$objComboBoxMemorySize = New-Object System.Windows.Forms.ComboBox
$objComboBoxMemorySize.Location = New-Object System.Drawing.Size(($columnOne + $x_offset),($rowEight + $y_offset))
$objComboBoxMemorySize.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxMemorySize.Font = $TextBoxFont

foreach($item in $arrMemorySizeComboValues){
    [void] $objComboBoxMemorySize.Items.Add($item)
}

$objForm.Controls.Add($objComboBoxMemorySize) 

$objGroupBoxMemorySize = New-Object System.Windows.Forms.GroupBox
$objGroupBoxMemorySize.Location = New-Object System.Drawing.Size($columnOne,$rowEight)
$objGroupBoxMemorySize.Size = New-Object System.Drawing.Size(120,45)
$objGroupBoxMemorySize.Font = $GroupBoxFont
$objGroupBoxMemorySize.Text = "Memory Size"
$objForm.Controls.Add($objGroupBoxMemorySize)

# Memory Type
$objComboBoxMemoryType = New-Object System.Windows.Forms.ComboBox
$objComboBoxMemoryType.Location = New-Object System.Drawing.Size(($columnThree + $x_offset),($rowEight + $y_offset))
$objComboBoxMemoryType.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxMemoryType.Font = $TextBoxFont

foreach($item in $arrMemoryTypeComboValues){
    [void] $objComboBoxMemoryType.Items.Add($item)
}

$objForm.Controls.Add($objComboBoxMemoryType) 

$objGroupBoxMemoryType = New-Object System.Windows.Forms.GroupBox
$objGroupBoxMemoryType.Location = New-Object System.Drawing.Size($columnThree,$rowEight)
$objGroupBoxMemoryType.Size = New-Object System.Drawing.Size(120,45)
$objGroupBoxMemoryType.Font = $GroupBoxFont
$objGroupBoxMemoryType.Text = "Memory Type"
$objForm.Controls.Add($objGroupBoxMemoryType)


# Memory Rating
$objComboBoxMemoryRating = New-Object System.Windows.Forms.ComboBox
$objComboBoxMemoryRating.Location = New-Object System.Drawing.Size(($columnOne + $x_offset),($rowNine + $y_offset))
$objComboBoxMemoryRating.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxMemoryRating.Font = $TextBoxFont

foreach($item in $arrMemoryRatingComboValues){
    [void] $objComboBoxMemoryRating.Items.Add($item)
}

$objForm.Controls.Add($objComboBoxMemoryRating) 

$objGroupBoxMemoryRating = New-Object System.Windows.Forms.GroupBox
$objGroupBoxMemoryRating.Location = New-Object System.Drawing.Size($columnOne,$rowNine)
$objGroupBoxMemoryRating.Size = New-Object System.Drawing.Size(120,45)
$objGroupBoxMemoryRating.Font = $GroupBoxFont
$objGroupBoxMemoryRating.Text = "Memory Rating"
$objForm.Controls.Add($objGroupBoxMemoryRating)


# Memory Speed
$objComboBoxMemorySpeed = New-Object System.Windows.Forms.ComboBox
$objComboBoxMemorySpeed.Location = New-Object System.Drawing.Size(($columnThree + $x_offset),($rowNine + $y_offset))
$objComboBoxMemorySpeed.Size = New-Object System.Drawing.Size(100,20)
$objComboBoxMemorySpeed.Font = $TextBoxFont

foreach($item in $arrMemorySpeedComboValues){
    [void] $objComboBoxMemorySpeed.Items.Add($item)
}

$objForm.Controls.Add($objComboBoxMemorySpeed) 

$objGroupBoxMemorySpeed = New-Object System.Windows.Forms.GroupBox
$objGroupBoxMemorySpeed.Location = New-Object System.Drawing.Size($columnThree,$rowNine)
$objGroupBoxMemorySpeed.Size = New-Object System.Drawing.Size(120,45)
$objGroupBoxMemorySpeed.Font = $GroupBoxFont
$objGroupBoxMemorySpeed.Text = "Memory Speed"
$objForm.Controls.Add($objGroupBoxMemorySpeed)

# HDD (5 Inputs) **************************************
# HDD Qty
$objTextBoxHDDQty = New-Object System.Windows.Forms.TextBox 
$objTextBoxHDDQty.Location = New-Object System.Drawing.Size(($columnFive + $x_offset),($rowTwo + $y_offset)) 
$objTextBoxHDDQty.Size = New-Object System.Drawing.Size(30,20) 
$objTextBoxHDDQty.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxHDDQty) 

$objGroupBoxHDDQty = New-Object System.Windows.Forms.GroupBox
$objGroupBoxHDDQty.Location = New-Object System.Drawing.Size($columnFive,$rowTwo)
$objGroupBoxHDDQty.Size = New-Object System.Drawing.Size(65,45)
$objGroupBoxHDDQty.Font = $GroupBoxFont
$objGroupBoxHDDQty.Text = "HDD Qty"
$objForm.Controls.Add($objGroupBoxHDDQty)

# HDD Size
$objTextBoxHDDSize = New-Object System.Windows.Forms.TextBox 
$objTextBoxHDDSize.Location = New-Object System.Drawing.Size(($columnSix + $x_offset),($rowTwo + $y_offset)) 
$objTextBoxHDDSize.Size = New-Object System.Drawing.Size(50,20) 
$objTextBoxHDDSize.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxHDDSize) 

$objGroupBoxHDDSize = New-Object System.Windows.Forms.GroupBox
$objGroupBoxHDDSize.Location = New-Object System.Drawing.Size($columnSix,$rowTwo)
$objGroupBoxHDDSize.Size = New-Object System.Drawing.Size(85,45)
$objGroupBoxHDDSize.Font = $GroupBoxFont
$objGroupBoxHDDSize.Text = "HDD Size"
$objForm.Controls.Add($objGroupBoxHDDSize)

# HDD Type
$objComboBoxHDDType = New-Object System.Windows.Forms.ComboBox
$objComboBoxHDDType.Location = New-Object System.Drawing.Size(($columnSeven + $x_offset),($rowTwo + $y_offset))
$objComboBoxHDDType.Size = New-Object System.Drawing.Size(70,20)
$objComboBoxHDDType.Font = $TextBoxFont

foreach($item in $arrHDDTypeComboValues){
    [void] $objComboBoxHDDType.Items.Add($item)
}

$objForm.Controls.Add($objComboBoxHDDType) 

$objGroupBoxHDDType = New-Object System.Windows.Forms.GroupBox
$objGroupBoxHDDType.Location = New-Object System.Drawing.Size($columnSeven,$rowTwo)
$objGroupBoxHDDType.Size = New-Object System.Drawing.Size(90,45)
$objGroupBoxHDDType.Font = $GroupBoxFont
$objGroupBoxHDDType.Text = "HDD Type"
$objForm.Controls.Add($objGroupBoxHDDType)

# HDD RPM
$objComboBoxHDDRPM = New-Object System.Windows.Forms.ComboBox
$objComboBoxHDDRPM.Location = New-Object System.Drawing.Size(($columnEight + $x_offset),($rowTwo + $y_offset))
$objComboBoxHDDRPM.Size = New-Object System.Drawing.Size(70,20)
$objComboBoxHDDRPM.Font = $TextBoxFont

foreach($item in $arrHDDRPMComboValues){
    [void] $objComboBoxHDDRPM.Items.Add($item)
}

$objForm.Controls.Add($objComboBoxHDDRPM) 

$objGroupBoxHDDRPM = New-Object System.Windows.Forms.GroupBox
$objGroupBoxHDDRPM.Location = New-Object System.Drawing.Size($columnEight,$rowTwo)
$objGroupBoxHDDRPM.Size = New-Object System.Drawing.Size(90,45)
$objGroupBoxHDDRPM.Font = $GroupBoxFont
$objGroupBoxHDDRPM.Text = "HDD RPM"
$objForm.Controls.Add($objGroupBoxHDDRPM)

# HDD Serial
$objTextBoxHDDSerial = New-Object System.Windows.Forms.TextBox 
$objTextBoxHDDSerial.Location = New-Object System.Drawing.Size(($columnNine + $x_offset),($rowTwo + $y_offset)) 
$objTextBoxHDDSerial.Size = New-Object System.Drawing.Size(100,20) 
$objTextBoxHDDSerial.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxHDDSerial) 

$objGroupBoxHDDSerial = New-Object System.Windows.Forms.GroupBox
$objGroupBoxHDDSerial.Location = New-Object System.Drawing.Size($columnNine,$rowTwo)
$objGroupBoxHDDSerial.Size = New-Object System.Drawing.Size(120,45)
$objGroupBoxHDDSerial.Font = $GroupBoxFont
$objGroupBoxHDDSerial.Text = "HDD Serial"
$objForm.Controls.Add($objGroupBoxHDDSerial)

# Video (3 Inputs) ************************************
# Video Combo Box
$objComboBoxVideo = New-Object System.Windows.Forms.ComboBox
$objComboBoxVideo.Location = New-Object System.Drawing.Size(($columnFour + $x_offset),($rowThree + $y_offset))
$objComboBoxVideo.Size = New-Object System.Drawing.Size(70,20)
$objComboBoxVideo.Font = $TextBoxFont

foreach($item in $arrVideoComboValues){
    [void] $objComboBoxVideo.Items.Add($item)
}

$objForm.Controls.Add($objComboBoxVideo) 

$objGroupBoxVideo = New-Object System.Windows.Forms.GroupBox
$objGroupBoxVideo.Location = New-Object System.Drawing.Size($columnFour,$rowThree)
$objGroupBoxVideo.Size = New-Object System.Drawing.Size(90,45)
$objGroupBoxVideo.Font = $GroupBoxFont
$objGroupBoxVideo.Text = "Video"
$objForm.Controls.Add($objGroupBoxVideo)

# Video Model Text Box
$objTextBoxVideoModel = New-Object System.Windows.Forms.TextBox 
$objTextBoxVideoModel.Location = New-Object System.Drawing.Size(($columnFive + (2.5 * $x_offset)),($rowThree + $y_offset)) 
$objTextBoxVideoModel.Size = New-Object System.Drawing.Size(125,20) 
$objTextBoxVideoModel.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxVideoModel) 

$objGroupBoxVideoModel = New-Object System.Windows.Forms.GroupBox
$objGroupBoxVideoModel.Location = New-Object System.Drawing.Size(($columnFive + (1.5 * $x_offset)),$rowThree)
$objGroupBoxVideoModel.Size = New-Object System.Drawing.Size(145,45)
$objGroupBoxVideoModel.Font = $GroupBoxFont
$objGroupBoxVideoModel.Text = "Video Model"
$objForm.Controls.Add($objGroupBoxVideoModel)

# Video RAM Text Box
$objTextBoxVideoRAM = New-Object System.Windows.Forms.TextBox 
$objTextBoxVideoRAM.Location = New-Object System.Drawing.Size(($columnSeven + $x_offset),($rowThree + $y_offset)) 
$objTextBoxVideoRAM.Size = New-Object System.Drawing.Size(40,20) 
$objTextBoxVideoRAM.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxVideoRAM) 

$objGroupBoxVideoRAM = New-Object System.Windows.Forms.GroupBox
$objGroupBoxVideoRAM.Location = New-Object System.Drawing.Size($columnSeven,$rowThree)
$objGroupBoxVideoRAM.Size = New-Object System.Drawing.Size(110,45)
$objGroupBoxVideoRAM.Font = $GroupBoxFont
$objGroupBoxVideoRAM.Text = "Video RAM"
$objForm.Controls.Add($objGroupBoxVideoRAM)


# Optical Drive Combo Box *****************************
$objComboBoxOpticalDrive = New-Object System.Windows.Forms.ComboBox
$objComboBoxOpticalDrive.Location = New-Object System.Drawing.Size(($columnFour + $x_offset),($rowFour + $y_offset))
$objComboBoxOpticalDrive.Size = New-Object System.Drawing.Size(90,20)
$objComboBoxOpticalDrive.Font = $TextBoxFont

foreach($item in $arrOpticalDriveComboValues){
    [void] $objComboBoxOpticalDrive.Items.Add($item)
}

$objForm.Controls.Add($objComboBoxOpticalDrive) 

$objGroupBoxOpticalDrive = New-Object System.Windows.Forms.GroupBox
$objGroupBoxOpticalDrive.Location = New-Object System.Drawing.Size($columnFour,$rowFour)
$objGroupBoxOpticalDrive.Size = New-Object System.Drawing.Size(110,45)
$objGroupBoxOpticalDrive.Font = $GroupBoxFont
$objGroupBoxOpticalDrive.Text = "Optical Drive"
$objForm.Controls.Add($objGroupBoxOpticalDrive)


# Other Drives Check Boxes ****************************
# None (Default)
$objCheckBoxOtherDrivesNone = New-Object System.Windows.Forms.CheckBox
$objCheckBoxOtherDrivesNone.Location = New-Object System.Drawing.Size(($columnFive + (4 * $x_offset)),($rowFour + (1.30 * $y_offset))) 
$objCheckBoxOtherDrivesNone.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxOtherDrivesNone.Font = $LabelFont
$objCheckBoxOtherDrivesNone.Checked = $hashOtherDrivesCheckValues["None"]
$objForm.Controls.Add($objCheckBoxOtherDrivesNone) 

$objLabelOtherDrivesNone = New-Object System.Windows.Forms.Label
$objLabelOtherDrivesNone.Location = New-Object System.Drawing.Size(($columnFive + (5.5 * $x_offset)),($rowFour + $y_offset + 5)) 
$objLabelOtherDrivesNone.Size = New-Object System.Drawing.Size(30,15) 
$objLabelOtherDrivesNone.Text = "None"
$objLabelOtherDrivesNone.Font = $LabelFont
$objForm.Controls.Add($objLabelOtherDrivesNone) 

# FDD
$objCheckBoxOtherDrivesFDD = New-Object System.Windows.Forms.CheckBox
$objCheckBoxOtherDrivesFDD.Location = New-Object System.Drawing.Size(($columnFive + (8.5 * $x_offset)),($rowFour + (1.30 * $y_offset))) 
$objCheckBoxOtherDrivesFDD.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxOtherDrivesFDD.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxOtherDrivesFDD) 

$objLabelOtherDrivesFDD = New-Object System.Windows.Forms.Label
$objLabelOtherDrivesFDD.Location = New-Object System.Drawing.Size(($columnFive + (10 * $x_offset)),($rowFour + $y_offset + 5)) 
$objLabelOtherDrivesFDD.Size = New-Object System.Drawing.Size(25,15) 
$objLabelOtherDrivesFDD.Text = "FDD"
$objLabelOtherDrivesFDD.Font = $LabelFont
$objForm.Controls.Add($objLabelOtherDrivesFDD) 

# Tape
$objCheckBoxOtherDrivesTape = New-Object System.Windows.Forms.CheckBox
$objCheckBoxOtherDrivesTape.Location = New-Object System.Drawing.Size(($columnFive + (12.5 * $x_offset)),($rowFour + (1.30 * $y_offset))) 
$objCheckBoxOtherDrivesTape.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxOtherDrivesTape.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxOtherDrivesTape) 

$objLabelOtherDrivesTape = New-Object System.Windows.Forms.Label
$objLabelOtherDrivesTape.Location = New-Object System.Drawing.Size(($columnFive + (14 * $x_offset)),($rowFour + $y_offset + 5)) 
$objLabelOtherDrivesTape.Size = New-Object System.Drawing.Size(30,15) 
$objLabelOtherDrivesTape.Text = "Tape"
$objLabelOtherDrivesTape.Font = $LabelFont
$objForm.Controls.Add($objLabelOtherDrivesTape) 

# Other Drives Group Box
$objGroupBoxOtherDrives = New-Object System.Windows.Forms.GroupBox
$objGroupBoxOtherDrives.Location = New-Object System.Drawing.Size(($columnFive + (3.5 * $x_offset)),$rowFour)
$objGroupBoxOtherDrives.Size = New-Object System.Drawing.Size(140,45)
$objGroupBoxOtherDrives.Font = $GroupBoxFont
$objGroupBoxOtherDrives.Text = "Other Drives"
$objForm.Controls.Add($objGroupBoxOtherDrives)


# LCD Size
$objTextBoxLCDSize = New-Object System.Windows.Forms.TextBox 
$objTextBoxLCDSize.Location = New-Object System.Drawing.Size(($columnSeven + (3 * $x_offset)),($rowFour + $y_offset)) 
$objTextBoxLCDSize.Size = New-Object System.Drawing.Size(40,20) 
$objTextBoxLCDSize.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxLCDSize) 

$objGroupBoxLCDSize = New-Object System.Windows.Forms.GroupBox
$objGroupBoxLCDSize.Location = New-Object System.Drawing.Size(($columnSeven + (2 * $x_offset)),$rowFour)
$objGroupBoxLCDSize.Size = New-Object System.Drawing.Size(90,45)
$objGroupBoxLCDSize.Font = $GroupBoxFont
$objGroupBoxLCDSize.Text = "LCD Size"
$objForm.Controls.Add($objGroupBoxLCDSize)


# Network Check Boxes *********************************
# None (Default)
$objCheckBoxNetworkNone = New-Object System.Windows.Forms.CheckBox
$objCheckBoxNetworkNone.Location = New-Object System.Drawing.Size(($columnFour + (1 * $x_offset)),($rowFive + (1.30 * $y_offset))) 
$objCheckBoxNetworkNone.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxNetworkNone.Font = $LabelFont
$objCheckBoxNetworkNone.Checked = $hashNetworkCheckValues["None"]
$objForm.Controls.Add($objCheckBoxNetworkNone) 


$objLabelNetworkNone = New-Object System.Windows.Forms.Label
$objLabelNetworkNone.Location = New-Object System.Drawing.Size(($columnFour + (2.5 * $x_offset)),($rowFive + $y_offset + 5)) 
$objLabelNetworkNone.Size = New-Object System.Drawing.Size(30,15) 
$objLabelNetworkNone.Text = "None"
$objLabelNetworkNone.Font = $LabelFont
$objForm.Controls.Add($objLabelNetworkNone) 

# Ethernet
$objCheckBoxNetworkEthernet = New-Object System.Windows.Forms.CheckBox
$objCheckBoxNetworkEthernet.Location = New-Object System.Drawing.Size(($columnFour + (5.5 * $x_offset)),($rowFive + (1.30 * $y_offset))) 
$objCheckBoxNetworkEthernet.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxNetworkEthernet.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxNetworkEthernet) 

$objLabelNetworkEthernet = New-Object System.Windows.Forms.Label
$objLabelNetworkEthernet.Location = New-Object System.Drawing.Size(($columnFour + (7 * $x_offset)),($rowFive + $y_offset + 5)) 
$objLabelNetworkEthernet.Size = New-Object System.Drawing.Size(40,15) 
$objLabelNetworkEthernet.Text = "Ethernet"
$objLabelNetworkEthernet.Font = $LabelFont
$objForm.Controls.Add($objLabelNetworkEthernet) 

# Modem
$objCheckBoxNetworkModem = New-Object System.Windows.Forms.CheckBox
$objCheckBoxNetworkModem.Location = New-Object System.Drawing.Size(($columnFour + (11.2 * $x_offset)),($rowFive + (1.30 * $y_offset))) 
$objCheckBoxNetworkModem.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxNetworkModem.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxNetworkModem) 

$objLabelNetworkModem = New-Object System.Windows.Forms.Label
$objLabelNetworkModem.Location = New-Object System.Drawing.Size(($columnFour + (12.75 * $x_offset)),($rowFive + $y_offset + 5)) 
$objLabelNetworkModem.Size = New-Object System.Drawing.Size(37,15) 
$objLabelNetworkModem.Text = "Modem"
$objLabelNetworkModem.Font = $LabelFont
$objForm.Controls.Add($objLabelNetworkModem) 

# Wifi
$objCheckBoxNetworkWifi = New-Object System.Windows.Forms.CheckBox
$objCheckBoxNetworkWifi.Location = New-Object System.Drawing.Size(($columnFive + (8 * $x_offset)),($rowFive + (1.30 * $y_offset))) 
$objCheckBoxNetworkWifi.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxNetworkWifi.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxNetworkWifi) 

$objLabelNetworkWifi = New-Object System.Windows.Forms.Label
$objLabelNetworkWifi.Location = New-Object System.Drawing.Size(($columnFive + (9.5 * $x_offset)),($rowFive + $y_offset + 5)) 
$objLabelNetworkWifi.Size = New-Object System.Drawing.Size(20,15) 
$objLabelNetworkWifi.Text = "Wifi"
$objLabelNetworkWifi.Font = $LabelFont
$objForm.Controls.Add($objLabelNetworkWifi) 

# BT (Bluetooth)
$objCheckBoxNetworkBluetooth = New-Object System.Windows.Forms.CheckBox
$objCheckBoxNetworkBluetooth.Location = New-Object System.Drawing.Size(($columnFive + (12 * $x_offset)),($rowFive + (1.30 * $y_offset))) 
$objCheckBoxNetworkBluetooth.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxNetworkBluetooth.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxNetworkBluetooth) 

$objLabelNetworkBluetooth = New-Object System.Windows.Forms.Label
$objLabelNetworkBluetooth.Location = New-Object System.Drawing.Size(($columnFive + (13.5 * $x_offset)),($rowFive + $y_offset + 5)) 
$objLabelNetworkBluetooth.Size = New-Object System.Drawing.Size(20,15) 
$objLabelNetworkBluetooth.Text = "BT"
$objLabelNetworkBluetooth.Font = $LabelFont
$objForm.Controls.Add($objLabelNetworkBluetooth) 


# Network Group Box
$objGroupBoxNetwork = New-Object System.Windows.Forms.GroupBox
$objGroupBoxNetwork.Location = New-Object System.Drawing.Size($columnFour,$rowFive)
$objGroupBoxNetwork.Size = New-Object System.Drawing.Size(245,45)
$objGroupBoxNetwork.Font = $GroupBoxFont
$objGroupBoxNetwork.Text = "Network"
$objForm.Controls.Add($objGroupBoxNetwork)


# COA Combo Box ***************************************
$objComboBoxWindowsCOA = New-Object System.Windows.Forms.ComboBox
$objComboBoxWindowsCOA.Location = New-Object System.Drawing.Size(($columnFour + $x_offset),($rowSix + $y_offset))
$objComboBoxWindowsCOA.Size = New-Object System.Drawing.Size(130,20)
$objComboBoxWindowsCOA.Font = $TextBoxFont

foreach($item in $arrWindowsCOAComboValues){
    [void] $objComboBoxWindowsCOA.Items.Add($item)
}

$objForm.Controls.Add($objComboBoxWindowsCOA) 

$objGroupBoxWindowsCOA = New-Object System.Windows.Forms.GroupBox
$objGroupBoxWindowsCOA.Location = New-Object System.Drawing.Size($columnFour,$rowSix)
$objGroupBoxWindowsCOA.Size = New-Object System.Drawing.Size(150,45)
$objGroupBoxWindowsCOA.Font = $GroupBoxFont
$objGroupBoxWindowsCOA.Text = "Windows COA"
$objForm.Controls.Add($objGroupBoxWindowsCOA)


# OS Installed Radio Button ***************************
# No / Yes
$objRadioButtonOSInstalledNo = New-Object System.Windows.Forms.RadioButton
$objRadioButtonOSInstalledNo.Location = New-Object System.Drawing.Size(($columnSix + $x_offset),($rowSix + (1.5 * $y_offset)))
$objRadioButtonOSInstalledNo.Size = New-Object System.Drawing.Size(34,15)
$objRadioButtonOSInstalledNo.Font = $LabelFont
$objRadioButtonOSInstalledNo.Checked = $true 
$objRadioButtonOSInstalledNo.Text = "No"

$objRadioButtonOSInstalledYes = New-Object System.Windows.Forms.RadioButton
$objRadioButtonOSInstalledYes.Location = New-Object System.Drawing.Size(($columnSix + (4.4 * $x_offset)),($rowSix + (1.5 * $y_offset)))
$objRadioButtonOSInstalledYes.Size = New-Object System.Drawing.Size(37,15)
$objRadioButtonOSInstalledYes.Font = $LabelFont
$objRadioButtonOSInstalledYes.Checked = $false 
$objRadioButtonOSInstalledYes.Text = "Yes"

$objForm.Controls.Add($objRadioButtonOSInstalledNo)
$objForm.Controls.Add($objRadioButtonOSInstalledYes)

$objGroupBoxOSInstall = New-Object System.Windows.Forms.GroupBox
$objGroupBoxOSInstall.Location = New-Object System.Drawing.Size($columnSix,$rowSix)
$objGroupBoxOSInstall.Size = New-Object System.Drawing.Size(85,45)
$objGroupBoxOSInstall.Font = $GroupBoxFont
$objGroupBoxOSInstall.Text = "OS Install"
$objForm.Controls.Add($objGroupBoxOSInstall)


# Notes Multiline Text Box **************************************
$objTextBoxNotes = New-Object System.Windows.Forms.TextBox 
$objTextBoxNotes.Location = New-Object System.Drawing.Size(($columnFour + $x_offset),($rowSeven + $y_offset)) 
$objTextBoxNotes.Size = New-Object System.Drawing.Size(225,70) 
$objTextBoxNotes.Font = $TextBoxFont
$objTextBoxNotes.Multiline = $true
$objForm.Controls.Add($objTextBoxNotes) 

$objGroupBoxNotes = New-Object System.Windows.Forms.GroupBox
$objGroupBoxNotes.Location = New-Object System.Drawing.Size($columnFour,$rowSeven)
$objGroupBoxNotes.Size = New-Object System.Drawing.Size(245,95)
$objGroupBoxNotes.Font = $GroupBoxFont
$objGroupBoxNotes.Text = "Notes"
$objForm.Controls.Add($objGroupBoxNotes)


# Damage Combo Box *************************************
$objComboBoxDamage = New-Object System.Windows.Forms.ComboBox
$objComboBoxDamage.Location = New-Object System.Drawing.Size(($columnSix + $x_offset),($rowNine + $y_offset))
$objComboBoxDamage.Size = New-Object System.Drawing.Size(90,20)
$objComboBoxDamage.Font = $TextBoxFont

foreach($item in $arrDamageComboValues){
    [void] $objComboBoxDamage.Items.Add($item)
}

$objForm.Controls.Add($objComboBoxDamage) 

$objGroupBoxDamage = New-Object System.Windows.Forms.GroupBox
$objGroupBoxDamage.Location = New-Object System.Drawing.Size($columnSix,$rowNine)
$objGroupBoxDamage.Size = New-Object System.Drawing.Size(110,45)
$objGroupBoxDamage.Font = $GroupBoxFont
$objGroupBoxDamage.Text = "Damage"
$objForm.Controls.Add($objGroupBoxDamage)


# Accessories Check Boxes****************************
# None
$objCheckBoxAccessoriesNone = New-Object System.Windows.Forms.CheckBox
$objCheckBoxAccessoriesNone.Location = New-Object System.Drawing.Size(($columnSeven + $x_offset),($rowFive + (1.30 * $y_offset))) 
$objCheckBoxAccessoriesNone.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxAccessoriesNone.Font = $LabelFont
$objCheckBoxAccessoriesNone.Checked = $hashAccessoriesCheckValues["None"]
$objForm.Controls.Add($objCheckBoxAccessoriesNone) 

$objLabelAccessoriesNone = New-Object System.Windows.Forms.Label
$objLabelAccessoriesNone.Location = New-Object System.Drawing.Size(($columnSeven + (2.5 * $x_offset)),($rowFive + (1.30 * $y_offset))) 
$objLabelAccessoriesNone.Size = New-Object System.Drawing.Size(30,15) 
$objLabelAccessoriesNone.Text = "None"
$objLabelAccessoriesNone.Font = $LabelFont
$objForm.Controls.Add($objLabelAccessoriesNone) 

# AC Adapter
$objCheckBoxAccessoriesACAdapter = New-Object System.Windows.Forms.CheckBox
$objCheckBoxAccessoriesACAdapter.Location = New-Object System.Drawing.Size(($columnSeven + $x_offset),($rowFive + (2.50 * $y_offset))) 
$objCheckBoxAccessoriesACAdapter.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxAccessoriesACAdapter.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxAccessoriesACAdapter) 

$objLabelAccessoriesACAdapter = New-Object System.Windows.Forms.Label
$objLabelAccessoriesACAdapter.Location = New-Object System.Drawing.Size(($columnSeven + (2.5 * $x_offset)),($rowFive + (2.50 * $y_offset))) 
$objLabelAccessoriesACAdapter.Size = New-Object System.Drawing.Size(70,15) 
$objLabelAccessoriesACAdapter.Text = "AC Adapter"
$objLabelAccessoriesACAdapter.Font = $LabelFont
$objForm.Controls.Add($objLabelAccessoriesACAdapter) 

# Power Cord
$objCheckBoxAccessoriesPowerCord = New-Object System.Windows.Forms.CheckBox
$objCheckBoxAccessoriesPowerCord.Location = New-Object System.Drawing.Size(($columnSeven + $x_offset),($rowFive + (3.7 * $y_offset))) 
$objCheckBoxAccessoriesPowerCord.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxAccessoriesPowerCord.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxAccessoriesPowerCord) 

$objLabelAccessoriesPowerCord = New-Object System.Windows.Forms.Label
$objLabelAccessoriesPowerCord.Location = New-Object System.Drawing.Size(($columnSeven + (2.5 * $x_offset)),($rowFive + (3.7 * $y_offset))) 
$objLabelAccessoriesPowerCord.Size = New-Object System.Drawing.Size(70,15) 
$objLabelAccessoriesPowerCord.Text = "Power Cord"
$objLabelAccessoriesPowerCord.Font = $LabelFont
$objForm.Controls.Add($objLabelAccessoriesPowerCord) 

# Battery
$objCheckBoxAccessoriesBattery = New-Object System.Windows.Forms.CheckBox
$objCheckBoxAccessoriesBattery.Location = New-Object System.Drawing.Size(($columnSeven + $x_offset),($rowFive + (4.9 * $y_offset))) 
$objCheckBoxAccessoriesBattery.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxAccessoriesBattery.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxAccessoriesBattery) 
$objLabelAccessoriesBattery = New-Object System.Windows.Forms.Label
$objLabelAccessoriesBattery.Location = New-Object System.Drawing.Size(($columnSeven + (2.5 * $x_offset)),($rowFive + (4.9 * $y_offset))) 
$objLabelAccessoriesBattery.Size = New-Object System.Drawing.Size(70,15) 
$objLabelAccessoriesBattery.Text = "Battery"
$objLabelAccessoriesBattery.Font = $LabelFont
$objForm.Controls.Add($objLabelAccessoriesBattery) 

# Extended Battery
$objCheckBoxAccessoriesExtendedBattery = New-Object System.Windows.Forms.CheckBox
$objCheckBoxAccessoriesExtendedBattery.Location = New-Object System.Drawing.Size(($columnSeven + $x_offset),($rowFive + (6.1 * $y_offset))) 
$objCheckBoxAccessoriesExtendedBattery.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxAccessoriesExtendedBattery.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxAccessoriesExtendedBattery) 

$objLabelAccessoriesExtendedBattery = New-Object System.Windows.Forms.Label
$objLabelAccessoriesExtendedBattery.Location = New-Object System.Drawing.Size(($columnSeven + (2.5 * $x_offset)),($rowFive + (6.1 * $y_offset))) 
$objLabelAccessoriesExtendedBattery.Size = New-Object System.Drawing.Size(80,15) 
$objLabelAccessoriesExtendedBattery.Text = "Extended Battery"
$objLabelAccessoriesExtendedBattery.Font = $LabelFont
$objForm.Controls.Add($objLabelAccessoriesExtendedBattery) 

# Fingerprint Reader
$objCheckBoxAccessoriesFingerprintReader = New-Object System.Windows.Forms.CheckBox
$objCheckBoxAccessoriesFingerprintReader.Location = New-Object System.Drawing.Size(($columnSeven + $x_offset),($rowFive + (7.30 * $y_offset))) 
$objCheckBoxAccessoriesFingerprintReader.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxAccessoriesFingerprintReader.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxAccessoriesFingerprintReader) 

$objLabelAccessoriesFingerprintReader = New-Object System.Windows.Forms.Label
$objLabelAccessoriesFingerprintReader.Location = New-Object System.Drawing.Size(($columnSeven + (2.5 * $x_offset)),($rowFive + (7.30 * $y_offset))) 
$objLabelAccessoriesFingerprintReader.Size = New-Object System.Drawing.Size(80,30) 
$objLabelAccessoriesFingerprintReader.Text = "Fingerprint Reader"
$objLabelAccessoriesFingerprintReader.Font = $LabelFont
$objForm.Controls.Add($objLabelAccessoriesFingerprintReader) 

# Web Cam
$objCheckBoxAccessoriesWebcam = New-Object System.Windows.Forms.CheckBox
$objCheckBoxAccessoriesWebcam.Location = New-Object System.Drawing.Size(($columnSeven + $x_offset),($rowFive + (9.25 * $y_offset))) 
$objCheckBoxAccessoriesWebcam.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxAccessoriesWebcam.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxAccessoriesWebcam) 

$objLabelAccessoriesWebcam = New-Object System.Windows.Forms.Label
$objLabelAccessoriesWebcam.Location = New-Object System.Drawing.Size(($columnSeven + (2.5 * $x_offset)),($rowFive + (9.25 * $y_offset))) 
$objLabelAccessoriesWebcam.Size = New-Object System.Drawing.Size(70,15) 
$objLabelAccessoriesWebcam.Text = "Webcam"
$objLabelAccessoriesWebcam.Font = $LabelFont
$objForm.Controls.Add($objLabelAccessoriesWebcam) 

# Keyboard
$objCheckBoxAccessoriesKeyboard = New-Object System.Windows.Forms.CheckBox
$objCheckBoxAccessoriesKeyboard.Location = New-Object System.Drawing.Size(($columnSeven + $x_offset),($rowFive + (10.45 * $y_offset))) 
$objCheckBoxAccessoriesKeyboard.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxAccessoriesKeyboard.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxAccessoriesKeyboard) 

$objLabelAccessoriesKeyboard = New-Object System.Windows.Forms.Label
$objLabelAccessoriesKeyboard.Location = New-Object System.Drawing.Size(($columnSeven + (2.5 * $x_offset)),($rowFive + (10.45 * $y_offset))) 
$objLabelAccessoriesKeyboard.Size = New-Object System.Drawing.Size(70,15) 
$objLabelAccessoriesKeyboard.Text = "Keyboard"
$objLabelAccessoriesKeyboard.Font = $LabelFont
$objForm.Controls.Add($objLabelAccessoriesKeyboard) 

# Mouse
$objCheckBoxAccessoriesMouse = New-Object System.Windows.Forms.CheckBox
$objCheckBoxAccessoriesMouse.Location = New-Object System.Drawing.Size(($columnSeven + $x_offset),($rowFive + (11.65 * $y_offset))) 
$objCheckBoxAccessoriesMouse.Size = New-Object System.Drawing.Size(14,14)
$objCheckBoxAccessoriesMouse.Font = $LabelFont
$objForm.Controls.Add($objCheckBoxAccessoriesMouse) 

$objLabelAccessoriesMouse = New-Object System.Windows.Forms.Label
$objLabelAccessoriesMouse.Location = New-Object System.Drawing.Size(($columnSeven + (2.5 * $x_offset)),($rowFive + (11.65 * $y_offset))) 
$objLabelAccessoriesMouse.Size = New-Object System.Drawing.Size(70,15) 
$objLabelAccessoriesMouse.Text = "Mouse"
$objLabelAccessoriesMouse.Font = $LabelFont
$objForm.Controls.Add($objLabelAccessoriesMouse) 


$objGroupBoxAccessories = New-Object System.Windows.Forms.GroupBox
$objGroupBoxAccessories.Location = New-Object System.Drawing.Size($columnSeven,$rowFive)
$objGroupBoxAccessories.Size = New-Object System.Drawing.Size(110,195)
$objGroupBoxAccessories.Font = $GroupBoxFont
$objGroupBoxAccessories.Text = "Accessories"
$objForm.Controls.Add($objGroupBoxAccessories)



<#*******************************************************
# Ports Check Boxes
$objLabelHyperThreading = New-Object System.Windows.Forms.Label
$objLabelHyperThreading.Location = New-Object System.Drawing.Size($columnTwo,$rowSix) 
$objLabelHyperThreading.Size = New-Object System.Drawing.Size(100,15) 
$objLabelHyperThreading.Text = "HT"
$objLabelHyperThreading.Font = $TextBoxFont
$objForm.Controls.Add($objLabelHyperThreading) 

$objCheckBoxHyperThreading = New-Object System.Windows.Forms.CheckBox
$objCheckBoxHyperThreading.Location = New-Object System.Drawing.Size($columnTwo,($rowSix + 15)) 
$objForm.Controls.Add($objCheckBoxHyperThreading) 



#>

# Ports: USB
$objLabelPortsUSB = New-Object System.Windows.Forms.Label
$objLabelPortsUSB.Location = New-Object System.Drawing.Size($portColumnOne,($portRowOne + 5))
$objLabelPortsUSB.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsUSB.Text = "USB"
$objLabelPortsUSB.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsUSB) 

$objTextBoxPortsUSB = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsUSB.Location = New-Object System.Drawing.Size($portColumnTwo,$portRowOne) 
$objTextBoxPortsUSB.Size = New-Object System.Drawing.Size(30,20) 
$objTextBoxPortsUSB.Text = $hashPortsTextValues["USB"]
$objTextBoxPortsUSB.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsUSB) 

# Ports: Ethernet
$objLabelPortsEthernet = New-Object System.Windows.Forms.Label
$objLabelPortsEthernet.Location = New-Object System.Drawing.Size($portColumnOne,($portRowTwo + 5))
$objLabelPortsEthernet.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsEthernet.Text = "Ethernet"
$objLabelPortsEthernet.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsEthernet) 

$objTextBoxPortsEthernet = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsEthernet.Location = New-Object System.Drawing.Size($portColumnTwo,$portRowTwo) 
$objTextBoxPortsEthernet.Size = New-Object System.Drawing.Size(30,20) 
$objTextBoxPortsEthernet.Text = $hashPortsTextValues["Ethernet"]
$objTextBoxPortsEthernet.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsEthernet) 

# Ports: Modem
$objLabelPortsModem = New-Object System.Windows.Forms.Label
$objLabelPortsModem.Location = New-Object System.Drawing.Size($portColumnOne,($portRowThree + 5))
$objLabelPortsModem.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsModem.Text = "Modem"
$objLabelPortsModem.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsModem) 

$objTextBoxPortsModem = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsModem.Location = New-Object System.Drawing.Size($portColumnTwo,$portRowThree) 
$objTextBoxPortsModem.Size = New-Object System.Drawing.Size(30,20) 
$objTextBoxPortsModem.Text = $hashPortsTextValues["Modem"]
$objTextBoxPortsModem.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsModem) 

# Ports: VGA
$objLabelPortsVGA = New-Object System.Windows.Forms.Label
$objLabelPortsVGA.Location = New-Object System.Drawing.Size($portColumnOne,($portRowFour + 5))
$objLabelPortsVGA.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsVGA.Text = "VGA"
$objLabelPortsVGA.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsVGA) 

$objTextBoxPortsVGA = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsVGA.Location = New-Object System.Drawing.Size($portColumnTwo,$portRowFour) 
$objTextBoxPortsVGA.Size = New-Object System.Drawing.Size(30,20) 
$objTextBoxPortsVGA.Text = $hashPortsTextValues["VGA"]
$objTextBoxPortsVGA.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsVGA) 

# Ports: DVI
$objLabelPortsDVI = New-Object System.Windows.Forms.Label
$objLabelPortsDVI.Location = New-Object System.Drawing.Size($portColumnOne,($portRowFive + 5))
$objLabelPortsDVI.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsDVI.Text = "DVI"
$objLabelPortsDVI.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsDVI) 

$objTextBoxPortsDVI = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsDVI.Location = New-Object System.Drawing.Size($portColumnTwo,$portRowFive) 
$objTextBoxPortsDVI.Size = New-Object System.Drawing.Size(30,20) 
$objTextBoxPortsDVI.Text = $hashPortsTextValues["DVI"]
$objTextBoxPortsDVI.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsDVI) 

# Ports: S-Video
$objLabelPortsSVideo = New-Object System.Windows.Forms.Label
$objLabelPortsSVideo.Location = New-Object System.Drawing.Size($portColumnOne,($portRowSix + 5))
$objLabelPortsSVideo.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsSVideo.Text = "S-Video"
$objLabelPortsSVideo.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsSVideo) 

$objTextBoxPortsSVideo = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsSVideo.Location = New-Object System.Drawing.Size($portColumnTwo,$portRowSix) 
$objTextBoxPortsSVideo.Size = New-Object System.Drawing.Size(30,20) 
$objTextBoxPortsSVideo.Text = $hashPortsTextValues["SVideo"]
$objTextBoxPortsSVideo.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsSVideo) 

# Ports: PS/2
$objLabelPortsPS2 = New-Object System.Windows.Forms.Label
$objLabelPortsPS2.Location = New-Object System.Drawing.Size($portColumnOne,($portRowSeven + 5))
$objLabelPortsPS2.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsPS2.Text = "PS/2"
$objLabelPortsPS2.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsPS2) 

$objTextBoxPortsPS2 = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsPS2.Location = New-Object System.Drawing.Size($portColumnTwo,$portRowSeven) 
$objTextBoxPortsPS2.Size = New-Object System.Drawing.Size(30,20) 
$objTextBoxPortsPS2.Text = $hashPortsTextValues["PS2"]
$objTextBoxPortsPS2.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsPS2) 

# Ports: Audio
$objLabelPortsAudio = New-Object System.Windows.Forms.Label
$objLabelPortsAudio.Location = New-Object System.Drawing.Size($portColumnOne,($portRowEight + 5))
$objLabelPortsAudio.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsAudio.Text = "Audio"
$objLabelPortsAudio.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsAudio) 

$objTextBoxPortsAudio = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsAudio.Location = New-Object System.Drawing.Size($portColumnTwo,$portRowEight) 
$objTextBoxPortsAudio.Size = New-Object System.Drawing.Size(30,20) 
$objTextBoxPortsAudio.Text = $hashPortsTextValues["Audio"]
$objTextBoxPortsAudio.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsAudio) 

# Ports: eSATAp
$objLabelPortseSATAp = New-Object System.Windows.Forms.Label
$objLabelPortseSATAp.Location = New-Object System.Drawing.Size($portColumnOne,($portRowNine + 5))
$objLabelPortseSATAp.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortseSATAp.Text = "eSATAp"
$objLabelPortseSATAp.Font = $LabelFont
$objForm.Controls.Add($objLabelPortseSATAp) 

$objTextBoxPortseSATAp = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortseSATAp.Location = New-Object System.Drawing.Size($portColumnTwo,$portRowNine) 
$objTextBoxPortseSATAp.Size = New-Object System.Drawing.Size(30,20) 
$objTextBoxPortseSATAp.Text = $hashPortsTextValues["eSATAp"]
$objTextBoxPortseSATAp.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortseSATAp) 

# Column Two
# Ports: Serial
$objLabelPortsSerial = New-Object System.Windows.Forms.Label
$objLabelPortsSerial.Location = New-Object System.Drawing.Size($portColumnThree,($portRowOne + 5))
$objLabelPortsSerial.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsSerial.Text = "Serial"
$objLabelPortsSerial.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsSerial) 

$objTextBoxPortsSerial = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsSerial.Location = New-Object System.Drawing.Size($portColumnFour,$portRowOne) 
$objTextBoxPortsSerial.Size = New-Object System.Drawing.Size(30,20)
$objTextBoxPortsSerial.Text = $hashPortsTextValues["Serial"]
$objTextBoxPortsSerial.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsSerial) 

# Ports: Parallel
$objLabelPortsParallel = New-Object System.Windows.Forms.Label
$objLabelPortsParallel.Location = New-Object System.Drawing.Size($portColumnThree,($portRowTwo + 5))
$objLabelPortsParallel.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsParallel.Text = "Parallel"
$objLabelPortsParallel.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsParallel) 

$objTextBoxPortsParallel = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsParallel.Location = New-Object System.Drawing.Size($portColumnFour,$portRowTwo) 
$objTextBoxPortsParallel.Size = New-Object System.Drawing.Size(30,20)
$objTextBoxPortsParallel.Text = $hashPortsTextValues["Parallel"]
$objTextBoxPortsParallel.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsParallel) 

# Ports: PCMCIA
$objLabelPortsPCMCIA = New-Object System.Windows.Forms.Label
$objLabelPortsPCMCIA.Location = New-Object System.Drawing.Size($portColumnThree,($portRowThree + 5))
$objLabelPortsPCMCIA.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsPCMCIA.Text = "PCMCIA"
$objLabelPortsPCMCIA.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsPCMCIA) 

$objTextBoxPortsPCMCIA = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsPCMCIA.Location = New-Object System.Drawing.Size($portColumnFour,$portRowThree) 
$objTextBoxPortsPCMCIA.Size = New-Object System.Drawing.Size(30,20)
$objTextBoxPortsPCMCIA.Text = $hashPortsTextValues["PCMCIA"]
$objTextBoxPortsPCMCIA.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsPCMCIA) 

# Ports: SD Card
$objLabelPortsSDCard = New-Object System.Windows.Forms.Label
$objLabelPortsSDCard.Location = New-Object System.Drawing.Size($portColumnThree,($portRowFour + 5))
$objLabelPortsSDCard.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsSDCard.Text = "SD Card"
$objLabelPortsSDCard.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsSDCard) 

$objTextBoxPortsSDCard = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsSDCard.Location = New-Object System.Drawing.Size($portColumnFour,$portRowFour) 
$objTextBoxPortsSDCard.Size = New-Object System.Drawing.Size(30,20)
$objTextBoxPortsSDCard.Text = $hashPortsTextValues["SDCard"]
$objTextBoxPortsSDCard.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsSDCard) 

# Ports: Firewire
$objLabelPortsFirewire = New-Object System.Windows.Forms.Label
$objLabelPortsFirewire.Location = New-Object System.Drawing.Size($portColumnThree,($portRowFive + 5))
$objLabelPortsFirewire.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsFirewire.Text = "Firewire"
$objLabelPortsFirewire.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsFirewire) 

$objTextBoxPortsFirewire = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsFirewire.Location = New-Object System.Drawing.Size($portColumnFour,$portRowFive) 
$objTextBoxPortsFirewire.Size = New-Object System.Drawing.Size(30,20)
$objTextBoxPortsFirewire.Text = $hashPortsTextValues["Firewire"]
$objTextBoxPortsFirewire.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsFirewire) 

# Ports: eSATA
$objLabelPortseSATA = New-Object System.Windows.Forms.Label
$objLabelPortseSATA.Location = New-Object System.Drawing.Size($portColumnThree,($portRowSix + 5))
$objLabelPortseSATA.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortseSATA.Text = "eSATA"
$objLabelPortseSATA.Font = $LabelFont
$objForm.Controls.Add($objLabelPortseSATA) 

$objTextBoxPortseSATA = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortseSATA.Location = New-Object System.Drawing.Size($portColumnFour,$portRowSix) 
$objTextBoxPortseSATA.Size = New-Object System.Drawing.Size(30,20)
$objTextBoxPortseSATA.Text = $hashPortsTextValues["eSATA"]
$objTextBoxPortseSATA.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortseSATA) 

# Ports: HDMI
$objLabelPortsHDMI = New-Object System.Windows.Forms.Label
$objLabelPortsHDMI.Location = New-Object System.Drawing.Size($portColumnThree,($portRowSeven + 5))
$objLabelPortsHDMI.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsHDMI.Text = "HDMI"
$objLabelPortsHDMI.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsHDMI) 

$objTextBoxPortsHDMI = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsHDMI.Location = New-Object System.Drawing.Size($portColumnFour,$portRowSeven) 
$objTextBoxPortsHDMI.Size = New-Object System.Drawing.Size(30,20)
$objTextBoxPortsHDMI.Text = $hashPortsTextValues["HDMI"]
$objTextBoxPortsHDMI.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsHDMI) 

# Ports: SCSI
$objLabelPortsSCSI = New-Object System.Windows.Forms.Label
$objLabelPortsSCSI.Location = New-Object System.Drawing.Size($portColumnThree,($portRowEight + 5))
$objLabelPortsSCSI.Size = New-Object System.Drawing.Size(50,15) 
$objLabelPortsSCSI.Text = "SCSI"
$objLabelPortsSCSI.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsSCSI) 

$objTextBoxPortsSCSI = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsSCSI.Location = New-Object System.Drawing.Size($portColumnFour,$portRowEight) 
$objTextBoxPortsSCSI.Size = New-Object System.Drawing.Size(30,20)
$objTextBoxPortsSCSI.Text = $hashPortsTextValues["SCSI"]
$objTextBoxPortsSCSI.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsSCSI) 

# Ports: Display Port
$objLabelPortsDisplayPort = New-Object System.Windows.Forms.Label
$objLabelPortsDisplayPort.Location = New-Object System.Drawing.Size($portColumnThree,($portRowNine + 5))
$objLabelPortsDisplayPort.Size = New-Object System.Drawing.Size(60,15) 
$objLabelPortsDisplayPort.Text = "Display Port"
$objLabelPortsDisplayPort.Font = $LabelFont
$objForm.Controls.Add($objLabelPortsDisplayPort) 

$objTextBoxPortsDisplayPort = New-Object System.Windows.Forms.TextBox 
$objTextBoxPortsDisplayPort.Location = New-Object System.Drawing.Size($portColumnFour,$portRowNine) 
$objTextBoxPortsDisplayPort.Size = New-Object System.Drawing.Size(30,20)
$objTextBoxPortsDisplayPort.Text = $hashPortsTextValues["DisplayPort"]
$objTextBoxPortsDisplayPort.Font = $TextBoxFont
$objForm.Controls.Add($objTextBoxPortsDisplayPort) 


$objGroupBoxPorts = New-Object System.Windows.Forms.GroupBox
$objGroupBoxPorts.Location = New-Object System.Drawing.Size(($columnEight + (2 * $x_offset)),$rowThree)
$objGroupBoxPorts.Size = New-Object System.Drawing.Size(200,295)
$objGroupBoxPorts.Font = $GroupBoxFont
$objGroupBoxPorts.Text = "Ports"
$objForm.Controls.Add($objGroupBoxPorts)


# Display Dialog Box
$objForm.Topmost = $True

$objForm.Add_Shown({$objForm.Activate()})
[void] $objForm.ShowDialog()

if ($objComboBoxBrand.Text -eq "Other:") {
    $objTextBoxOther.Text = "Testing"
    $Brand = $objTextBoxOther.Text
} else {
    $Brand = $objComboBoxBrand.Text
}

# Capture Input from form into variables
$ISPF_PO = $objTextBoxISPF_PO.Text
$Date = $objLabelDate.Text
$Condition = $objComboBoxCondition.Text
$Brand = $objComboBoxBrand.Text
$BrandOther = $objTextBoxOther.Text
$SerialNumber = $objTextBoxSerialNum.Text
$Model = $objTextBoxModel.Text
$FormFactor = $objComboBoxFormFactor.Text
$CPUQty = $objTextBoxCPUQty.Text
$CPUCores = $objTextBoxCPUCores.Text
$HyperThreading = $objCheckBoxHyperThreading.Checked
$CPUSpeed = $objTextBoxCPUSpeed.Text
$CPUType = $objComboBoxCPUType.Text
$BusSpeed = $objTextBoxBusSpeed.Text
$CPUName = $objTextBoxCPUName.Text
$MemorySize = $objComboBoxMemorySize.Text
$MemoryRating = $objComboBoxMemoryRating.Text
$MemoryType = $objComboBoxMemoryType.Text
$MemorySpeed = $objComboBoxMemorySpeed.Text
$Weight = $objTextBoxWeight.Text
$HDDQty = $objTextBoxHDDQty.Text
$HDDSize = $objTextBoxHDDSize.Text
$HDDType = $objComboBoxHDDType.Text
$HDDRPM = $objComboBoxHDDRPM.Text
$HDDSerial = $objTextBoxHDDSerial.Text
$Video = $objComboBoxVideo.Text
$VideoModel = $objTextBoxVideoModel.Text
$VideoRAM = $objTextBoxVideoRAM.Text
$OpticalDrive = $objComboBoxOpticalDrive.Text
$OtherDrivesNone = $objCheckBoxOtherDrivesNone.Checked
$OtherDrivesFDD = $objCheckBoxOtherDrivesFDD.Checked
$OtherDrivesTape = $objCheckBoxOtherDrivesTape.Checked
$LCDSize = $objTextBoxLCDSize.Text
$NetworkNone = $objCheckBoxNetworkNone.Checked
$NetworkEthernet = $objCheckBoxNetworkEthernet.Checked
$NetworkModem = $objCheckBoxNetworkModem.Checked
$NetworkWifi = $objCheckBoxNetworkWifi.Checked
$NetworkBluetooth = $objCheckBoxNetworkBluetooth.Checked
$WindowsCOA = $objComboBoxWindowsCOA.Text
$OSInstallNo = $objRadioButtonOSInstalledNo.Checked
$OSInstallYes = $objRadioButtonOSInstalledYes.Checked
$Notes = $objTextBoxNotes.Text
$AccessoriesNone = $objCheckBoxAccessoriesNone.Checked
$AccessoriesACAdapter = $objCheckBoxAccessoriesACAdapter.Checked
$AccessoriesPowerCord = $objCheckBoxAccessoriesPowerCord.Checked
$AccessoriesBattery = $objCheckBoxAccessoriesBattery.Checked
$AccessoriesExtendedBattery = $objCheckBoxAccessoriesExtendedBattery.Checked
$AccessoriesFingerprintReader = $objCheckBoxAccessoriesFingerprintReader.Checked
$AccessoriesWebcam = $objCheckBoxAccessoriesWebcam.Checked
$AccessoriesKeyboard = $objCheckBoxAccessoriesKeyboard.Checked
$AccessoriesMouse = $objCheckBoxAccessoriesMouse.Checked
$Damage = $objComboBoxDamage.Text
$PortsUSB = $objTextBoxPortsUSB.Text
$PortsEthernet = $objTextBoxPortsEthernet.Text
$PortsModem = $objTextBoxPortsModem.Text
$PortsVGA = $objTextBoxPortsVGA.Text
$PortsDVI = $objTextBoxPortsDVI.Text
$PortsSVideo = $objTextBoxPortsSVideo.Text
$PortsPS2 = $objTextBoxPortsPS2.Text
$PortsAudio = $objTextBoxPortsAudio.Text
$PortseSATAp = $objTextBoxPortseSATAp.Text
$PortsSerial = $objTextBoxPortsSerial.Text
$PortsParallel = $objTextBoxPortsParallel.Text
$PortsPCMCIA = $objTextBoxPortsPCMCIA.Text
$PortsSDCard = $objTextBoxPortsSDCard.Text
$PortsFirewire = $objTextBoxPortsFirewire.Text
$PortseSATA = $objTextBoxPortseSATA.Text
$PortsHDMI = $objTextBoxPortsHDMI.Text
$PortsSCSI = $objTextBoxPortsSCSI.Text
$PortsDisplayPort = $objTextBoxPortsDisplayPort.Text
$Version = "TBD"
$Tester = $objTextBoxTester.Text

#[void] $objForm.Cursor

#[void] $objForm.ResetText()

#[void] $objForm.Deactivate

#[void] $objForm.Mouse...




# Display variables
$ISPF_PO
$Date
$Condition
$Brand
$BrandOther
$SerialNumber
$Model
$FormFactor
$CPUQty
$CPUCores
$HyperThreading
$CPUSpeed
$CPUType
$BusSpeed
$CPUName
$MemorySize
$MemoryRating
$MemoryType
$MemorySpeed
$Weight
$HDDQty
$HDDSize
$HDDType
$HDDRPM
$HDDSerial
$Video
$VideoModel
$VideoRAM
$OpticalDrive
$OtherDrivesNone
$OtherDrivesFDD
$OtherDrivesTape
$LCDSize
$NetworkNone
$NetworkEthernet
$NetworkModem
$NetworkWifi
$NetworkBluetooth
$WindowsCOA
$OSInstallNo
$OSInstallYes
$Notes
$AccessoriesNone
$AccessoriesACAdapter
$AccessoriesPowerCord
$AccessoriesBattery
$AccessoriesExtendedBattery
$AccessoriesFingerprintReader
$AccessoriesWebcam
$AccessoriesKeyboard
$AccessoriesMouse
$Damage
$PortsUSB
$PortsEthernet
$PortsModem
$PortsVGA
$PortsDVI
$PortsSVideo
$PortsPS2
$PortsAudio
$PortseSATAp
$PortsSerial
$PortsParallel
$PortsPCMCIA
$PortsSDCard
$PortsFirewire
$PortseSATA
$PortsHDMI
$PortsSCSI
$PortsDisplayPort
$Version
$Tester


# Desktop.Dell.OptiPlex.780.csv
# v1.1.2,64842-2-5681,4/22/2015,0,0,6B1KJN1,OptiPlex 780,0,1,2,2.93,1066 MHz FSB,12,2,5,12,1,250,1,3,1,3,3,,N/A,12,8,1,0,1,0,0,0,4,0,1,1,0,0,0,1,0,0,1,E7500,False


# Laptop.Dell.Latitude.E6420.csv
# v1.1.2,66434-2-5000,5/8/2015,0,0,CK0X1Q1,Latitude E6420,3,1,2,2.3,5 GT/s DMI,17,2,8,13,1,250,1,5,5,3,0,Screen: Grade B Matte | Includes AC adapter,14,13,3,1,0,1,0,0,0,1,1,0,0,1,1,0,0,1,0,0,2410M,True

# 8B9TLS1.csv
# 71921-3-4324, 5/17/2016, Boots to BIOS, Dell, N/A, 8B9TLS1, PowerEdge R510, Server, 2, 6, True, 2.53, Xeon, 5.86 GT/s Intel QPI, E5649, 32gb, PC3-10600, DDR3, 1333MHz, 29, 0, N/A, , , N/A, Onboard, N/A, N/A, None, True, False, False, N/A, False, True, False, False, False, None, True, False, Memory: 8x 4GB, True, False, False, False, False, False, False, False, False, Grade B, 4, 2, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, v1.2.5, cniermeyer

# C4939W1.csv
# 71460-2-5000, 5/17/2016, Boots to BIOS, Other:, Dell, C4939W1, Latitude E6230, Laptop, 1, 2, True, 2.6, Core i5, 5 GT/s Intel QPI, 3320M, 4gb, PC3-12800, DDR3, 1600MHz, 4, 1, 320, SATA, 7200, W0Q77GSL, Mobile, Intel HD Graphics, 64, None, True, False, False, 12.5, False, True, False, True, False, Win 7 Pro, True, False, Screen: Grade B Matte | Slight scratches on top of unit, False, False, False, True, False, False, True, False, False, Grade B, 2, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, v1.2.4


<#
# 8B9TLS1.csv
# 71921-3-4324, 5/17/2016, Boots to BIOS, Dell, N/A, 8B9TLS1, PowerEdge R510, Server, 
2, 6, True, 2.53, Xeon, 5.86 GT/s Intel QPI, E5649, 
32gb, PC3-10600, DDR3, 1333MHz, 29, 
0, N/A, , , N/A, 
Onboard, N/A, N/A, None, 
True, False, False, N/A, 
False, True, False, False, False, 
None, True, False, 
Memory: 8x 4GB, 
True, False, False, False, False, 
False, False, False, False, 
Grade B, 
4, 2, 0, 2, 0, 0, 0, 0, 0, 
1, 0, 0, 0, 0, 0, 0, 0, 0, 
v1.2.5, cniermeyer

# C4939W1.csv
# 71460-2-5000, 5/17/2016, Boots to BIOS, Other:, Dell, C4939W1, Latitude E6230, Laptop, 
1, 2, True, 2.6, Core i5, 5 GT/s Intel QPI, 3320M, 
4gb, PC3-12800, DDR3, 1600MHz, 4, 
1, 320, SATA, 7200, W0Q77GSL, 
Mobile, Intel HD Graphics, 64, None, 
True, False, False, 12.5, 
False, True, False, True, False, 
Win 7 Pro, True, False, 
Screen: Grade B Matte | Slight scratches on top of unit, 
False, False, False, True, False, 
False, True, False, False, 
Grade B, 
2, 1, 0, 1, 0, 0, 0, 1, 1, 
0, 0, 0, 1, 0, 0, 1, 0, 0, 
v1.2.4
#>

<#
$ISPF_PO, $Date, $Condition, $Brand, $BrandOther, $SerialNumber, $Model, $FormFactor, 
$CPUQty, $CPUCores, $HyperThreading, $CPUSpeed, $CPUType, $BusSpeed, $CPUName, 
$MemorySize, $MemoryRating, $MemoryType, $MemorySpeed, $Weight, 
$HDDQty, $HDDSize, $HDDType, $HDDRPM, $HDDSerial, 
$Video, $VideoModel, $VideoRAM, $OpticalDrive, 
$OtherDrivesNone, $OtherDrivesFDD, $OtherDrivesTape, $LCDSize, 
$NetworkNone, $NetworkEthernet, $NetworkModem, $NetworkWifi, $NetworkBluetooth,
$WindowsCOA, $OSInstallNo, $OSInstallYes, 
$Notes, 
$AccessoriesNone, $AccessoriesACAdapter, $AccessoriesPowerCord, $AccessoriesBattery, $AccessoriesExtendedBattery, 
$AccessoriesFingerprintReader, $AccessoriesWebcam, $AccessoriesKeyboard, $AccessoriesMouse
$Damage
$PortsUSB, $PortsEthernet, $PortsModem, $PortsVGA, $PortsDVI, $PortsSVideo, $PortsPS2, $PortsAudio, $PortseSATAp,
$PortsSerial, $PortsParallel, $PortsPCMCIA, $PortsSDCard, $PortsFirewire, $PortseSATA, $PortsHDMI, $PortsSCSI, $PortsDisplayPort
$Version, $Tester
#>
