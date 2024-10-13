(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var305 0)
(declare-sort var1847 0)
(declare-sort var418 0)
(declare-sort var186 0)
(declare-sort var1491 0)
(declare-sort var3937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCellType/2130661539 (var305) var1847)
(declare-fun ordinal/366243679 (var1847) Int)
(declare-fun var1491-init () var1491)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3937) String)
(declare-fun cast-from-var1847-to-var3937 (var1847) var3937)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1491 String) void)
(declare-const null-var305 var305)
(declare-const null-var1847 var1847)
(declare-const null-var418 var418)
(declare-const var1847-FORMULA var1847)
(declare-const var186-$SwitchMap$org$apache$poi$ss$usermodel$CellType (Array Int Int))
(declare-const var1059 var305) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell 
(assert (not (= var1059 null-var305)))
(declare-const var3401 var1847) ; Statement: r3 := @parameter0: org.apache.poi.ss.usermodel.CellType 
(assert (not (= var3401 null-var1847)))
(declare-const var758 var418) ; Statement: r37 := @parameter1: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook 
(assert (not (= var758 null-var418)))
(assert true)
(define-const var99 var1847 (getCellType/2130661539 var1059)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>() 
(define-const var2850 var1847 var1847-FORMULA) ; Statement: $r2 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType FORMULA> 
 ; Statement: if r1 != $r2 goto $r39 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert (not (= var99 var2850))) ; Cond: r1 != $r2 
(define-const var2832 (Array Int Int) var186-$SwitchMap$org$apache$poi$ss$usermodel$CellType) ; Statement: $r39 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert true)
(define-const var3205 Int (ordinal/366243679 var3401)) ; Statement: $i1 = virtualinvoke r3.<org.apache.poi.ss.usermodel.CellType: int ordinal()>() 
(define-const var1578 Int (select var2832 var3205)) ; Statement: $i2 = $r39[$i1] 
 ; Statement: tableswitch($i2) {     case 1: goto specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlankPrivate()>();     case 2: goto $z3 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: boolean convertCellValueToBoolean()>();     case 3: goto $r18 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 4: goto $r17 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 5: goto $r8 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType STRING>;     case 6: goto $r5 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     default: goto $r27 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1578 6)) (and (not (= var1578 5)) (and (not (= var1578 4)) (and (not (= var1578 3)) (and (not (= var1578 2)) (and (not (= var1578 1)) true))))))) ; Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional      
(define-const var887 var1491 var1491-init) ; Statement: $r27 = new java.lang.IllegalArgumentException 
(define-const var2729 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2729)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2729!1 String)
(assert (= var2729!1 ""))
(assert true)
(define-const var2824 String (append/672562846 var2729!1 "Illegal cell type: ")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal cell type: ") 
(declare-const var2729!2 String)
(assert (= var2729!2 (str.++ var2729!1 "Illegal cell type: ")))
(assert true)
(define-const var3306 String (append/-1031950772 var2824 (cast-from-var1847-to-var3937 var3401))) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var2824!1 String)
(assert (str.prefixof var2824 var2824!1))
(assert true)
(define-const var2043 String (toString/-2075883882 var3306)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var887 var2043)) ; Statement: specialinvoke $r27.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r31) 

(declare-const var887!1 var1491)
(declare-const var2043!1 String)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {getCellType/2130661539=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.ss.usermodel.CellType), ordinal/366243679=([org.apache.poi.ss.usermodel.CellType], int), var1491-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1847-to-var3937=([org.apache.poi.ss.usermodel.CellType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var305=org.apache.poi.xssf.usermodel.XSSFCell, var1059=r0, var1847=org.apache.poi.ss.usermodel.CellType, var3401=r3, var418=org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook, var758=r37, var99=r1, var2850=$r2, var186=org.apache.poi.xssf.usermodel.XSSFCell$1, var2832=$r39, var3205=$i1, var1578=$i2, var1491=java.lang.IllegalArgumentException, var887=$r27, var2729=$r28, var2824=$r29, var3937=java.lang.Object, var3306=$r30, var2043=$r31}
; {org.apache.poi.xssf.usermodel.XSSFCell=var305, r0=var1059, org.apache.poi.ss.usermodel.CellType=var1847, r3=var3401, org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook=var418, r37=var758, r1=var99, $r2=var2850, org.apache.poi.xssf.usermodel.XSSFCell$1=var186, $r39=var2832, $i1=var3205, $i2=var1578, java.lang.IllegalArgumentException=var1491, $r27=var887, $r28=var2729, $r29=var2824, java.lang.Object=var3937, $r30=var3306, $r31=var2043}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell;	r3 := @parameter0: org.apache.poi.ss.usermodel.CellType;	r37 := @parameter1: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook;	r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>();	$r2 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType FORMULA>;	if r1 != $r2 goto $r39 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$r39 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$i1 = virtualinvoke r3.<org.apache.poi.ss.usermodel.CellType: int ordinal()>();	$i2 = $r39[$i1];	tableswitch($i2) {     case 1: goto specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlankPrivate()>();     case 2: goto $z3 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: boolean convertCellValueToBoolean()>();     case 3: goto $r18 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 4: goto $r17 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 5: goto $r8 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType STRING>;     case 6: goto $r5 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     default: goto $r27 = new java.lang.IllegalArgumentException; };	$r27 = new java.lang.IllegalArgumentException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal cell type: ");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r31);	throw $r27
;block_num 3