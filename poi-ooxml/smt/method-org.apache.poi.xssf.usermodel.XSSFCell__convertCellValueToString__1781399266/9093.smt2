(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2140 0)
(declare-sort var609 0)
(declare-sort var2712 0)
(declare-sort var2807 0)
(declare-sort var2587 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCellType/2130661539 (var2140) var609)
(declare-fun ordinal/366243679 (var609) Int)
(declare-fun var2807-init () var2807)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2587) String)
(declare-fun cast-from-var609-to-var2587 (var609) var2587)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2807 String) void)
(declare-const null-var2140 var2140)
(declare-const var2712-$SwitchMap$org$apache$poi$ss$usermodel$CellType (Array Int Int))
(declare-const var3594 var2140) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell 
(assert (not (= var3594 null-var2140)))
(assert true)
(define-const var1023 var609 (getCellType/2130661539 var3594)) ; Statement: r35 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>() 
(define-const var485 (Array Int Int) var2712-$SwitchMap$org$apache$poi$ss$usermodel$CellType) ; Statement: $r1 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert true)
(define-const var1191 Int (ordinal/366243679 var1023)) ; Statement: $i0 = virtualinvoke r35.<org.apache.poi.ss.usermodel.CellType: int ordinal()>() 
(define-const var447 Int (select var485 var1191)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "";     case 2: goto $r27 = "1";     case 3: goto goto [?= r37 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getBaseCellType(boolean)>(0)];     case 4: goto $r7 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 5: goto $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 6: goto $r7 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     default: goto $r28 = new java.lang.IllegalStateException; } 
(assert (and (not (= var447 6)) (and (not (= var447 5)) (and (not (= var447 4)) (and (not (= var447 3)) (and (not (= var447 2)) (and (not (= var447 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var3918 var2807 var2807-init) ; Statement: $r28 = new java.lang.IllegalStateException 
(define-const var743 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var743)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var743!1 String)
(assert (= var743!1 ""))
(assert true)
(define-const var325 String (append/672562846 var743!1 "Unexpected cell type (")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected cell type (") 
(declare-const var743!2 String)
(assert (= var743!2 (str.++ var743!1 "Unexpected cell type (")))
(assert true)
(define-const var2577 String (append/-1031950772 var325 (cast-from-var609-to-var2587 var1023))) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r35) 
(declare-const var325!1 String)
(assert (str.prefixof var325 var325!1))
(assert true)
(define-const var2554 String (append/672562846 var2577 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2577!1 String)
(assert (= var2577!1 (str.++ var2577 ")")))
(assert true)
(define-const var1290 String (toString/-2075883882 var2554)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3918 var1290)) ; Statement: specialinvoke $r28.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r33) 

(declare-const var3918!1 var2807)
(declare-const var1290!1 String)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {getCellType/2130661539=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.ss.usermodel.CellType), ordinal/366243679=([org.apache.poi.ss.usermodel.CellType], int), var2807-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var609-to-var2587=([org.apache.poi.ss.usermodel.CellType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2140=org.apache.poi.xssf.usermodel.XSSFCell, var3594=r0, var609=org.apache.poi.ss.usermodel.CellType, var1023=r35, var2712=org.apache.poi.xssf.usermodel.XSSFCell$1, var485=$r1, var1191=$i0, var447=$i1, var2807=java.lang.IllegalStateException, var3918=$r28, var743=$r29, var325=$r30, var2587=java.lang.Object, var2577=$r31, var2554=$r32, var1290=$r33}
; {org.apache.poi.xssf.usermodel.XSSFCell=var2140, r0=var3594, org.apache.poi.ss.usermodel.CellType=var609, r35=var1023, org.apache.poi.xssf.usermodel.XSSFCell$1=var2712, $r1=var485, $i0=var1191, $i1=var447, java.lang.IllegalStateException=var2807, $r28=var3918, $r29=var743, $r30=var325, java.lang.Object=var2587, $r31=var2577, $r32=var2554, $r33=var1290}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell;	r35 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>();	$r1 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$i0 = virtualinvoke r35.<org.apache.poi.ss.usermodel.CellType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "";     case 2: goto $r27 = "1";     case 3: goto goto [?= r37 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getBaseCellType(boolean)>(0)];     case 4: goto $r7 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 5: goto $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 6: goto $r7 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     default: goto $r28 = new java.lang.IllegalStateException; };	$r28 = new java.lang.IllegalStateException;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected cell type (");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r35);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r33);	throw $r28
;block_num 2