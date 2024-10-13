(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2955 0)
(declare-sort var3056 0)
(declare-sort var1727 0)
(declare-sort var2834 0)
(declare-sort var3325 0)
(declare-sort var3251 0)
(declare-sort var2614 0)
(declare-sort var1265 0)
(declare-sort var3111 0)
(declare-sort var2585 0)
(declare-sort var320 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formulasNotResults/703833056 (var2955) Bool)
(declare-fun nextDataType/703833056 (var2955) var2834)
(declare-fun ordinal/-291641772 (var3325) Int)
(declare-fun cast-from-var2834-to-var3325 (var2834) var3325)
(declare-fun var3251-init () var3251)
(declare-fun value/703833056 (var2955) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/102634116 (var3251 String) void)
(declare-fun toString/-1591991946 (var3251) String)
(declare-fun checkForEmptyCellComments/1702895080 (var2955 var2614) void)
(declare-fun comments/703833056 (var2955) var1265)
(declare-fun var3111-init () var3111)
(declare-fun cellRef/703833056 (var2955) String)
(declare-fun <init>/-659088608 (var3111 String) void)
(declare-fun var1265_findCellComment/-192057447 (var1265 var3111) var2585)
(declare-fun output/703833056 (var2955) var320)
(declare-fun var320_cell/-1778016105 (var320 String String var2585) void)
(declare-const null-var2955 var2955)
(declare-const null-String String)
(declare-const var1727-$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType (Array Int Int))
(declare-const var2614-CELL var2614)
(declare-const null-var1265 var1265)
(declare-const var3384 var2955) ; Statement: r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler 
(assert (not (= var3384 null-var2955)))
(define-const var297 String null-String) ; Statement: r40 = null 
(define-const var928 Bool (formulasNotResults/703833056 var3384)) ; Statement: $z0 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults> 
 ; Statement: if $z0 == 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType> 
(assert (= (ite var928 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3821 (Array Int Int) var1727-$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType) ; Statement: $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType> 
(define-const var3029 var2834 (nextDataType/703833056 var3384)) ; Statement: $r1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType> 
(assert true)
(define-const var1409 Int (ordinal/-291641772 (cast-from-var2834-to-var3325 var3029))) ; Statement: $i0 = virtualinvoke $r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType: int ordinal()>() 
(define-const var3256 Int (select var3821 var1409)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 2: goto $r48 = new java.lang.StringBuilder;     case 3: goto $z1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;     case 4: goto $r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString;     case 5: goto $r12 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 6: goto $r3 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     default: goto $r50 = new java.lang.StringBuilder; } 
(assert (and (= var3256 4) (and (not (= var3256 3)) (and (not (= var3256 2)) (and (not (= var3256 1)) true))))) ; Intersect: Cond: $i1 == 4  and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var350 var3251 var3251-init) ; Statement: $r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString 
(define-const var1437 String (value/703833056 var3384)) ; Statement: $r16 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value> 
(assert true)
(define-const var1571 String (toString/-2075883882 var1437)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/102634116 var350 var1571)) ; Statement: specialinvoke $r49.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void <init>(java.lang.String)>($r17) 

(declare-const var350!1 var3251)
(declare-const var1571!1 String)
(assert true)
(define-const var297!1 String (toString/-1591991946 var350!1)) ; Statement: r40 = virtualinvoke $r49.<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String toString()>() 
 ; Statement: goto [?= $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>] 
(assert true) ; Non Conditional
(define-const var360 var2614 var2614-CELL) ; Statement: $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL> 
(assert true)
;(assert (checkForEmptyCellComments/1702895080 var3384 var360)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void checkForEmptyCellComments(org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType)>($r45) 

(declare-const var3384!1 var2955)
(declare-const var360!1 var2614)
(define-const var1149 var1265 (comments/703833056 var3384!1)) ; Statement: $r46 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments> 
 ; Statement: if $r46 == null goto $r47 = null 
(assert (not (= var1149 null-var1265))) ; Negate: Cond: $r46 == null  
(define-const var3971 var1265 (comments/703833056 var3384!1)) ; Statement: $r9 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments> 
(define-const var1292 var3111 var3111-init) ; Statement: $r51 = new org.apache.poi.ss.util.CellAddress 
(define-const var2144 String (cellRef/703833056 var3384!1)) ; Statement: $r8 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef> 
(assert true)
;(assert (<init>/-659088608 var1292 var2144)) ; Statement: specialinvoke $r51.<org.apache.poi.ss.util.CellAddress: void <init>(java.lang.String)>($r8) 

(declare-const var1292!1 var3111)
(declare-const var2144!1 String)
(define-const var3577 var2585 (var1265_findCellComment/-192057447 var3971 var1292!1)) ; Statement: $r47 = interfaceinvoke $r9.<org.apache.poi.xssf.model.Comments: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r51) 
 ; Statement: goto [?= $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>] 
(assert true) ; Non Conditional
(define-const var1762 var320 (output/703833056 var3384!1)) ; Statement: $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output> 
(define-const var3227 String (cellRef/703833056 var3384!1)) ; Statement: $r5 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef> 
;(assert (var320_cell/-1778016105 var1762 var3227 var297!1 var3577)) ; Statement: interfaceinvoke $r6.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler: void cell(java.lang.String,java.lang.String,org.apache.poi.xssf.usermodel.XSSFComment)>($r5, r40, $r47) 

(declare-const var1762!1 var320)
(declare-const var3227!1 String)
(declare-const var297!2 String)
(declare-const var3577!1 var2585)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {formulasNotResults/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], boolean), nextDataType/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2834-to-var3325=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType], java.lang.Enum), var3251-init=([], org.apache.poi.xssf.usermodel.XSSFRichTextString), value/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/102634116=([org.apache.poi.xssf.usermodel.XSSFRichTextString, java.lang.String], void), toString/-1591991946=([org.apache.poi.xssf.usermodel.XSSFRichTextString], java.lang.String), checkForEmptyCellComments/1702895080=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType], void), comments/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.model.Comments), var3111-init=([], org.apache.poi.ss.util.CellAddress), cellRef/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.String), <init>/-659088608=([org.apache.poi.ss.util.CellAddress, java.lang.String], void), var1265_findCellComment/-192057447=([org.apache.poi.xssf.model.Comments, org.apache.poi.ss.util.CellAddress], org.apache.poi.xssf.usermodel.XSSFComment), output/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler), var320_cell/-1778016105=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, java.lang.String, java.lang.String, org.apache.poi.xssf.usermodel.XSSFComment], void)}
; {var2955=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, var3384=r0, var3056=null_type, var297=r40, var928=$z0, var1727=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1, var3821=$r2, var2834=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType, var3029=$r1, var3325=java.lang.Enum, var1409=$i0, var3256=$i1, var3251=org.apache.poi.xssf.usermodel.XSSFRichTextString, var350=$r49, var1437=$r16, var1571=$r17, var2614=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType, var360=$r45, var1265=org.apache.poi.xssf.model.Comments, var1149=$r46, var3971=$r9, var3111=org.apache.poi.ss.util.CellAddress, var1292=$r51, var2144=$r8, var2585=org.apache.poi.xssf.usermodel.XSSFComment, var3577=$r47, var320=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, var1762=$r6, var3227=$r5}
; {org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler=var2955, r0=var3384, null_type=var3056, r40=var297, $z0=var928, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1=var1727, $r2=var3821, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType=var2834, $r1=var3029, java.lang.Enum=var3325, $i0=var1409, $i1=var3256, org.apache.poi.xssf.usermodel.XSSFRichTextString=var3251, $r49=var350, $r16=var1437, $r17=var1571, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType=var2614, $r45=var360, org.apache.poi.xssf.model.Comments=var1265, $r46=var1149, $r9=var3971, org.apache.poi.ss.util.CellAddress=var3111, $r51=var1292, $r8=var2144, org.apache.poi.xssf.usermodel.XSSFComment=var2585, $r47=var3577, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler=var320, $r6=var1762, $r5=var3227}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;	r40 = null;	$z0 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;	if $z0 == 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType>;	$r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType>;	$r1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType>;	$i0 = virtualinvoke $r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r27 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 2: goto $r48 = new java.lang.StringBuilder;     case 3: goto $z1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;     case 4: goto $r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString;     case 5: goto $r12 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 6: goto $r3 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     default: goto $r50 = new java.lang.StringBuilder; };	$r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString;	$r16 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r49.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void <init>(java.lang.String)>($r17);	r40 = virtualinvoke $r49.<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String toString()>();	goto [?= $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>];	$r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>;	specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void checkForEmptyCellComments(org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType)>($r45);	$r46 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments>;	if $r46 == null goto $r47 = null;	$r9 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments>;	$r51 = new org.apache.poi.ss.util.CellAddress;	$r8 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef>;	specialinvoke $r51.<org.apache.poi.ss.util.CellAddress: void <init>(java.lang.String)>($r8);	$r47 = interfaceinvoke $r9.<org.apache.poi.xssf.model.Comments: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r51);	goto [?= $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>];	$r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>;	$r5 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef>;	interfaceinvoke $r6.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler: void cell(java.lang.String,java.lang.String,org.apache.poi.xssf.usermodel.XSSFComment)>($r5, r40, $r47);	return
;block_num 6