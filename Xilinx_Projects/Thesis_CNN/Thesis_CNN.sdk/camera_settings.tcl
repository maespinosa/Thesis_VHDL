proc camera_settings_init {} {
	mrd 0x44a20000 10 
	puts "Sending Configuration BRAM Data" 
	
	mwr 0x44a2001c 0x00003008  
	mwr 0x44a20020 0x00010000  
	
		mwr 0x44a2001c 0x00000080  
		mwr 0x44a20020 0x00010001  
	 
	mwr 0x44a2001c 0x00003103  
	mwr 0x44a20020 0x00010002  
	
		mwr 0x44a2001c 0x00000093  
		mwr 0x44a20020 0x00010003  
	
	mwr 0x44a2001c 0x00003008  
	mwr 0x44a20020 0x00010004  
	
		mwr 0x44a2001c 0x00000082  
		mwr 0x44a20020 0x00010005  
	
	mwr 0x44a2001c 0x00003017  
	mwr 0x44a20020 0x00010006  
	
		mwr 0x44a2001c 0x0000007f  
		mwr 0x44a20020 0x00010007  
	 
	mwr 0x44a2001c 0x00003018  
	mwr 0x44a20020 0x00010008  
	
		mwr 0x44a2001c 0x000000fc  
		mwr 0x44a20020 0x00010009  
	
	mwr 0x44a2001c 0x00003810  
	mwr 0x44a20020 0x0001000a  
	
		mwr 0x44a2001c 0x000000c2  
		mwr 0x44a20020 0x0001000b  
	
	mwr 0x44a2001c 0x00003615  
	mwr 0x44a20020 0x0001000c  
	
		mwr 0x44a2001c 0x000000f0  
		mwr 0x44a20020 0x0001000d  
	
	mwr 0x44a2001c 0x00003000  
	mwr 0x44a20020 0x0001000e  
	
		mwr 0x44a2001c 0x00000000  
		mwr 0x44a20020 0x0001000f  
	
	mwr 0x44a2001c 0x00003001  
	mwr 0x44a20020 0x00010010  
	
		mwr 0x44a2001c 0x00000000  
		mwr 0x44a20020 0x00010011  
	
	mwr 0x44a2001c 0x00003002  
	mwr 0x44a20020 0x00010012  
	
		mwr 0x44a2001c 0x00000000  
		mwr 0x44a20020 0x00010013  
	
	mwr 0x44a2001c 0x00003003  
	mwr 0x44a20020 0x00010014  
	
		mwr 0x44a2001c 0x00000000  
		mwr 0x44a20020 0x00010015  
	
	mwr 0x44a2001c 0x00003004  
	mwr 0x44a20020 0x00010016  
	
		mwr 0x44a2001c 0x000000ff  
		mwr 0x44a20020 0x00010017  
	
	mwr 0x44a2001c 0x00003030  
	mwr 0x44a20020 0x00010018  
	
		mwr 0x44a2001c 0x0000002b  
		mwr 0x44a20020 0x00010019  
	
	mwr 0x44a2001c 0x00003011  
	mwr 0x44a20020 0x0001001a  
	
		mwr 0x44a2001c 0x00000020  
		mwr 0x44a20020 0x0001001b  
	
	mwr 0x44a2001c 0x00003010  
	mwr 0x44a20020 0x0001001c  
	
		mwr 0x44a2001c 0x00000010  
		mwr 0x44a20020 0x0001001d  
		
	# mwr 0x44a2001c 0x0000ffff
	# mwr 0x44a20020 0x0001001e  
		
		# mwr 0x44a2001c 0x000000ff  		
		# mwr 0x44a20020 0x0001001f  
	
	mwr 0x44a2001c 0x0000501f
	mwr 0x44a20020 0x0001001e
	 
		mwr 0x44a2001c 0x00000001  
		mwr 0x44a20020 0x0001001f   
	
	mwr 0x44a2001c 0x00005002
	mwr 0x44a20020 0x00010020
	
		mwr 0x44a2001c 0x00000018  
		mwr 0x44a20020 0x00010021 
	
	mwr 0x44a2001c 0x0000501e
	mwr 0x44a20020 0x00010022
	
		mwr 0x44a2001c 0x00000015  
		mwr 0x44a20020 0x00010023
	
	mwr 0x44a2001c 0x00004740
	mwr 0x44a20020 0x00010024
	
		mwr 0x44a2001c 0x00000021  
		mwr 0x44a20020 0x00010025 
	
	mwr 0x44a2001c 0x00004300
	mwr 0x44a20020 0x00010026
	
		mwr 0x44a2001c 0x000000A1  
		mwr 0x44a20020 0x00010027  
	
	mwr 0x44a2001c 0x00004300
	mwr 0x44a20020 0x00010028
	
		mwr 0x44a2001c 0x000000A1  
		mwr 0x44a20020 0x00010029
	
	mwr 0x44a2001c 0x0000460c
	mwr 0x44a20020 0x0001002a
	
		mwr 0x44a2001c 0x00000022  
		mwr 0x44a20020 0x0001002b
	
	mwr 0x44a2001c 0x00003815
	mwr 0x44a20020 0x0001002c
	
		mwr 0x44a2001c 0x00000044  
		mwr 0x44a20020 0x0001002d
	
	mwr 0x44a2001c 0x00003800
	mwr 0x44a20020 0x0001002e
	
		mwr 0x44a2001c 0x00000001  
		mwr 0x44a20020 0x0001002f
	
	mwr 0x44a2001c 0x00003801
	mwr 0x44a20020 0x00010030
	
		mwr 0x44a2001c 0x000000a8  
		mwr 0x44a20020 0x00010031
		
	mwr 0x44a2001c 0x00003802
	mwr 0x44a20020 0x00010032
	
		mwr 0x44a2001c 0x00000000  	
		mwr 0x44a20020 0x00010033

	mwr 0x44a2001c 0x00003803
	mwr 0x44a20020 0x00010034
	
		mwr 0x44a2001c 0x0000000A  	
		mwr 0x44a20020 0x00010035

	mwr 0x44a2001c 0x00003804
	mwr 0x44a20020 0x00010036
	
		mwr 0x44a2001c 0x0000000A  	
		mwr 0x44a20020 0x00010037

	mwr 0x44a2001c 0x00003805
	mwr 0x44a20020 0x00010038
	
		mwr 0x44a2001c 0x00000020  	
		mwr 0x44a20020 0x00010039 

	mwr 0x44a2001c 0x00003806
	mwr 0x44a20020 0x0001003a
	
		mwr 0x44a2001c 0x00000007  	
		mwr 0x44a20020 0x0001003b

	mwr 0x44a2001c 0x00003807
	mwr 0x44a20020 0x0001003c
	
		mwr 0x44a2001c 0x00000098  	
		mwr 0x44a20020 0x0001003d

	mwr 0x44a2001c 0x00003808
	mwr 0x44a20020 0x0001003e
	
		mwr 0x44a2001c 0x00000002  	
		mwr 0x44a20020 0x0001003f

	mwr 0x44a2001c 0x00003809
	mwr 0x44a20020 0x00010040
	
		mwr 0x44a2001c 0x00000080  	
		mwr 0x44a20020 0x00010041

	mwr 0x44a2001c 0x0000380a
	mwr 0x44a20020 0x00010042
	
		mwr 0x44a2001c 0x00000001   	
		mwr 0x44a20020 0x00010043

	mwr 0x44a2001c 0x0000380b
	mwr 0x44a20020 0x00010044
	
		mwr 0x44a2001c 0x000000e0  	
		mwr 0x44a20020 0x00010045

	mwr 0x44a2001c 0x0000380c
	mwr 0x44a20020 0x00010046
	
		mwr 0x44a2001c 0x0000000c  		
		mwr 0x44a20020 0x00010047

	mwr 0x44a2001c 0x0000380d
	mwr 0x44a20020 0x00010048
	
		mwr 0x44a2001c 0x00000080  		
		mwr 0x44a20020 0x00010049

	mwr 0x44a2001c 0x0000380e
	mwr 0x44a20020 0x0001004a
	
		mwr 0x44a2001c 0x00000007  		
		mwr 0x44a20020 0x0001004b 

	mwr 0x44a2001c 0x0000380f
	mwr 0x44a20020 0x0001004c
	
		mwr 0x44a2001c 0x000000d0  		
		mwr 0x44a20020 0x0001004d 
 
	mwr 0x44a2001c 0x00005001
	mwr 0x44a20020 0x0001004e
	
		mwr 0x44a2001c 0x0000007f  		
		mwr 0x44a20020 0x0001004f

	mwr 0x44a2001c 0x00005680
	mwr 0x44a20020 0x00010050
	
		mwr 0x44a2001c 0x00000000  		
		mwr 0x44a20020 0x00010051

	mwr 0x44a2001c 0x00005681
	mwr 0x44a20020 0x00010052
	
		mwr 0x44a2001c 0x00000000  		
		mwr 0x44a20020 0x00010053

	mwr 0x44a2001c 0x00005682
	mwr 0x44a20020 0x00010054
	
		mwr 0x44a2001c 0x0000000A  		
		mwr 0x44a20020 0x00010055

	mwr 0x44a2001c 0x00005683
	mwr 0x44a20020 0x00010056
	
		mwr 0x44a2001c 0x00000020  		
		mwr 0x44a20020 0x00010057

	mwr 0x44a2001c 0x00005684
	mwr 0x44a20020 0x00010058
	
		mwr 0x44a2001c 0x00000000  		
		mwr 0x44a20020 0x00010059

	mwr 0x44a2001c 0x00005685
	mwr 0x44a20020 0x0001005a
	
		mwr 0x44a2001c 0x00000000  		
		mwr 0x44a20020 0x0001005b 

	mwr 0x44a2001c 0x00005686
	mwr 0x44a20020 0x0001005c
	
		mwr 0x44a2001c 0x00000007  		
		mwr 0x44a20020 0x0001005d 

	mwr 0x44a2001c 0x00005687
	mwr 0x44a20020 0x0001005e
		
		mwr 0x44a2001c 0x00000098  		
		mwr 0x44a20020 0x0001005f

	mwr 0x44a2001c 0x00003801
	mwr 0x44a20020 0x00010060
	
		mwr 0x44a2001c 0x000000b0  		
		mwr 0x44a20020 0x00010061

	mwr 0x44a2001c 0x00003818
	mwr 0x44a20020 0x00010062
	
		mwr 0x44a2001c 0x00000080  		
		mwr 0x44a20020 0x00010063

	mwr 0x44a2001c 0x00003621
	mwr 0x44a20020 0x00010064
		
		mwr 0x44a2001c 0x00000027   		
		mwr 0x44a20020 0x00010065

	mwr 0x44a2001c 0x00004740
	mwr 0x44a20020 0x00010066
	
		mwr 0x44a2001c 0x00000021   		
		mwr 0x44a20020 0x00010067
		
	mwr 0x44a2001c 0x00005002
	mwr 0x44a20020 0x00010068
	
		mwr 0x44a2001c 0x00000008		
		mwr 0x44a20020 0x00010069
		
	mwr 0x44a2001c 0x0000503D
	mwr 0x44a20020 0x0001006a
	
		mwr 0x44a2001c 0x00000080	
		mwr 0x44a20020 0x0001006b

	mwr 0x44a2001c 0x0000ffff
	mwr 0x44a20020 0x0001006c
		
		mwr 0x44a2001c 0x000000ff  		
		mwr 0x44a20020 0x0001006d
		
	
	mwr 0x44a20024 0x0000006d
	
	puts "Configuration BRAM data sent"

	
};