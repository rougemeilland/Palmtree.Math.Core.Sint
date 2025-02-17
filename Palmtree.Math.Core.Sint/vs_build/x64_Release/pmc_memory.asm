; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27026.1 

include listing.inc

INCLUDELIB OLDNAMES

EXTRN	__imp_HeapDestroy:PROC
EXTRN	__imp_HeapAlloc:PROC
EXTRN	__imp_HeapFree:PROC
EXTRN	__imp_HeapCreate:PROC
COMM	number_zero:BYTE:020H
COMM	number_minus_one:BYTE:020H
COMM	number_one:BYTE:020H
COMM	hLocalHeap:QWORD
_DATA	ENDS
PUBLIC	DetatchNumber
PUBLIC	AttatchNumber
PUBLIC	PMC_GetConstantValue_I
PUBLIC	PMC_Dispose
PUBLIC	Initialize_Memory
PUBLIC	DeallocateNumber
PUBLIC	DuplicateNumber
PUBLIC	CheckNumber
PUBLIC	AllocateNumber
PUBLIC	Negate_Imp
PUBLIC	AllocateHeapArea
PUBLIC	DeallocateHeapArea
;	COMDAT pdata
pdata	SEGMENT
$pdata$AttatchNumber DD imagerel $LN5@AttatchNum
	DD	imagerel $LN5@AttatchNum+22
	DD	imagerel $unwind$AttatchNumber
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_FILL_MEMORY_64 DD imagerel _FILL_MEMORY_64
	DD	imagerel _FILL_MEMORY_64+23
	DD	imagerel $unwind$_FILL_MEMORY_64
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_FILL_MEMORY_32 DD imagerel _FILL_MEMORY_32
	DD	imagerel _FILL_MEMORY_32+21
	DD	imagerel $unwind$_FILL_MEMORY_32
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_FILL_MEMORY_16 DD imagerel _FILL_MEMORY_16
	DD	imagerel _FILL_MEMORY_16+23
	DD	imagerel $unwind$_FILL_MEMORY_16
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_FILL_MEMORY_BYTE DD imagerel _FILL_MEMORY_BYTE
	DD	imagerel _FILL_MEMORY_BYTE+22
	DD	imagerel $unwind$_FILL_MEMORY_BYTE
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_ZERO_MEMORY_64 DD imagerel _ZERO_MEMORY_64
	DD	imagerel _ZERO_MEMORY_64+22
	DD	imagerel $unwind$_ZERO_MEMORY_64
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_ZERO_MEMORY_32 DD imagerel _ZERO_MEMORY_32
	DD	imagerel _ZERO_MEMORY_32+21
	DD	imagerel $unwind$_ZERO_MEMORY_32
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_ZERO_MEMORY_16 DD imagerel _ZERO_MEMORY_16
	DD	imagerel _ZERO_MEMORY_16+22
	DD	imagerel $unwind$_ZERO_MEMORY_16
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_ZERO_MEMORY_BYTE DD imagerel _ZERO_MEMORY_BYTE
	DD	imagerel _ZERO_MEMORY_BYTE+21
	DD	imagerel $unwind$_ZERO_MEMORY_BYTE
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$PMC_Dispose DD imagerel $LN41@PMC_Dispos
	DD	imagerel $LN41@PMC_Dispos+78
	DD	imagerel $unwind$PMC_Dispose
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$Initialize_Memory DD imagerel $LN49@Initialize
	DD	imagerel $LN49@Initialize+238
	DD	imagerel $unwind$Initialize_Memory
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$DeallocateNumber DD imagerel $LN39@Deallocate
	DD	imagerel $LN39@Deallocate+78
	DD	imagerel $unwind$DeallocateNumber
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$DuplicateNumber DD imagerel $LN11@DuplicateN
	DD	imagerel $LN11@DuplicateN+210
	DD	imagerel $unwind$DuplicateNumber
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AllocateNumber DD imagerel $LN6@AllocateNu
	DD	imagerel $LN6@AllocateNu+112
	DD	imagerel $unwind$AllocateNumber
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$Negate_Imp DD imagerel $LN15@Negate_Imp
	DD	imagerel $LN15@Negate_Imp+140
	DD	imagerel $unwind$Negate_Imp
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$0$Negate_Imp DD imagerel $LN15@Negate_Imp+140
	DD	imagerel $LN15@Negate_Imp+199
	DD	imagerel $chain$0$Negate_Imp
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$2$Negate_Imp DD imagerel $LN15@Negate_Imp+199
	DD	imagerel $LN15@Negate_Imp+246
	DD	imagerel $chain$2$Negate_Imp
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$4$Negate_Imp DD imagerel $LN15@Negate_Imp+246
	DD	imagerel $LN15@Negate_Imp+260
	DD	imagerel $chain$4$Negate_Imp
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$5$Negate_Imp DD imagerel $LN15@Negate_Imp+260
	DD	imagerel $LN15@Negate_Imp+271
	DD	imagerel $chain$5$Negate_Imp
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AllocateHeapArea DD imagerel $LN5@AllocateHe
	DD	imagerel $LN5@AllocateHe+42
	DD	imagerel $unwind$AllocateHeapArea
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$DeallocateHeapArea DD imagerel $LN5@Deallocate
	DD	imagerel $LN5@Deallocate+38
	DD	imagerel $unwind$DeallocateHeapArea
;	COMDAT xdata
xdata	SEGMENT
$unwind$DeallocateHeapArea DD 010401H
	DD	04204H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AllocateHeapArea DD 010401H
	DD	04204H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$5$Negate_Imp DD 021H
	DD	imagerel $LN15@Negate_Imp
	DD	imagerel $LN15@Negate_Imp+140
	DD	imagerel $unwind$Negate_Imp
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$4$Negate_Imp DD 020021H
	DD	076400H
	DD	imagerel $LN15@Negate_Imp
	DD	imagerel $LN15@Negate_Imp+140
	DD	imagerel $unwind$Negate_Imp
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$2$Negate_Imp DD 020021H
	DD	076400H
	DD	imagerel $LN15@Negate_Imp
	DD	imagerel $LN15@Negate_Imp+140
	DD	imagerel $unwind$Negate_Imp
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$0$Negate_Imp DD 020521H
	DD	076405H
	DD	imagerel $LN15@Negate_Imp
	DD	imagerel $LN15@Negate_Imp+140
	DD	imagerel $unwind$Negate_Imp
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$Negate_Imp DD 040a01H
	DD	08340aH
	DD	07006320aH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AllocateNumber DD 060f01H
	DD	07640fH
	DD	06340fH
	DD	0700b320fH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$DuplicateNumber DD 040a01H
	DD	07340aH
	DD	07006320aH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$DeallocateNumber DD 020a01H
	DD	03006320aH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$Initialize_Memory DD 020601H
	DD	030023206H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$PMC_Dispose DD 020a01H
	DD	03006320aH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_ZERO_MEMORY_BYTE DD 020501H
	DD	017405H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_ZERO_MEMORY_16 DD 020501H
	DD	017405H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_ZERO_MEMORY_32 DD 020501H
	DD	017405H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_ZERO_MEMORY_64 DD 020501H
	DD	017405H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_FILL_MEMORY_BYTE DD 020501H
	DD	017405H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_FILL_MEMORY_16 DD 020501H
	DD	017405H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_FILL_MEMORY_32 DD 020501H
	DD	017405H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_FILL_MEMORY_64 DD 020501H
	DD	017405H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AttatchNumber DD 010401H
	DD	04204H
END
