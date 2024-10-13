(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3350 0)
(declare-sort var3619 0)
(declare-sort var1059 0)
(declare-sort var2607 0)
(declare-sort var3839 0)
(declare-sort var3787 0)
(declare-sort var3969 0)
(declare-sort var1004 0)
(declare-sort var3537 0)
(declare-sort var3337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formulasNotResults/703833056 (var3350) Bool)
(declare-fun nextDataType/703833056 (var3350) var2607)
(declare-fun ordinal/-291641772 (var3839) Int)
(declare-fun cast-from-var2607-to-var3839 (var2607) var3839)
(declare-fun var3787-init () var3787)
(declare-fun value/703833056 (var3350) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/102634116 (var3787 String) void)
(declare-fun toString/-1591991946 (var3787) String)
(declare-fun checkForEmptyCellComments/1702895080 (var3350 var3969) void)
(declare-fun comments/703833056 (var3350) var1004)
(declare-fun output/703833056 (var3350) var3337)
(declare-fun cellRef/703833056 (var3350) String)
(declare-fun var3337_cell/-1778016105 (var3337 String String var3537) void)
(declare-const null-var3350 var3350)
(declare-const null-String String)
(declare-const var1059-$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType (Array Int Int))
(declare-const var3969-CELL var3969)
(declare-const null-var1004 var1004)
(declare-const null-var3537 var3537)
(declare-const var1615 var3350) ; Statement: r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler 
(assert (not (= var1615 null-var3350)))
(define-const var3753 String null-String) ; Statement: r40 = null 
(define-const var1539 Bool (formulasNotResults/703833056 var1615)) ; Statement: $z0 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults> 
 ; Statement: if $z0 == 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType> 
(assert (= (ite var1539 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1461 (Array Int Int) var1059-$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType) ; Statement: $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType> 
(define-const var2360 var2607 (nextDataType/703833056 var1615)) ; Statement: $r1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType> 
(assert true)
(define-const var637 Int (ordinal/-291641772 (cast-from-var2607-to-var3839 var2360))) ; Statement: $i0 = virtualinvoke $r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType: int ordinal()>() 
(define-const var1156 Int (select var1461 var637)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 2: goto $r48 = new java.lang.StringBuilder;     case 3: goto $z1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;     case 4: goto $r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString;     case 5: goto $r12 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 6: goto $r3 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     default: goto $r50 = new java.lang.StringBuilder; } 
(assert (and (= var1156 4) (and (not (= var1156 3)) (and (not (= var1156 2)) (and (not (= var1156 1)) true))))) ; Intersect: Cond: $i1 == 4  and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var1160 var3787 var3787-init) ; Statement: $r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString 
(define-const var1960 String (value/703833056 var1615)) ; Statement: $r16 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value> 
(assert true)
(define-const var1499 String (toString/-2075883882 var1960)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/102634116 var1160 var1499)) ; Statement: specialinvoke $r49.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void <init>(java.lang.String)>($r17) 

(declare-const var1160!1 var3787)
(declare-const var1499!1 String)
(assert true)
(define-const var3753!1 String (toString/-1591991946 var1160!1)) ; Statement: r40 = virtualinvoke $r49.<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String toString()>() 
 ; Statement: goto [?= $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>] 
(assert true) ; Non Conditional
(define-const var1729 var3969 var3969-CELL) ; Statement: $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL> 
(assert true)
;(assert (checkForEmptyCellComments/1702895080 var1615 var1729)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void checkForEmptyCellComments(org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType)>($r45) 

(declare-const var1615!1 var3350)
(declare-const var1729!1 var3969)
(define-const var2098 var1004 (comments/703833056 var1615!1)) ; Statement: $r46 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments> 
 ; Statement: if $r46 == null goto $r47 = null 
(assert (= var2098 null-var1004)) ; Cond: $r46 == null 
(define-const var2060 var3537 null-var3537) ; Statement: $r47 = null 
(assert true) ; Non Conditional
(define-const var3570 var3337 (output/703833056 var1615!1)) ; Statement: $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output> 
(define-const var512 String (cellRef/703833056 var1615!1)) ; Statement: $r5 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef> 
;(assert (var3337_cell/-1778016105 var3570 var512 var3753!1 var2060)) ; Statement: interfaceinvoke $r6.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler: void cell(java.lang.String,java.lang.String,org.apache.poi.xssf.usermodel.XSSFComment)>($r5, r40, $r47) 

(declare-const var3570!1 var3337)
(declare-const var512!1 String)
(declare-const var3753!2 String)
(declare-const var2060!1 var3537)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {formulasNotResults/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], boolean), nextDataType/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2607-to-var3839=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType], java.lang.Enum), var3787-init=([], org.apache.poi.xssf.usermodel.XSSFRichTextString), value/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/102634116=([org.apache.poi.xssf.usermodel.XSSFRichTextString, java.lang.String], void), toString/-1591991946=([org.apache.poi.xssf.usermodel.XSSFRichTextString], java.lang.String), checkForEmptyCellComments/1702895080=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType], void), comments/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.model.Comments), output/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler), cellRef/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.String), var3337_cell/-1778016105=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, java.lang.String, java.lang.String, org.apache.poi.xssf.usermodel.XSSFComment], void)}
; {var3350=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, var1615=r0, var3619=null_type, var3753=r40, var1539=$z0, var1059=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1, var1461=$r2, var2607=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType, var2360=$r1, var3839=java.lang.Enum, var637=$i0, var1156=$i1, var3787=org.apache.poi.xssf.usermodel.XSSFRichTextString, var1160=$r49, var1960=$r16, var1499=$r17, var3969=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType, var1729=$r45, var1004=org.apache.poi.xssf.model.Comments, var2098=$r46, var3537=org.apache.poi.xssf.usermodel.XSSFComment, var2060=$r47, var3337=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, var3570=$r6, var512=$r5}
; {org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler=var3350, r0=var1615, null_type=var3619, r40=var3753, $z0=var1539, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1=var1059, $r2=var1461, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType=var2607, $r1=var2360, java.lang.Enum=var3839, $i0=var637, $i1=var1156, org.apache.poi.xssf.usermodel.XSSFRichTextString=var3787, $r49=var1160, $r16=var1960, $r17=var1499, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType=var3969, $r45=var1729, org.apache.poi.xssf.model.Comments=var1004, $r46=var2098, org.apache.poi.xssf.usermodel.XSSFComment=var3537, $r47=var2060, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler=var3337, $r6=var3570, $r5=var512}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;	r40 = null;	$z0 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;	if $z0 == 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType>;	$r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType>;	$r1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType>;	$i0 = virtualinvoke $r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r27 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 2: goto $r48 = new java.lang.StringBuilder;     case 3: goto $z1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;     case 4: goto $r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString;     case 5: goto $r12 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 6: goto $r3 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     default: goto $r50 = new java.lang.StringBuilder; };	$r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString;	$r16 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r49.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void <init>(java.lang.String)>($r17);	r40 = virtualinvoke $r49.<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String toString()>();	goto [?= $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>];	$r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>;	specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void checkForEmptyCellComments(org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType)>($r45);	$r46 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments>;	if $r46 == null goto $r47 = null;	$r47 = null;	$r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>;	$r5 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef>;	interfaceinvoke $r6.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler: void cell(java.lang.String,java.lang.String,org.apache.poi.xssf.usermodel.XSSFComment)>($r5, r40, $r47);	return
;block_num 6