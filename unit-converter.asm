

.data

###################################### Variables ######################################

newLine:                .asciiz "\n\n"
name1:			        .asciiz	"\n\t\t Program Created By : Muhammad Qasim, Muhammad Kashif and Muhammad Mohsin"
line1:			        .asciiz "\n\t\t ------------------------------------------------------------------------" 
name2:			        .asciiz	"\n\t\t\t          Unit - Converter"
line2:			        .asciiz	"\n\t\t\t   ******************************"
Select:                 .asciiz "\n\t\t========== Select Option for conversion ==========\n
                                0: Exit \n
                                1: Length \n
                                2: Temperature \n
                                3: Weight \n
                                4: Area \n
                                5: Volume\n"

lengthOption:           .asciiz "\n\n\t\t========== Finding Length ==========\n
                                0: Jump to Main Condition \n
                                1: Convert Meter to millimeter \n
                                2: Convert Millimeter to meter \n
                                3: Convert Centimeter to meter \n
                                4: Convert Centimeter to Kilometer \n
                                5: Convert Meter to mile \n
                                6: Convert Mile to meter \n
                                7: Convert Meter to centimeter \n
                                8: Convert Kilometer to centimeter \n"

temperatureOption:      .asciiz "\n\n\t\t========== Finding Temperature ==========\n
                                0: Jump to Main Condition \n
                                1: Convert Celsius to kelvin \n
                                2: Convert Celsius to Fahrenheit \n
                                3: Convert Kelvin to Celsius \n
                                4: Convert Fahrenheit to Celsius \n"

weightOption:           .asciiz "\n\n\t\t========== Finding Weight ==========\n
                                0: Jump to Main Condition \n
                                1: Convert Gram to Milligram \n
                                2: Convert Gram to Kilogram \n
                                3: Convert Kilogram to Metric Ton \n
                                4: Convert Milligram to Gram \n
                                5: Convert Metric Ton to Kilogram \n"

areaOption:             .asciiz "\n\n\t\t========== Finding Area ==========\n
                                0: Jump to Main Condition \n
                                1: Convert CentimeterSquare to MillimeterSquare \n
                                2: Convert CentimeterSquare to MeterSquare \n
                                3: Convert MeterSquare to CentimeterSquare \n
                                4: Convert MeterSquare to KilometerSquare \n
                                5: Convert MillimeterSquare to CentimeterSquare \n
                                6: Convert KilometerSquare to MeterSquare \n"

volumeOption:           .asciiz "\n\n\t\t========== Finding Volume ==========\n
                                0: Jump to Main Condition \n
                                1: Convert CubicFeet to CubicMeter \n
                                2: Convert CubicMeter to CubicFeet \n
                                3: Convert CubicMeter to CubicInch \n
                                4: Convert CubicMeter to Gallon \n
                                5: Convert CubicInch to CubicMeter \n
                                6: Convert Gallon to CubicMeter \n"

select_option:          .asciiz "\n\t\tEnter Options no: "
input_m:                .asciiz "\n\t\tEnter length in Meter: "
input_millm:            .asciiz "\n\t\tEnter length in Millimeter: "
input_centm:            .asciiz "\n\t\tEnter length in Centimeter: "
input_mile:             .asciiz "\n\t\tEnter length in Mile: "
input_km:               .asciiz "\n\t\tEnter length in Kilometer: "
result_millimeter:      .asciiz "\t\tLength in millimeter is: "
result_centimeter:      .asciiz "\t\tLength in centimeter is: "
result_meter:           .asciiz "\t\tLength in meter is: "
result_kilometer:       .asciiz "\t\tLength in kilometer is: "
result_mile:            .asciiz "\t\tLength in mile is: "
input_cel:              .asciiz "\n\t\tEnter temperature in Celsius: "
input_kel:              .asciiz "\n\t\tEnter temperature in Kelvin: "
input_fah:              .asciiz "\n\t\tEnter temperature in Fahrenheit: "
input_gm:               .asciiz "\n\t\tEnter weight in Gram: "
input_kg:               .asciiz "\n\t\tEnter weight in Kilogram: "
input_mg:               .asciiz "\n\t\tEnter weight in Milligram: "
input_mton:             .asciiz "\n\t\tEnter weight in Metric Ton: "
input_cmsquare:         .asciiz "\n\t\tEnter Area in CentimeterSquare: "
input_msquare:          .asciiz "\n\t\tEnter Area in MeterSquare: "
input_mmsqaure:         .asciiz "\n\t\tEnter Area in MillimeterSquare: "
input_kmsqaure:         .asciiz "\n\t\tEnter Area in KilometerSquare: "
input_cf:               .asciiz "\n\t\tEnter volume in cubicFeet: "
input_cm:               .asciiz "\n\t\tEnter volume in cubicMeter: "
input_ci:               .asciiz "\n\t\tEnter volume in cubicInch: "
input_gallon:           .asciiz "\n\t\tEnter volume in gallon: "
result_cubicmeter:      .asciiz "\t\tVolume in cubicMeter: "
result_cubicfeet:       .asciiz "\t\tVolume in cubicFeet: "
result_cubicinch:       .asciiz "\t\tVolume in cubicInch: "
result_gallon:          .asciiz "\t\tVolume in gallon: "
result_mmsquare:        .asciiz "\t\tArea in Millimeter Square: "
result_msquare:         .asciiz "\t\tArea in Meter Square: "
result_csquare:         .asciiz "\t\tArea in Centimeter Square: "
result_kmsquare:        .asciiz "\t\tArea in kilometer Square: "
result_Kalvein:         .asciiz "\t\tTemperature in Kalvein is: "
result_Celcius:         .asciiz "\t\tTemperature in Celcius  is: "
result_Fahrenheit:      .asciiz "\t\tTemperature in Fahreheit  is: "
result_milligm:         .asciiz "\t\tWeight in Milligram  is: "
result_gm:              .asciiz "\t\tWeight in Gram  is: "
result_kgm:             .asciiz "\t\tWeight in Kilogram  is: "
result_m_ton:           .asciiz "\t\tWeight in MetricTon  is: "
exit:			        .asciiz	"\n\t\t\t           Program Exited"
endDesign:              .asciiz "\n\t\t\t   ******************************"

################################# End of Declaring variables #################################

.text
main:

    # Initializing registers
    li 	$t0, 0
	li 	$t1, 0
	li 	$t2, 0
	li 	$t3, 0
	li 	$t4, 0
	li 	$t5, 0
	li 	$t6, 0
	li 	$t7, 0

################################# Shahskay Starts here #################################
    li $v0, 4
    la $a0, newLine
    syscall

    li $v0, 4
	la $a0, line1
	syscall

    li $v0, 4
	la $a0, name1
	syscall

    li $v0, 4
	la $a0, line1
	syscall

    li $v0, 4
    la $a0, newLine
    syscall

    li $v0, 4
	la $a0, line2
	syscall

    li $v0, 4
	la $a0, name2
	syscall

    li $v0, 4
	la $a0, line2
	syscall

    li $v0, 4
    la $a0, newLine
    syscall

################################# Shahskay End here #################################

    optionSelect:
        li $v0, 4
        la $a0, Select
        syscall

        # Ask user to input
        li $v0, 4
        la $a0, select_option
        syscall

        # Taking input from user for options
        li $v0, 5
        syscall
        move $t0, $v0

    mainCondition:
        bgt $t0, 5, end
        beq $t0, 0, end
        beq $t0, 1, forLength
        beq $t0, 2, forTemperature
        beq $t0, 3, forWeight
        beq $t0, 4, forArea
        beq $t0, 5, forVolume
        b mainCondition


####################################### Length Function Begin #######################################
    forLength:

        li $v0, 4
        la $a0, lengthOption
        syscall

        # Ask user to input
        li $v0, 4
        la $a0, select_option
        syscall

        # Taking input from user for options
        li $v0, 5
        syscall
        move $t0, $v0

        lengthCondition:
            beq $t0, 0, optionSelect
            beq $t0, 1, m_to_millimeter
            beq $t0, 2, mm_to_meter
            beq $t0, 3, cm_to_meter
            beq $t0, 4, cm_to_kilometer
            beq $t0, 5, m_to_miles
            beq $t0, 6, m_to_meter
            beq $t0, 7, m_to_centimeter
            beq $t0, 8, km_to_centimeter

        m_to_meter:
            # Printing length message
            li $v0, 4
            la $a0, input_mile
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Mile_to_Meter function
            jal mile_to_m

            # Printing length message
            li $v0, 4
            la $a0, result_meter
            syscall

            li $v0, 1
            move $a0, $v1
            syscall

        b forLength

        m_to_miles:
            # Printing length message
            li $v0, 4
            la $a0, input_meter
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Meter to mile function
            jal m_to_mile

            # Printing length message
            li $v0, 4
            la $a0, result_mile
            syscall

            li $v0, 1
            move $a0, $v1
            syscall

        b forLength

        cm_to_kilometer:
            # Printing length message
            li $v0, 4
            la $a0, input_centm
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Millimeter_to_Meter function
            jal cm_to_km

            # Printing length message
            li $v0, 4
            la $a0, result_kilometer
            syscall

            li $v0, 1
            move $a0, $v1
            syscall

        b forLength

        cm_to_meter:
            # Printing length message
            li $v0, 4
            la $a0, input_centm
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Millimeter_to_Meter function
            jal cm_to_m

            # Printing length message
            li $v0, 4
            la $a0, result_meter
            syscall

            li $v0, 1
            move $a0, $v1
            syscall

        b forLength
        

        m_to_millimeter:
            # Printing length message
            li $v0, 4
            la $a0, input_m
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Millimeter_to_Meter function
            jal meter_to_millimeter

            # Printing length message
            li $v0, 4
            la $a0, result_millimeter
            syscall

            li $v0, 1
            move $a0, $v1
            syscall

        b forLength

        mm_to_meter:
            # Printing length message
            li $v0, 4
            la $a0, input_m
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Millimeter_to_Meter function
            jal meter_to_mm

            # Printing length message
            li $v0, 4
            la $a0, result_millimeter
            syscall

            li $v0, 1
            move $a0, $v1
            syscall

        b forLength

        m_to_centimeter:
            # Printing length message
            li $v0, 4
            la $a0, input_m
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Meter_to_centimeter function
            jal meter_to_centimeter

            # Printing length message
            li $v0, 4
            la $a0, result_centimeter
            syscall

            # Printing output 
            li $v0, 1
            move $a0, $v1
            syscall

        b forLength

        km_to_centimeter:
            # Printing length message
            li $v0, 4
            la $a0, input_m
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Kilometer_to_centimeter function
            jal km_to_cm

            # Printing length message
            li $v0, 4
            la $a0, result_centimeter
            syscall

            # Printing output 
            li $v0, 1
            move $a0, $v1
            syscall

        b forLength

####################################### Length Function End #######################################

####################################### Temperature Function Begin #######################################

    forTemperature:
        li $v0, 4
        la $a0, temperatureOption
        syscall

        # Ask user to input
        li $v0, 4
        la $a0, select_option
        syscall

        # Taking input from user for options
        li $v0, 5
        syscall
        move $t0, $v0

        tempCondition:
            beq $t0, 0, optionSelect
            beq $t0, 1, c_to_kel
            beq $t0, 2, c_to_fah
            beq $t0, 3, kel_to_c
            beq $t0, 4, fah_to_c

        c_to_kel:
            # Printing length message
            li $v0, 4
            la $a0, input_cel
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Celcius_to_Kalvein function
            jal Cel_to_Kal

            # Printing length message
            li $v0, 4
            la $a0, result_Kalvein
            syscall

            # Printing output 
            li $v0, 1
            move $a0, $v1
            syscall

        b forTemperature

        c_to_fah:
            # Printing length message
            li $v0, 4
            la $a0, input_cel
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Celcius_to_Fahrenheit function 
            jal Cel_to_Fah

            # Printing output statement
            li $v0,4
            la $a0,result_Fahrenheit
            syscall

            # Printing Result
            li $v0, 1
            move $a0,$v1
            syscall

        b forTemperature

        kel_to_c:
            # Printing length message
            li $v0, 4
            la $a0, input_kel
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Kelvin_to_Celcius function
            jal Kal_to_Cel

            # Printing length message
            li $v0, 4
            la $a0, result_Celcius
            syscall

            # Printing output 
            li $v0,1
            move $a0, $v1
            syscall

        b forTemperature

        fah_to_c:
            # Printing length message
            li $v0, 4
            la $a0, input_fah
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Fahrenheit_to_Celcius function 
            jal Fah_to_Cel

            # Printing output statement
            li $v0, 4
            la $a0,result_Celcius
            syscall

            # Printing Result
            li $v0, 1
            move $a0,$v1
            syscall

        b forTemperature


####################################### Temperature Function End #######################################

####################################### Weight Function Begin #######################################

    forWeight:
        li $v0, 4
        la $a0, weightOption
        syscall

        # Ask user to input
        li $v0, 4
        la $a0, select_option
        syscall

        # Taking input from user for options
        li $v0, 5
        syscall
        move $t0, $v0

        weightCondition:
            beq $t0, 0, optionSelect
            beq $t0, 1, gram_to_mg
            beq $t0, 2, gram_to_kg
            beq $t0, 3, kilogram_to_mTon
            beq $t0, 4, milligram_to_gm
            beq $t0, 5, mTon_to_kgs

        gram_to_mg:
            # Printing input message
            li $v0, 4
            la $a0, input_gm
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Gram_to_Milligram Function
            jal gm_to_milligm

            # Printing output statement
            li $v0, 4
            la $a0, result_milligm
            syscall

            li $v0, 1
            move $a0, $v1
            syscall

        b forWeight

        gram_to_kg:
            # Printing input message
            li $v0, 4
            la $a0, input_gm
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Gram_to_kilogram Function
            jal g_to_kg

            # Printing output statement
            li $v0, 4
            la $a0, result_kgm
            syscall

            li $v0, 1
            move $a0, $v1
            syscall

        kilogram_to_mTon:
            # Printing input message
            li $v0, 4
            la $a0, input_kg
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Kilogram_to_metricTon Function
            jal kg_to_mTon

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_m_ton
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forWeight

        kilogram_to_gm:
            # Printing input message
            li $v0, 4
            la $a0, input_kg
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Kilogram_to_gram Function
            jal kg_to_gm

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_gm
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forWeight

        milligram_to_gm:
            # Printing input message
            li $v0, 4
            la $a0, input_mg
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Milligram_to_gram Function
            jal mg_to_g

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_gm
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forWeight

        mTon_to_kgs:
            # Printing input message
            li $v0, 4
            la $a0, input_mton
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Milligram_to_gram Function
            jal mTon_to_kg

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_m_ton
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forWeight
            


####################################### Weight Function End #######################################

####################################### Area Function Begin #######################################

forArea:
        li $v0, 4
        la $a0, areaOption
        syscall

        # Ask user to input
        li $v0, 4
        la $a0, select_option
        syscall

        # Taking input from user for options
        li $v0, 5
        syscall
        move $t0, $v0

        areaCondition:
            beq $t0, 0, optionSelect
            beq $t0, 1, cms_to_mms
            beq $t0, 2, cms_to_msq
            beq $t0, 3, ms_to_cms
            beq $t0, 4, ms_to_kms
            beq $t0, 5, mms_to_cms
            beq $t0, 6, kms_to_msq

        cms_to_mms:
            # Printing input message
            li $v0, 4
            la $a0, input_cmsquare
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # CentimeterSquare to millimeterSqaure Function
            jal cmSq_to_mmSq

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_mmsquare
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forArea

        cms_to_msq:
            # Printing input message
            li $v0, 4
            la $a0, input_cmsquare
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # CentimeterSquare to meterSqaure Function
            jal cmSq_to_mSq

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_msquare
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forArea

        kms_to_msq:
            # Printing input message
            li $v0, 4
            la $a0, input_kmsqaure
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # KilometerSq_to_MeterSq Function
            jal kmSq_to_mSq

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_msquare
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forArea

        ms_to_cms:
            # Printing input message
            li $v0, 4
            la $a0, input_msquare
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # MeterSquare to centimeterSquare Function
            jal mSq_to_cmSq

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_csquare
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forArea

        ms_to_kms:
            # Printing input message
            li $v0, 4
            la $a0, input_msquare
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # MeterSquare to kilometerSquare Function
            jal mSq_to_kmSq

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_kmsquare
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forArea

        mms_to_cms:
            # Printing input message
            li $v0, 4
            la $a0, input_mmsqaure
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # MillimeterSquare to centimeterSquare Function
            jal mmSq_to_cmSq

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_csquare
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forArea

####################################### Area Function Begin #######################################

####################################### Volume Function Begin #######################################

forVolume:
        li $v0, 4
        la $a0, volumeOption
        syscall

        # Ask user to input
        li $v0, 4
        la $a0, select_option
        syscall

        # Taking input from user for options
        li $v0, 5
        syscall
        move $t0, $v0

        volumeCondition:
            beq $t0, 0, optionSelect
            beq $t0, 1, cubicfeet_to_cm
            beq $t0, 2, cubicmeter_to_cf
            beq $t0, 3, cubicmeter_to_cI
            beq $t0, 4, cubicmeter_to_g
            beq $t0, 5, cubicinch_to_cm
            beq $t0, 6, gallon_to_cm

        cubicfeet_to_cm:
            # Printing input message
            li $v0, 4
            la $a0, input_cf
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # CubicFeet to cubicMeter Function
            jal feetQ_to_mQ

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_cubicmeter
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forVolume

        cubicmeter_to_cf:
            # Printing input message
            li $v0, 4
            la $a0, input_cm
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # cubicMeter to cubicFeet Function
            jal mQ_to_feetQ

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_cubicfeet
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forVolume

        cubicmeter_to_cI:
            # Printing input message
            li $v0, 4
            la $a0, input_cm
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # cubicMeter to cubicInch Function
            jal mQ_to_inchQ

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_cubicinch
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forVolume

        cubicmeter_to_g:
            # Printing input message
            li $v0, 4
            la $a0, input_cm
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # cubicMeter to gallon Function
            jal mQ_to_gallon

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_gallon
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forVolume

        cubicinch_to_cm:
            # Printing input message
            li $v0, 4
            la $a0, input_ci
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # cubicInch to cubicMeter Function
            jal inchQ_to_mQ

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_cubicmeter
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forVolume

        gallon_to_cm:
            # Printing input message
            li $v0, 4
            la $a0, input_gallon
            syscall

            # Taking input from user
            li $v0, 5
            syscall
            move $a1, $v0

            # Gallon to cubicMeter Function
            jal gallon_to_mQ

            # Printing new line statement
            li $v0, 4
            la $a0, new_line
            syscall

            # Printing output statement
            li $v0, 4
            la $a0, result_cubicmeter
            syscall

            # Printing Output
            li $v0, 1
            move $a0, $v1
            syscall

        b forVolume

####################################### Volume Function Begin #######################################

end:
    li 	$v0, 4
	la 	$a0, newLine
	syscall

    li 	$v0, 4
	la 	$a0, endDesign
	syscall

    li 	$v0, 4
	la 	$a0, exit
	syscall

    li 	$v0, 4
	la 	$a0, endDesign
	syscall

    li $v0, 10
    syscall

###################################### Function Definition For Length Begin ######################################

# Definition of meter_to_millimeter function
.globl meter_to_millimeter

    meter_to_millimeter:
        li $a2, 1000
        mult $a1, $a2
        mflo $v1
    jr $ra
    
.end meter_to_millimeter

# Definition of millimeter_to_meter function
.globl mm_to_m

    mm_to_m:
        li $a2, 1000
        div $a1, $a2
        mflo $v1
    jr $ra

.end mm_to_m

# Definition of centimeter_to_meter function
.globl cm_to_m

    cm_to_m:
        li $a2, 100
        div $a1, $a2
        mflo $v1
    jr $ra

.end cm_to_m

# Definition of centimeter_to_Kilometer function
.globl cm_to_km

    cm_to_km:
        li $a2, 10000
        div $a1, $a2
        mflo $v1
    jr $ra

.end cm_to_km

# Definition of meter_to_mile function
.globl m_to_mile

    m_to_mile:
        li $a2, 1609
        div $a1, $a2
        mflo $v1
    jr $ra

.end m_to_mile

# Definition of mile_to_meter function
.globl mile_to_m

    meter_to_m:
        li $a2, 1609
        mult $a1, $a2
        mflo $v1
    jr $ra

.end mile_to_meter

# Definition of meter_to_centimeter function
.globl meter_to_centimeter

    meter_to_centimeter:
        li $a2, 100
        mult $a1, $a2
        mflo $v1
    jr $ra

.end meter_to_centimeter
	
# Definition of Kilometer_to_centimeter function
.globl km_to_cm

    km_to_cm:
        li $a2, 100000
        mult $a1, $a2
        mflo $v1
    jr $ra

.end km_to_cm

###################################### Function Definition For Length End ######################################

###################################### Function Definition For Temperature Begin ######################################

# Definition of Celcius_to_Kalvein function function
.globl Cel_to_Kal

   Cel_to_Kal:
        li $a2, 273
        add $v1, $a1, $a2
    jr $ra

.end Cel_to_Kal
	
# Definition of Kelvin_to_Celcius function function
.globl Kal_to_Cel

    Kal_to_Cel:
        li $a2, 273
        sub $v1, $a1, $a2
    jr $ra

.end Kal_to_Cel
	
# Definition of Celcius_to_Fahrenheit function function
.globl Cel_to_Fah

   Cel_to_Fah:
        li $a2, 9
        mult $a1, $a2
        mflo $v1
        
        li $a2, 5
        div $v1, $a2
        mflo $v1

        li $a2, 32
        add $v1, $v1, $a2    
    jr $ra

.end Cel_to_Fah
	
# Definition of Fahrenheit_to_Celcius function
.globl Fah_to_Cel

    Fah_to_Cel:
        li $a2, 32
        sub  $v1, $a1, $a2
        
        li $a2, 9
        div $v1, $a2
        mflo $v1

        li $a2, 5
        mult $v1, $a2
        mflo $v1
    jr $ra

.end Cel_to_Fah

###################################### Function Definition For Temperature End ######################################

###################################### Function Definition For Weight Begin ######################################

# Definition of gm_to_milligm function
.globl gm_to_milligm

    gm_to_milligm:
        li $a2, 1000
        mult $a1, $a2
        mflo $v1
    jr $ra

.end gm_to_milligm

# Definition of gram_to_kilogram function
.globl g_to_kg

    g_to_kg:
        li $a2, 1000
        div $a1, $a2
        mflo $v1
    jr $ra

.end g_to_kg

# Definition of kilogram_to_metric Ton function
.globl kg_to_mTon

    kg_to_mTon:
        li $a2, 1000
        div $a1, $a2
        mflo $v1
    jr $ra

.end kg_to_mTon
	
# Definition of kg_to_gm function
.globl kg_to_gm

    kg_to_gm:
        li $a2, 1000
        mult $a1, $a2
        mflo $v1
    jr $ra

.end kg_to_gm

# Definition of milligram_to_gram function
.globl mg_to_g

    mg_to_g:
        li $a2, 1000
        div $a1, $a2
        mflo $v1
    jr $ra

.end mg_to_g

# Definition of metric Ton_to_kilogram function
.globl mTon_to_kg

    mTon_to_kg:
        li $a2, 1000
        mult $a1, $a2
        mflo $v1
    jr $ra

.end mTon_to_kg

###################################### Function Definition For Weight End ######################################

###################################### Function Definition For Area Begin ######################################

# Definition of centimetermSq_to_millimeterSq function
.globl cmSq_to_mmSq

    cmSq_to_mmSq:
        li $a2, 100
        mult $a1, $a2
        mflo $v1
    jr $ra

.end cmSq_to_mmSq
	
# Definition of meterSq_to_centimeterSq function
.globl mSq_to_cmSq

    mSq_to_cmSq:
        li $a2, 10000
        mult $a1, $a2
        mflo $v1
    jr $ra

.end mSq_to_cmSq

# Definition of meter Square_to_kilometer Square Ton function
.globl mSq_to_kmSq

    mSq_to_kmSq:
        li $a2, 1000000
        div $a1, $a2
        mflo $v1
    jr $ra

.end mSq_to_kmSq

# Definition of centimeter Square_to_meter Square Ton function
.globl cmSq_to_mSq

    cmSq_to_mSq:
        li $a2, 10000
        div $a1, $a2
        mflo $v1
    jr $ra

.end cmSq_to_mSq

# Definition of KilometerSq_to_meterSq function
.globl kmSq_to_mSq
	
    kmSq_to_mSq:
        li $a2, 1000000
        mult $a1, $a2
        mflo $v1
    jr $ra

.end kmSq_to_mSq

# Definition of millimeter Square_to_centimeter Square Ton function
.globl mmSq_to_cmSq

    mmSq_to_cmSq:
        li $a2, 100
        div $a1, $a2
        mflo $v1
    jr $ra

.end mmSq_to_cmSq

###################################### Function Definition For Area End ######################################

###################################### Function Definition For Volume Begin ######################################

# Definition of cubic Feet_to_cubic Meter function
.globl feetQ_to_mQ

    feetQ_to_mQ:
        li $a2, 1222
        mult $a1, $a2
        mflo $v1
    jr $ra

.end feetQ_to_mQ

# Definition of cubic meter_to_cubic feet function
.globl mQ_to_feetQ

    mQ_to_feetQ:
        li $a2, 123
        mult $a1, $a2
        mflo $v1
    jr $ra

.end mQ_to_feetQ

# Definition of cubic inch_to_cubic meter function
.globl inchQ_to_mQ

    inchQ_to_mQ:
        li $a2, 61023
        div $a1, $a2
        mflo $v1
    jr $ra

.end inchQ_to_mQ

# Definition of cubic meter_to_inch cubic function
.globl mQ_to_inchQ

    mQ_to_inchQ:
        li $a2, 61023
        mult $a1, $a2
        mflo $v1
    jr $ra

.end mQ_to_inchQ 

# Definition of meter cubic_to_gallon function
.globl mQ_to_gallon

    mQ_to_gallon:
        li $a2, 264
        mult $a1, $a2
        mflo $v1
    jr $ra

.end mQ_to_gallon

# Definition of gallon_to_meter cubic function
.globl gallon_to_mQ

    gallon_to_mQ:
        li $a2, 264
        div $a1, $a2
        mflo $v1
    jr $ra

.end gallon_to_mQ

###################################### Function Definition For Volume End ######################################