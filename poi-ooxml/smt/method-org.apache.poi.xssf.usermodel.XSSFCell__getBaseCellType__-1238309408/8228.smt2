(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3246 0)
(declare-sort var3117 0)
(declare-sort var3221 0)
(declare-sort var2315 0)
(declare-sort var1643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _cell/-35988186 (var3246) var3117)
(declare-fun var3117_getT/697056276 (var3117) var3221)
(declare-fun intValue/-1647328761 (var3221) Int)
(declare-fun var2315-init () var2315)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1643) String)
(declare-fun cast-from-var3221-to-var1643 (var3221) var1643)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2315 String) void)
(declare-const null-var3246 var3246)
(declare-const null-Bool Bool)
(declare-const var1998 var3246) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell 
(assert (not (= var1998 null-var3246)))
(declare-const var2517 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var2517 null-Bool)))
(define-const var3685 var3117 (_cell/-35988186 var1998)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell> 
(define-const var1051 var3221 (var3117_getT/697056276 var3685)) ; Statement: $r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum getT()>() 
(assert true)
(define-const var1796 Int (intValue/-1647328761 var1051)) ; Statement: $i0 = virtualinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum: int intValue()>() 
 ; Statement: tableswitch($i0) {     case 1: goto $r8 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType BOOLEAN>;     case 2: goto $r5 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 3: goto $r4 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType ERROR>;     case 4: goto $r3 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType STRING>;     case 5: goto $r3 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType STRING>;     case 6: goto $r3 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType STRING>;     default: goto $r9 = new java.lang.IllegalStateException; } 
(assert (and (not (= var1796 6)) (and (not (= var1796 5)) (and (not (= var1796 4)) (and (not (= var1796 3)) (and (not (= var1796 2)) (and (not (= var1796 1)) true))))))) ; Intersect: Negate: Cond: $i0 == 6   and Intersect: Negate: Cond: $i0 == 5   and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Non Conditional      
(define-const var2705 var2315 var2315-init) ; Statement: $r9 = new java.lang.IllegalStateException 
(define-const var3837 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3837)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3837!1 String)
(assert (= var3837!1 ""))
(assert true)
(define-const var1354 String (append/672562846 var3837!1 "Illegal cell type: ")) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal cell type: ") 
(declare-const var3837!2 String)
(assert (= var3837!2 (str.++ var3837!1 "Illegal cell type: ")))
(define-const var2486 var3117 (_cell/-35988186 var1998)) ; Statement: $r11 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell> 
(define-const var3950 var3221 (var3117_getT/697056276 var2486)) ; Statement: $r12 = interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum getT()>() 
(assert true)
(define-const var2117 String (append/-1031950772 var1354 (cast-from-var3221-to-var1643 var3950))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var1354!1 String)
(assert (str.prefixof var1354 var1354!1))
(assert true)
(define-const var2552 String (toString/-2075883882 var2117)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2705 var2552)) ; Statement: specialinvoke $r9.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15) 

(declare-const var2705!1 var2315)
(declare-const var2552!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {_cell/-35988186=([org.apache.poi.xssf.usermodel.XSSFCell], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell), var3117_getT/697056276=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell], org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum), intValue/-1647328761=([org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum], int), var2315-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3221-to-var1643=([org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3246=org.apache.poi.xssf.usermodel.XSSFCell, var1998=r0, var2517=z1, var3117=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell, var3685=$r1, var3221=org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum, var1051=$r2, var1796=$i0, var2315=java.lang.IllegalStateException, var2705=$r9, var3837=$r10, var1354=$r13, var2486=$r11, var3950=$r12, var1643=java.lang.Object, var2117=$r14, var2552=$r15}
; {org.apache.poi.xssf.usermodel.XSSFCell=var3246, r0=var1998, z1=var2517, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell=var3117, $r1=var3685, org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum=var3221, $r2=var1051, $i0=var1796, java.lang.IllegalStateException=var2315, $r9=var2705, $r10=var3837, $r13=var1354, $r11=var2486, $r12=var3950, java.lang.Object=var1643, $r14=var2117, $r15=var2552}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell;	z1 := @parameter0: boolean;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;	$r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum getT()>();	$i0 = virtualinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum: int intValue()>();	tableswitch($i0) {     case 1: goto $r8 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType BOOLEAN>;     case 2: goto $r5 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 3: goto $r4 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType ERROR>;     case 4: goto $r3 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType STRING>;     case 5: goto $r3 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType STRING>;     case 6: goto $r3 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType STRING>;     default: goto $r9 = new java.lang.IllegalStateException; };	$r9 = new java.lang.IllegalStateException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal cell type: ");	$r11 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;	$r12 = interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum getT()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15);	throw $r9
;block_num 2