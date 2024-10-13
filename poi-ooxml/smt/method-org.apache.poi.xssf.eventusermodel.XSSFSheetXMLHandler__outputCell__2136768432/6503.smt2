(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3567 0)
(declare-sort var1246 0)
(declare-sort var1941 0)
(declare-sort var2548 0)
(declare-sort var538 0)
(declare-sort var1057 0)
(declare-sort var1431 0)
(declare-sort var2973 0)
(declare-sort var3232 0)
(declare-sort var3566 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formulasNotResults/703833056 (var3567) Bool)
(declare-fun nextDataType/703833056 (var3567) var2548)
(declare-fun ordinal/-291641772 (var538) Int)
(declare-fun cast-from-var2548-to-var538 (var2548) var538)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1057) String)
(declare-fun cast-from-var2548-to-var1057 (var2548) var1057)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun checkForEmptyCellComments/1702895080 (var3567 var1431) void)
(declare-fun comments/703833056 (var3567) var2973)
(declare-fun output/703833056 (var3567) var3566)
(declare-fun cellRef/703833056 (var3567) String)
(declare-fun var3566_cell/-1778016105 (var3566 String String var3232) void)
(declare-const null-var3567 var3567)
(declare-const null-String String)
(declare-const var1941-$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType (Array Int Int))
(declare-const var1431-CELL var1431)
(declare-const null-var2973 var2973)
(declare-const null-var3232 var3232)
(declare-const var3576 var3567) ; Statement: r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler 
(assert (not (= var3576 null-var3567)))
(define-const var3199 String null-String) ; Statement: r40 = null 
(define-const var2306 Bool (formulasNotResults/703833056 var3576)) ; Statement: $z0 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults> 
 ; Statement: if $z0 == 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType> 
(assert (= (ite var2306 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3923 (Array Int Int) var1941-$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType) ; Statement: $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType> 
(define-const var3832 var2548 (nextDataType/703833056 var3576)) ; Statement: $r1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType> 
(assert true)
(define-const var2009 Int (ordinal/-291641772 (cast-from-var2548-to-var538 var3832))) ; Statement: $i0 = virtualinvoke $r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType: int ordinal()>() 
(define-const var3058 Int (select var3923 var2009)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 2: goto $r48 = new java.lang.StringBuilder;     case 3: goto $z1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;     case 4: goto $r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString;     case 5: goto $r12 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 6: goto $r3 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     default: goto $r50 = new java.lang.StringBuilder; } 
(assert (and (not (= var3058 6)) (and (not (= var3058 5)) (and (not (= var3058 4)) (and (not (= var3058 3)) (and (not (= var3058 2)) (and (not (= var3058 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var122 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var122)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var122!1 String)
(assert (= var122!1 ""))
(assert true)
(define-const var2652 String (append/672562846 var122!1 "(TODO: Unexpected type: ")) ; Statement: $r30 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(TODO: Unexpected type: ") 
(declare-const var122!2 String)
(assert (= var122!2 (str.++ var122!1 "(TODO: Unexpected type: ")))
(define-const var170 var2548 (nextDataType/703833056 var3576)) ; Statement: $r29 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType> 
(assert true)
(define-const var2427 String (append/-1031950772 var2652 (cast-from-var2548-to-var1057 var170))) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r29) 
(declare-const var2652!1 String)
(assert (str.prefixof var2652 var2652!1))
(assert true)
(define-const var400 String (append/672562846 var2427 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2427!1 String)
(assert (= var2427!1 (str.++ var2427 ")")))
(assert true)
(define-const var3199!1 String (toString/-2075883882 var400)) ; Statement: r40 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2584 var1431 var1431-CELL) ; Statement: $r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL> 
(assert true)
;(assert (checkForEmptyCellComments/1702895080 var3576 var2584)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void checkForEmptyCellComments(org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType)>($r45) 

(declare-const var3576!1 var3567)
(declare-const var2584!1 var1431)
(define-const var914 var2973 (comments/703833056 var3576!1)) ; Statement: $r46 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments> 
 ; Statement: if $r46 == null goto $r47 = null 
(assert (= var914 null-var2973)) ; Cond: $r46 == null 
(define-const var1172 var3232 null-var3232) ; Statement: $r47 = null 
(assert true) ; Non Conditional
(define-const var772 var3566 (output/703833056 var3576!1)) ; Statement: $r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output> 
(define-const var2576 String (cellRef/703833056 var3576!1)) ; Statement: $r5 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef> 
;(assert (var3566_cell/-1778016105 var772 var2576 var3199!1 var1172)) ; Statement: interfaceinvoke $r6.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler: void cell(java.lang.String,java.lang.String,org.apache.poi.xssf.usermodel.XSSFComment)>($r5, r40, $r47) 

(declare-const var772!1 var3566)
(declare-const var2576!1 String)
(declare-const var3199!2 String)
(declare-const var1172!1 var3232)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {formulasNotResults/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], boolean), nextDataType/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2548-to-var538=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2548-to-var1057=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), checkForEmptyCellComments/1702895080=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType], void), comments/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.model.Comments), output/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler), cellRef/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.String), var3566_cell/-1778016105=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, java.lang.String, java.lang.String, org.apache.poi.xssf.usermodel.XSSFComment], void)}
; {var3567=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, var3576=r0, var1246=null_type, var3199=r40, var2306=$z0, var1941=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1, var3923=$r2, var2548=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType, var3832=$r1, var538=java.lang.Enum, var2009=$i0, var3058=$i1, var122=$r50, var2652=$r30, var170=$r29, var1057=java.lang.Object, var2427=$r31, var400=$r32, var1431=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType, var2584=$r45, var2973=org.apache.poi.xssf.model.Comments, var914=$r46, var3232=org.apache.poi.xssf.usermodel.XSSFComment, var1172=$r47, var3566=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, var772=$r6, var2576=$r5}
; {org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler=var3567, r0=var3576, null_type=var1246, r40=var3199, $z0=var2306, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1=var1941, $r2=var3923, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType=var2548, $r1=var3832, java.lang.Enum=var538, $i0=var2009, $i1=var3058, $r50=var122, $r30=var2652, $r29=var170, java.lang.Object=var1057, $r31=var2427, $r32=var400, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType=var1431, $r45=var2584, org.apache.poi.xssf.model.Comments=var2973, $r46=var914, org.apache.poi.xssf.usermodel.XSSFComment=var3232, $r47=var1172, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler=var3566, $r6=var772, $r5=var2576}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;	r40 = null;	$z0 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;	if $z0 == 0 goto $r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType>;	$r2 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1: int[] $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType>;	$r1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType>;	$i0 = virtualinvoke $r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r27 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 2: goto $r48 = new java.lang.StringBuilder;     case 3: goto $z1 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults>;     case 4: goto $r49 = new org.apache.poi.xssf.usermodel.XSSFRichTextString;     case 5: goto $r12 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     case 6: goto $r3 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value>;     default: goto $r50 = new java.lang.StringBuilder; };	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(TODO: Unexpected type: ");	$r29 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType>;	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r40 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	$r45 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType CELL>;	specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void checkForEmptyCellComments(org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$EmptyCellCommentsCheckType)>($r45);	$r46 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments>;	if $r46 == null goto $r47 = null;	$r47 = null;	$r6 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output>;	$r5 = r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.String cellRef>;	interfaceinvoke $r6.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler: void cell(java.lang.String,java.lang.String,org.apache.poi.xssf.usermodel.XSSFComment)>($r5, r40, $r47);	return
;block_num 6