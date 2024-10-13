(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3100 0)
(declare-sort var1047 0)
(declare-sort var2182 0)
(declare-sort var3672 0)
(declare-sort var1374 0)
(declare-sort var3593 0)
(declare-sort var2993 0)
(declare-sort var1924 0)
(declare-sort var2491 0)
(declare-sort var527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formulasNotResults/703833056 (var3100) Bool)
(declare-fun nextDataType/703833056 (var3100) var3672)
(declare-fun ordinal/-291641772 (var1374) Int)
(declare-fun cast-from-var3672-to-var1374 (var3672) var1374)
(declare-fun value/703833056 (var3100) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun checkForEmptyCellComments/1702895080 (var3100 var3593) void)
(declare-fun comments/703833056 (var3100) var2993)
(declare-fun var1924-init () var1924)
(declare-fun cellRef/703833056 (var3100) String)
(declare-fun <init>/-659088608 (var1924 String) void)
(declare-fun var2993_findCellComment/-192057447 (var2993 var1924) var2491)
(declare-fun output/703833056 (var3100) var527)
(declare-fun var527_cell/-1778016105 (var527 String String var2491) void)
(declare-const null-var3100 var3100)
(declare-const null-String String)
(declare-const var2182-$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType (Array Int Int))
(declare-const var3593-CELL var3593)
(declare-const null-var2993 var2993)
(declare-const var2975 var3100) ; Statement: r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler 
(assert (not (= var2975 null-var3100)))
(define-const var1063 String null-String) ; Statement: r40 = null 
(define-const var1400 Bool (formulasNotResults/703833056 var2975)) ; Statement: $z0 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults> 
 ; Statement: if $z0 == 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType> 
(assert (= (ite var1400 1 0) 0)) ; Cond: $z0 == 0 
(define-const var387 (Array Int Int) var2182-$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType) ; Statement: $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType> 
(define-const var3599 var3672 (nextDataType/703833056 var2975)) ; Statement: $r1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType> 
(assert true)
(define-const var3566 Int (ordinal/-291641772 (cast-from-var3672-to-var1374 var3599))) ; Statement: $i0 = virtualinvoke $r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType: int ordinal()>() 
(define-const var1488 Int (select var387 var3566)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 2: goto $r48 = new java.lang.StringBuilder;     case 3: goto $z1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;     case 4: goto $r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString;     case 5: goto $r12 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 6: goto $r3 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     default: goto $r50 = new java.lang.StringBuilder; } 
(assert (and (= var1488 5) (and (not (= var1488 4)) (and (not (= var1488 3)) (and (not (= var1488 2)) (and (not (= var1488 1)) true)))))) ; Intersect: Cond: $i1 == 5  and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional     
(define-const var3899 String (value/703833056 var2975)) ; Statement: $r12 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value> 
(assert true)
(define-const var1015 String (toString/-2075883882 var3899)) ; Statement: r43 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2015 Int (length/-134980193 var1015)) ; Statement: $i4 = virtualinvoke r43.<java.lang.String: int length()>() 
 ; Statement: if $i4 <= 0 goto $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL> 
(assert (<= var2015 0)) ; Cond: $i4 <= 0 
(define-const var2710 var3593 var3593-CELL) ; Statement: $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL> 
(assert true)
;(assert (checkForEmptyCellComments/1702895080 var2975 var2710)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void checkForEmptyCellComments(org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType)>($r45) 

(declare-const var2975!1 var3100)
(declare-const var2710!1 var3593)
(define-const var2751 var2993 (comments/703833056 var2975!1)) ; Statement: $r46 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments> 
 ; Statement: if $r46 == null goto $r47 = null 
(assert (not (= var2751 null-var2993))) ; Negate: Cond: $r46 == null  
(define-const var177 var2993 (comments/703833056 var2975!1)) ; Statement: $r9 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments> 
(define-const var2417 var1924 var1924-init) ; Statement: $r51 = new org.apache.poi.ss.util.CellAddress 
(define-const var884 String (cellRef/703833056 var2975!1)) ; Statement: $r8 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef> 
(assert true)
;(assert (<init>/-659088608 var2417 var884)) ; Statement: specialinvoke $r51.<org.apache.poi.ss.util.CellAddress: void <init>(java.lang.String)>($r8) 

(declare-const var2417!1 var1924)
(declare-const var884!1 String)
(define-const var2582 var2491 (var2993_findCellComment/-192057447 var177 var2417!1)) ; Statement: $r47 = interfaceinvoke $r9.<org.apache.poi.xssf.model.Comments: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r51) 
 ; Statement: goto [?= $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>] 
(assert true) ; Non Conditional
(define-const var344 var527 (output/703833056 var2975!1)) ; Statement: $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output> 
(define-const var1508 String (cellRef/703833056 var2975!1)) ; Statement: $r5 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef> 
;(assert (var527_cell/-1778016105 var344 var1508 var1063 var2582)) ; Statement: interfaceinvoke $r6.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler: void cell(java.lang.String,java.lang.String,org.apache.poi.xssf.usermodel.XSSFComment)>($r5, r40, $r47) 

(declare-const var344!1 var527)
(declare-const var1508!1 String)
(declare-const var1063!1 String)
(declare-const var2582!1 var2491)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {formulasNotResults/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], boolean), nextDataType/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3672-to-var1374=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType], java.lang.Enum), value/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-134980193=([java.lang.String], int), checkForEmptyCellComments/1702895080=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType], void), comments/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.model.Comments), var1924-init=([], org.apache.poi.ss.util.CellAddress), cellRef/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.String), <init>/-659088608=([org.apache.poi.ss.util.CellAddress, java.lang.String], void), var2993_findCellComment/-192057447=([org.apache.poi.xssf.model.Comments, org.apache.poi.ss.util.CellAddress], org.apache.poi.xssf.usermodel.XSSFComment), output/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler), var527_cell/-1778016105=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, java.lang.String, java.lang.String, org.apache.poi.xssf.usermodel.XSSFComment], void)}
; {var3100=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, var2975=r0, var1047=null_type, var1063=r40, var1400=$z0, var2182=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1, var387=$r2, var3672=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType, var3599=$r1, var1374=java.lang.Enum, var3566=$i0, var1488=$i1, var3899=$r12, var1015=r43, var2015=$i4, var3593=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType, var2710=$r45, var2993=org.apache.poi.xssf.model.Comments, var2751=$r46, var177=$r9, var1924=org.apache.poi.ss.util.CellAddress, var2417=$r51, var884=$r8, var2491=org.apache.poi.xssf.usermodel.XSSFComment, var2582=$r47, var527=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, var344=$r6, var1508=$r5}
; {org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler=var3100, r0=var2975, null_type=var1047, r40=var1063, $z0=var1400, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1=var2182, $r2=var387, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType=var3672, $r1=var3599, java.lang.Enum=var1374, $i0=var3566, $i1=var1488, $r12=var3899, r43=var1015, $i4=var2015, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType=var3593, $r45=var2710, org.apache.poi.xssf.model.Comments=var2993, $r46=var2751, $r9=var177, org.apache.poi.ss.util.CellAddress=var1924, $r51=var2417, $r8=var884, org.apache.poi.xssf.usermodel.XSSFComment=var2491, $r47=var2582, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler=var527, $r6=var344, $r5=var1508}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;	r40 = null;	$z0 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;	if $z0 == 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType>;	$r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType>;	$r1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType>;	$i0 = virtualinvoke $r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r27 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 2: goto $r48 = new java.lang.StringBuilder;     case 3: goto $z1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;     case 4: goto $r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString;     case 5: goto $r12 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 6: goto $r3 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     default: goto $r50 = new java.lang.StringBuilder; };	$r12 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;	r43 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$i4 = virtualinvoke r43.<java.lang.String: int length()>();	if $i4 <= 0 goto $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>;	$r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>;	specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void checkForEmptyCellComments(org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType)>($r45);	$r46 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments>;	if $r46 == null goto $r47 = null;	$r9 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments>;	$r51 = new org.apache.poi.ss.util.CellAddress;	$r8 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef>;	specialinvoke $r51.<org.apache.poi.ss.util.CellAddress: void <init>(java.lang.String)>($r8);	$r47 = interfaceinvoke $r9.<org.apache.poi.xssf.model.Comments: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r51);	goto [?= $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>];	$r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>;	$r5 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef>;	interfaceinvoke $r6.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler: void cell(java.lang.String,java.lang.String,org.apache.poi.xssf.usermodel.XSSFComment)>($r5, r40, $r47);	return
;block_num 6