(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2563 0)
(declare-sort var979 0)
(declare-sort var3848 0)
(declare-sort var788 0)
(declare-sort var2301 0)
(declare-sort var2558 0)
(declare-sort var1150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formulasNotResults/703833056 (var2563) Bool)
(declare-fun formula/703833056 (var2563) String)
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun checkForEmptyCellComments/1702895080 (var2563 var3848) void)
(declare-fun comments/703833056 (var2563) var788)
(declare-fun var2301-init () var2301)
(declare-fun cellRef/703833056 (var2563) String)
(declare-fun <init>/-659088608 (var2301 String) void)
(declare-fun var788_findCellComment/-192057447 (var788 var2301) var2558)
(declare-fun output/703833056 (var2563) var1150)
(declare-fun var1150_cell/-1778016105 (var1150 String String var2558) void)
(declare-const null-var2563 var2563)
(declare-const null-String String)
(declare-const var3848-CELL var3848)
(declare-const null-var788 var788)
(declare-const var392 var2563) ; Statement: r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler 
(assert (not (= var392 null-var2563)))
(define-const var3203 String null-String) ; Statement: r40 = null 
(define-const var3186 Bool (formulasNotResults/703833056 var392)) ; Statement: $z0 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults> 
 ; Statement: if $z0 == 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType> 
(assert (not (= (ite var3186 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3263 String (formula/703833056 var392)) ; Statement: $r33 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder formula> 
(assert true)
(define-const var1329 Int (length/-171891354 var3263)) ; Statement: $i6 = virtualinvoke $r33.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i6 <= 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType> 
(assert (not (<= var1329 0))) ; Negate: Cond: $i6 <= 0  
(define-const var3102 String (formula/703833056 var392)) ; Statement: $r34 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder formula> 
(assert true)
(define-const var3203!1 String (toString/-2075883882 var3102)) ; Statement: r40 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>] 
(assert true) ; Non Conditional
(define-const var2252 var3848 var3848-CELL) ; Statement: $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL> 
(assert true)
;(assert (checkForEmptyCellComments/1702895080 var392 var2252)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void checkForEmptyCellComments(org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType)>($r45) 

(declare-const var392!1 var2563)
(declare-const var2252!1 var3848)
(define-const var2196 var788 (comments/703833056 var392!1)) ; Statement: $r46 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments> 
 ; Statement: if $r46 == null goto $r47 = null 
(assert (not (= var2196 null-var788))) ; Negate: Cond: $r46 == null  
(define-const var3528 var788 (comments/703833056 var392!1)) ; Statement: $r9 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments> 
(define-const var3580 var2301 var2301-init) ; Statement: $r51 = new org.apache.poi.ss.util.CellAddress 
(define-const var2648 String (cellRef/703833056 var392!1)) ; Statement: $r8 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef> 
(assert true)
;(assert (<init>/-659088608 var3580 var2648)) ; Statement: specialinvoke $r51.<org.apache.poi.ss.util.CellAddress: void <init>(java.lang.String)>($r8) 

(declare-const var3580!1 var2301)
(declare-const var2648!1 String)
(define-const var2070 var2558 (var788_findCellComment/-192057447 var3528 var3580!1)) ; Statement: $r47 = interfaceinvoke $r9.<org.apache.poi.xssf.model.Comments: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r51) 
 ; Statement: goto [?= $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>] 
(assert true) ; Non Conditional
(define-const var2059 var1150 (output/703833056 var392!1)) ; Statement: $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output> 
(define-const var3288 String (cellRef/703833056 var392!1)) ; Statement: $r5 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef> 
;(assert (var1150_cell/-1778016105 var2059 var3288 var3203!1 var2070)) ; Statement: interfaceinvoke $r6.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler: void cell(java.lang.String,java.lang.String,org.apache.poi.xssf.usermodel.XSSFComment)>($r5, r40, $r47) 

(declare-const var2059!1 var1150)
(declare-const var3288!1 String)
(declare-const var3203!2 String)
(declare-const var2070!1 var2558)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {formulasNotResults/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], boolean), formula/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), checkForEmptyCellComments/1702895080=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType], void), comments/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.model.Comments), var2301-init=([], org.apache.poi.ss.util.CellAddress), cellRef/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.String), <init>/-659088608=([org.apache.poi.ss.util.CellAddress, java.lang.String], void), var788_findCellComment/-192057447=([org.apache.poi.xssf.model.Comments, org.apache.poi.ss.util.CellAddress], org.apache.poi.xssf.usermodel.XSSFComment), output/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler), var1150_cell/-1778016105=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, java.lang.String, java.lang.String, org.apache.poi.xssf.usermodel.XSSFComment], void)}
; {var2563=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, var392=r0, var979=null_type, var3203=r40, var3186=$z0, var3263=$r33, var1329=$i6, var3102=$r34, var3848=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType, var2252=$r45, var788=org.apache.poi.xssf.model.Comments, var2196=$r46, var3528=$r9, var2301=org.apache.poi.ss.util.CellAddress, var3580=$r51, var2648=$r8, var2558=org.apache.poi.xssf.usermodel.XSSFComment, var2070=$r47, var1150=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, var2059=$r6, var3288=$r5}
; {org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler=var2563, r0=var392, null_type=var979, r40=var3203, $z0=var3186, $r33=var3263, $i6=var1329, $r34=var3102, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType=var3848, $r45=var2252, org.apache.poi.xssf.model.Comments=var788, $r46=var2196, $r9=var3528, org.apache.poi.ss.util.CellAddress=var2301, $r51=var3580, $r8=var2648, org.apache.poi.xssf.usermodel.XSSFComment=var2558, $r47=var2070, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler=var1150, $r6=var2059, $r5=var3288}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;	r40 = null;	$z0 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;	if $z0 == 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType>;	$r33 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder formula>;	$i6 = virtualinvoke $r33.<java.lang.StringBuilder: int length()>();	if $i6 <= 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType>;	$r34 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder formula>;	r40 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>];	$r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>;	specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void checkForEmptyCellComments(org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType)>($r45);	$r46 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments>;	if $r46 == null goto $r47 = null;	$r9 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments>;	$r51 = new org.apache.poi.ss.util.CellAddress;	$r8 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef>;	specialinvoke $r51.<org.apache.poi.ss.util.CellAddress: void <init>(java.lang.String)>($r8);	$r47 = interfaceinvoke $r9.<org.apache.poi.xssf.model.Comments: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r51);	goto [?= $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>];	$r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>;	$r5 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef>;	interfaceinvoke $r6.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler: void cell(java.lang.String,java.lang.String,org.apache.poi.xssf.usermodel.XSSFComment)>($r5, r40, $r47);	return
;block_num 6