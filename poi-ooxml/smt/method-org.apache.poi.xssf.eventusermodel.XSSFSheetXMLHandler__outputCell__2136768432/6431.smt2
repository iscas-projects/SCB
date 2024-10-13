(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var379 0)
(declare-sort var3708 0)
(declare-sort var1173 0)
(declare-sort var403 0)
(declare-sort var2099 0)
(declare-sort var1614 0)
(declare-sort var663 0)
(declare-sort var1923 0)
(declare-sort var151 0)
(declare-sort var2730 0)
(declare-sort var3979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formulasNotResults/703833056 (var379) Bool)
(declare-fun nextDataType/703833056 (var379) var403)
(declare-fun ordinal/-291641772 (var2099) Int)
(declare-fun cast-from-var403-to-var2099 (var403) var2099)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/703833056 (var379) String)
(declare-fun append/-1031950772 (String var1614) String)
(declare-fun cast-from-String-to-var1614 (String) var1614)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun checkForEmptyCellComments/1702895080 (var379 var663) void)
(declare-fun comments/703833056 (var379) var1923)
(declare-fun var151-init () var151)
(declare-fun cellRef/703833056 (var379) String)
(declare-fun <init>/-659088608 (var151 String) void)
(declare-fun var1923_findCellComment/-192057447 (var1923 var151) var2730)
(declare-fun output/703833056 (var379) var3979)
(declare-fun var3979_cell/-1778016105 (var3979 String String var2730) void)
(declare-const null-var379 var379)
(declare-const null-String String)
(declare-const var1173-$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType (Array Int Int))
(declare-const var663-CELL var663)
(declare-const null-var1923 var1923)
(declare-const var2182 var379) ; Statement: r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler 
(assert (not (= var2182 null-var379)))
(define-const var1666 String null-String) ; Statement: r40 = null 
(define-const var750 Bool (formulasNotResults/703833056 var2182)) ; Statement: $z0 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults> 
 ; Statement: if $z0 == 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType> 
(assert (= (ite var750 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1018 (Array Int Int) var1173-$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType) ; Statement: $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType> 
(define-const var3518 var403 (nextDataType/703833056 var2182)) ; Statement: $r1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType> 
(assert true)
(define-const var1703 Int (ordinal/-291641772 (cast-from-var403-to-var2099 var3518))) ; Statement: $i0 = virtualinvoke $r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType: int ordinal()>() 
(define-const var551 Int (select var1018 var1703)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 2: goto $r48 = new java.lang.StringBuilder;     case 3: goto $z1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;     case 4: goto $r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString;     case 5: goto $r12 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 6: goto $r3 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     default: goto $r50 = new java.lang.StringBuilder; } 
(assert (and (= var551 2) (and (not (= var551 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var1282 String String-init) ; Statement: $r48 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1282)) ; Statement: specialinvoke $r48.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1282!1 String)
(assert (= var1282!1 ""))
(assert true)
(define-const var330 String (append/672562846 var1282!1 "ERROR:")) ; Statement: $r25 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ERROR:") 
(declare-const var1282!2 String)
(assert (= var1282!2 (str.++ var1282!1 "ERROR:")))
(define-const var2320 String (value/703833056 var2182)) ; Statement: $r24 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value> 
(assert true)
(define-const var2525 String (append/-1031950772 var330 (cast-from-String-to-var1614 var2320))) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r24) 
(declare-const var330!1 String)
(assert (str.prefixof var330 var330!1))
(assert true)
(define-const var1666!1 String (toString/-2075883882 var2525)) ; Statement: r40 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>] 
(assert true) ; Non Conditional
(define-const var2751 var663 var663-CELL) ; Statement: $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL> 
(assert true)
;(assert (checkForEmptyCellComments/1702895080 var2182 var2751)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void checkForEmptyCellComments(org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType)>($r45) 

(declare-const var2182!1 var379)
(declare-const var2751!1 var663)
(define-const var2916 var1923 (comments/703833056 var2182!1)) ; Statement: $r46 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments> 
 ; Statement: if $r46 == null goto $r47 = null 
(assert (not (= var2916 null-var1923))) ; Negate: Cond: $r46 == null  
(define-const var2707 var1923 (comments/703833056 var2182!1)) ; Statement: $r9 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments> 
(define-const var104 var151 var151-init) ; Statement: $r51 = new org.apache.poi.ss.util.CellAddress 
(define-const var3585 String (cellRef/703833056 var2182!1)) ; Statement: $r8 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef> 
(assert true)
;(assert (<init>/-659088608 var104 var3585)) ; Statement: specialinvoke $r51.<org.apache.poi.ss.util.CellAddress: void <init>(java.lang.String)>($r8) 

(declare-const var104!1 var151)
(declare-const var3585!1 String)
(define-const var3155 var2730 (var1923_findCellComment/-192057447 var2707 var104!1)) ; Statement: $r47 = interfaceinvoke $r9.<org.apache.poi.xssf.model.Comments: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r51) 
 ; Statement: goto [?= $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>] 
(assert true) ; Non Conditional
(define-const var1955 var3979 (output/703833056 var2182!1)) ; Statement: $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output> 
(define-const var3625 String (cellRef/703833056 var2182!1)) ; Statement: $r5 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef> 
;(assert (var3979_cell/-1778016105 var1955 var3625 var1666!1 var3155)) ; Statement: interfaceinvoke $r6.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler: void cell(java.lang.String,java.lang.String,org.apache.poi.xssf.usermodel.XSSFComment)>($r5, r40, $r47) 

(declare-const var1955!1 var3979)
(declare-const var3625!1 String)
(declare-const var1666!2 String)
(declare-const var3155!1 var2730)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {formulasNotResults/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], boolean), nextDataType/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var403-to-var2099=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var1614=([java.lang.StringBuilder], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), checkForEmptyCellComments/1702895080=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType], void), comments/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.model.Comments), var151-init=([], org.apache.poi.ss.util.CellAddress), cellRef/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.String), <init>/-659088608=([org.apache.poi.ss.util.CellAddress, java.lang.String], void), var1923_findCellComment/-192057447=([org.apache.poi.xssf.model.Comments, org.apache.poi.ss.util.CellAddress], org.apache.poi.xssf.usermodel.XSSFComment), output/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler), var3979_cell/-1778016105=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, java.lang.String, java.lang.String, org.apache.poi.xssf.usermodel.XSSFComment], void)}
; {var379=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, var2182=r0, var3708=null_type, var1666=r40, var750=$z0, var1173=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1, var1018=$r2, var403=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType, var3518=$r1, var2099=java.lang.Enum, var1703=$i0, var551=$i1, var1282=$r48, var330=$r25, var2320=$r24, var1614=java.lang.Object, var2525=$r26, var663=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType, var2751=$r45, var1923=org.apache.poi.xssf.model.Comments, var2916=$r46, var2707=$r9, var151=org.apache.poi.ss.util.CellAddress, var104=$r51, var3585=$r8, var2730=org.apache.poi.xssf.usermodel.XSSFComment, var3155=$r47, var3979=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, var1955=$r6, var3625=$r5}
; {org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler=var379, r0=var2182, null_type=var3708, r40=var1666, $z0=var750, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1=var1173, $r2=var1018, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType=var403, $r1=var3518, java.lang.Enum=var2099, $i0=var1703, $i1=var551, $r48=var1282, $r25=var330, $r24=var2320, java.lang.Object=var1614, $r26=var2525, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType=var663, $r45=var2751, org.apache.poi.xssf.model.Comments=var1923, $r46=var2916, $r9=var2707, org.apache.poi.ss.util.CellAddress=var151, $r51=var104, $r8=var3585, org.apache.poi.xssf.usermodel.XSSFComment=var2730, $r47=var3155, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler=var3979, $r6=var1955, $r5=var3625}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;	r40 = null;	$z0 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;	if $z0 == 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType>;	$r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType>;	$r1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType>;	$i0 = virtualinvoke $r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r27 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 2: goto $r48 = new java.lang.StringBuilder;     case 3: goto $z1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;     case 4: goto $r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString;     case 5: goto $r12 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 6: goto $r3 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     default: goto $r50 = new java.lang.StringBuilder; };	$r48 = new java.lang.StringBuilder;	specialinvoke $r48.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ERROR:");	$r24 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r24);	r40 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>];	$r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>;	specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void checkForEmptyCellComments(org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType)>($r45);	$r46 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments>;	if $r46 == null goto $r47 = null;	$r9 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments>;	$r51 = new org.apache.poi.ss.util.CellAddress;	$r8 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef>;	specialinvoke $r51.<org.apache.poi.ss.util.CellAddress: void <init>(java.lang.String)>($r8);	$r47 = interfaceinvoke $r9.<org.apache.poi.xssf.model.Comments: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r51);	goto [?= $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>];	$r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>;	$r5 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef>;	interfaceinvoke $r6.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler: void cell(java.lang.String,java.lang.String,org.apache.poi.xssf.usermodel.XSSFComment)>($r5, r40, $r47);	return
;block_num 6