; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27026.1 

include listing.inc

INCLUDELIB OLDNAMES

PUBLIC	PMC_From_L
PUBLIC	PMC_From_I
PUBLIC	From_I_Imp
PUBLIC	From_L_Imp
;	COMDAT pdata
pdata	SEGMENT
$pdata$PMC_From_L DD imagerel $LN47@PMC_From_L
	DD	imagerel $LN47@PMC_From_L+218
	DD	imagerel $unwind$PMC_From_L
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$PMC_From_I DD imagerel $LN47@PMC_From_I
	DD	imagerel $LN47@PMC_From_I+216
	DD	imagerel $unwind$PMC_From_I
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$From_I_Imp DD imagerel $LN13@From_I_Imp
	DD	imagerel $LN13@From_I_Imp+145
	DD	imagerel $unwind$From_I_Imp
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$From_L_Imp DD imagerel $LN13@From_L_Imp
	DD	imagerel $LN13@From_L_Imp+147
	DD	imagerel $unwind$From_L_Imp
;	COMDAT xdata
xdata	SEGMENT
$unwind$From_L_Imp DD 060f01H
	DD	07640fH
	DD	06340fH
	DD	0700b320fH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$From_I_Imp DD 060f01H
	DD	07640fH
	DD	06340fH
	DD	0700b320fH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$PMC_From_I DD 040a01H
	DD	06340aH
	DD	07006320aH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$PMC_From_L DD 040a01H
	DD	07340aH
	DD	07006320aH
END
