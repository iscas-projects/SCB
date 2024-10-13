(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3064 0)
(declare-sort var1720 0)
(declare-sort var850 0)
(declare-sort var834 0)
(declare-sort var996 0)
(declare-sort var3365 0)
(declare-sort var301 0)
(declare-sort var3902 0)
(declare-sort var2619 0)
(declare-sort var487 0)
(declare-sort var508 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formulasNotResults/703833056 (var3064) Bool)
(declare-fun nextDataType/703833056 (var3064) var834)
(declare-fun ordinal/-291641772 (var996) Int)
(declare-fun cast-from-var834-to-var996 (var834) var996)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3365) String)
(declare-fun cast-from-var834-to-var3365 (var834) var3365)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun checkForEmptyCellComments/1702895080 (var3064 var301) void)
(declare-fun comments/703833056 (var3064) var3902)
(declare-fun var2619-init () var2619)
(declare-fun cellRef/703833056 (var3064) String)
(declare-fun <init>/-659088608 (var2619 String) void)
(declare-fun var3902_findCellComment/-192057447 (var3902 var2619) var487)
(declare-fun output/703833056 (var3064) var508)
(declare-fun var508_cell/-1778016105 (var508 String String var487) void)
(declare-const null-var3064 var3064)
(declare-const null-String String)
(declare-const var850-$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType (Array Int Int))
(declare-const var301-CELL var301)
(declare-const null-var3902 var3902)
(declare-const var1909 var3064) ; Statement: r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler 
(assert (not (= var1909 null-var3064)))
(define-const var835 String null-String) ; Statement: r40 = null 
(define-const var3306 Bool (formulasNotResults/703833056 var1909)) ; Statement: $z0 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults> 
 ; Statement: if $z0 == 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType> 
(assert (= (ite var3306 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1593 (Array Int Int) var850-$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType) ; Statement: $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType> 
(define-const var2024 var834 (nextDataType/703833056 var1909)) ; Statement: $r1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType> 
(assert true)
(define-const var1132 Int (ordinal/-291641772 (cast-from-var834-to-var996 var2024))) ; Statement: $i0 = virtualinvoke $r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType: int ordinal()>() 
(define-const var3979 Int (select var1593 var1132)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 2: goto $r48 = new java.lang.StringBuilder;     case 3: goto $z1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;     case 4: goto $r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString;     case 5: goto $r12 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 6: goto $r3 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     default: goto $r50 = new java.lang.StringBuilder; } 
(assert (and (not (= var3979 6)) (and (not (= var3979 5)) (and (not (= var3979 4)) (and (not (= var3979 3)) (and (not (= var3979 2)) (and (not (= var3979 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var992 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var992)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var992!1 String)
(assert (= var992!1 ""))
(assert true)
(define-const var3722 String (append/672562846 var992!1 "(TODO: Unexpected type: ")) ; Statement: $r30 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(TODO: Unexpected type: ") 
(declare-const var992!2 String)
(assert (= var992!2 (str.++ var992!1 "(TODO: Unexpected type: ")))
(define-const var1152 var834 (nextDataType/703833056 var1909)) ; Statement: $r29 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType> 
(assert true)
(define-const var621 String (append/-1031950772 var3722 (cast-from-var834-to-var3365 var1152))) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r29) 
(declare-const var3722!1 String)
(assert (str.prefixof var3722 var3722!1))
(assert true)
(define-const var2991 String (append/672562846 var621 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var621!1 String)
(assert (= var621!1 (str.++ var621 ")")))
(assert true)
(define-const var835!1 String (toString/-2075883882 var2991)) ; Statement: r40 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var740 var301 var301-CELL) ; Statement: $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL> 
(assert true)
;(assert (checkForEmptyCellComments/1702895080 var1909 var740)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void checkForEmptyCellComments(org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType)>($r45) 

(declare-const var1909!1 var3064)
(declare-const var740!1 var301)
(define-const var2762 var3902 (comments/703833056 var1909!1)) ; Statement: $r46 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments> 
 ; Statement: if $r46 == null goto $r47 = null 
(assert (not (= var2762 null-var3902))) ; Negate: Cond: $r46 == null  
(define-const var2842 var3902 (comments/703833056 var1909!1)) ; Statement: $r9 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments> 
(define-const var195 var2619 var2619-init) ; Statement: $r51 = new org.apache.poi.ss.util.CellAddress 
(define-const var145 String (cellRef/703833056 var1909!1)) ; Statement: $r8 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef> 
(assert true)
;(assert (<init>/-659088608 var195 var145)) ; Statement: specialinvoke $r51.<org.apache.poi.ss.util.CellAddress: void <init>(java.lang.String)>($r8) 

(declare-const var195!1 var2619)
(declare-const var145!1 String)
(define-const var2539 var487 (var3902_findCellComment/-192057447 var2842 var195!1)) ; Statement: $r47 = interfaceinvoke $r9.<org.apache.poi.xssf.model.Comments: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r51) 
 ; Statement: goto [?= $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>] 
(assert true) ; Non Conditional
(define-const var2860 var508 (output/703833056 var1909!1)) ; Statement: $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output> 
(define-const var3491 String (cellRef/703833056 var1909!1)) ; Statement: $r5 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef> 
;(assert (var508_cell/-1778016105 var2860 var3491 var835!1 var2539)) ; Statement: interfaceinvoke $r6.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler: void cell(java.lang.String,java.lang.String,org.apache.poi.xssf.usermodel.XSSFComment)>($r5, r40, $r47) 

(declare-const var2860!1 var508)
(declare-const var3491!1 String)
(declare-const var835!2 String)
(declare-const var2539!1 var487)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {formulasNotResults/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], boolean), nextDataType/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var834-to-var996=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var834-to-var3365=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), checkForEmptyCellComments/1702895080=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType], void), comments/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.model.Comments), var2619-init=([], org.apache.poi.ss.util.CellAddress), cellRef/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.String), <init>/-659088608=([org.apache.poi.ss.util.CellAddress, java.lang.String], void), var3902_findCellComment/-192057447=([org.apache.poi.xssf.model.Comments, org.apache.poi.ss.util.CellAddress], org.apache.poi.xssf.usermodel.XSSFComment), output/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler), var508_cell/-1778016105=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, java.lang.String, java.lang.String, org.apache.poi.xssf.usermodel.XSSFComment], void)}
; {var3064=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, var1909=r0, var1720=null_type, var835=r40, var3306=$z0, var850=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1, var1593=$r2, var834=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType, var2024=$r1, var996=java.lang.Enum, var1132=$i0, var3979=$i1, var992=$r50, var3722=$r30, var1152=$r29, var3365=java.lang.Object, var621=$r31, var2991=$r32, var301=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType, var740=$r45, var3902=org.apache.poi.xssf.model.Comments, var2762=$r46, var2842=$r9, var2619=org.apache.poi.ss.util.CellAddress, var195=$r51, var145=$r8, var487=org.apache.poi.xssf.usermodel.XSSFComment, var2539=$r47, var508=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, var2860=$r6, var3491=$r5}
; {org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler=var3064, r0=var1909, null_type=var1720, r40=var835, $z0=var3306, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1=var850, $r2=var1593, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType=var834, $r1=var2024, java.lang.Enum=var996, $i0=var1132, $i1=var3979, $r50=var992, $r30=var3722, $r29=var1152, java.lang.Object=var3365, $r31=var621, $r32=var2991, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType=var301, $r45=var740, org.apache.poi.xssf.model.Comments=var3902, $r46=var2762, $r9=var2842, org.apache.poi.ss.util.CellAddress=var2619, $r51=var195, $r8=var145, org.apache.poi.xssf.usermodel.XSSFComment=var487, $r47=var2539, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler=var508, $r6=var2860, $r5=var3491}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;	r40 = null;	$z0 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;	if $z0 == 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType>;	$r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType>;	$r1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType>;	$i0 = virtualinvoke $r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r27 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 2: goto $r48 = new java.lang.StringBuilder;     case 3: goto $z1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;     case 4: goto $r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString;     case 5: goto $r12 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 6: goto $r3 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     default: goto $r50 = new java.lang.StringBuilder; };	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(TODO: Unexpected type: ");	$r29 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType>;	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r40 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	$r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>;	specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void checkForEmptyCellComments(org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType)>($r45);	$r46 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments>;	if $r46 == null goto $r47 = null;	$r9 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments>;	$r51 = new org.apache.poi.ss.util.CellAddress;	$r8 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef>;	specialinvoke $r51.<org.apache.poi.ss.util.CellAddress: void <init>(java.lang.String)>($r8);	$r47 = interfaceinvoke $r9.<org.apache.poi.xssf.model.Comments: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r51);	goto [?= $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>];	$r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>;	$r5 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef>;	interfaceinvoke $r6.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler: void cell(java.lang.String,java.lang.String,org.apache.poi.xssf.usermodel.XSSFComment)>($r5, r40, $r47);	return
;block_num 6