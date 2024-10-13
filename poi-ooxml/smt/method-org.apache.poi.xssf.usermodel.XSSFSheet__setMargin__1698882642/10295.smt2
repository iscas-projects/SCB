(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1417 0)
(declare-sort var1369 0)
(declare-sort var2603 0)
(declare-sort var1295 0)
(declare-sort var2065 0)
(declare-sort var2541 0)
(declare-sort var468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun worksheet/-1100774885 (var1417) var2603)
(declare-fun var2603_isSetPageMargins/-586364977 (var2603) Bool)
(declare-fun var2603_getPageMargins/-381580261 (var2603) var1295)
(declare-fun ordinal/907589312 (var1369) Int)
(declare-fun var2541-init () var2541)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var468) String)
(declare-fun cast-from-var1369-to-var468 (var1369) var468)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2541 String) void)
(declare-const null-var1417 var1417)
(declare-const null-var1369 var1369)
(declare-const null-Float64 Float64)
(declare-const var2065-$SwitchMap$org$apache$poi$ss$usermodel$PageMargin (Array Int Int))
(declare-const var40 var1417) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var40 null-var1417)))
(declare-const var1996 var1369) ; Statement: r3 := @parameter0: org.apache.poi.ss.usermodel.PageMargin 
(assert (not (= var1996 null-var1369)))
(declare-const var3748 Float64) ; Statement: d0 := @parameter1: double 
(assert (not (= var3748 null-Float64)))
(define-const var1622 var2603 (worksheet/-1100774885 var40)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var3506 Bool (var2603_isSetPageMargins/-586364977 var1622)) ; Statement: $z0 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: boolean isSetPageMargins()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(assert (not (= (ite var3506 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1184 var2603 (worksheet/-1100774885 var40)) ; Statement: $r10 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var3730 var1295 (var2603_getPageMargins/-381580261 var1184)) ; Statement: $r11 = interfaceinvoke $r10.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins getPageMargins()>() 
 ; Statement: goto [?= $r4 = <org.apache.poi.xssf.usermodel.XSSFSheet$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$PageMargin>] 
(assert true) ; Non Conditional
(define-const var3865 (Array Int Int) var2065-$SwitchMap$org$apache$poi$ss$usermodel$PageMargin) ; Statement: $r4 = <org.apache.poi.xssf.usermodel.XSSFSheet$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$PageMargin> 
(assert true)
(define-const var925 Int (ordinal/907589312 var1996)) ; Statement: $i0 = virtualinvoke r3.<org.apache.poi.ss.usermodel.PageMargin: int ordinal()>() 
(define-const var399 Int (select var3865 var925)) ; Statement: $i1 = $r4[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setLeft(double)>(d0);     case 2: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setRight(double)>(d0);     case 3: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setTop(double)>(d0);     case 4: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setBottom(double)>(d0);     case 5: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setHeader(double)>(d0);     case 6: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setFooter(double)>(d0);     default: goto $r5 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var399 6)) (and (not (= var399 5)) (and (not (= var399 4)) (and (not (= var399 3)) (and (not (= var399 2)) (and (not (= var399 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var2338 var2541 var2541-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var3116 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3116)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3116!1 String)
(assert (= var3116!1 ""))
(assert true)
(define-const var1750 String (append/672562846 var3116!1 "Unknown margin constant:  ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown margin constant:  ") 
(declare-const var3116!2 String)
(assert (= var3116!2 (str.++ var3116!1 "Unknown margin constant:  ")))
(assert true)
(define-const var1098 String (append/-1031950772 var1750 (cast-from-var1369-to-var468 var1996))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var1750!1 String)
(assert (str.prefixof var1750 var1750!1))
(assert true)
(define-const var3752 String (toString/-2075883882 var1098)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2338 var3752)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var2338!1 var2541)
(declare-const var3752!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {worksheet/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet), var2603_isSetPageMargins/-586364977=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet], boolean), var2603_getPageMargins/-381580261=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins), ordinal/907589312=([org.apache.poi.ss.usermodel.PageMargin], int), var2541-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1369-to-var468=([org.apache.poi.ss.usermodel.PageMargin], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1417=org.apache.poi.xssf.usermodel.XSSFSheet, var40=r0, var1369=org.apache.poi.ss.usermodel.PageMargin, var1996=r3, var3748=d0, var2603=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet, var1622=$r1, var3506=$z0, var1184=$r10, var1295=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins, var3730=$r11, var2065=org.apache.poi.xssf.usermodel.XSSFSheet$1, var3865=$r4, var925=$i0, var399=$i1, var2541=java.lang.IllegalArgumentException, var2338=$r5, var3116=$r6, var1750=$r7, var468=java.lang.Object, var1098=$r8, var3752=$r9}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var1417, r0=var40, org.apache.poi.ss.usermodel.PageMargin=var1369, r3=var1996, d0=var3748, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet=var2603, $r1=var1622, $z0=var3506, $r10=var1184, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins=var1295, $r11=var3730, org.apache.poi.xssf.usermodel.XSSFSheet$1=var2065, $r4=var3865, $i0=var925, $i1=var399, java.lang.IllegalArgumentException=var2541, $r5=var2338, $r6=var3116, $r7=var1750, java.lang.Object=var468, $r8=var1098, $r9=var3752}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r3 := @parameter0: org.apache.poi.ss.usermodel.PageMargin;	d0 := @parameter1: double;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	$z0 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: boolean isSetPageMargins()>();	if $z0 == 0 goto $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	$r10 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	$r11 = interfaceinvoke $r10.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins getPageMargins()>();	goto [?= $r4 = <org.apache.poi.xssf.usermodel.XSSFSheet$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$PageMargin>];	$r4 = <org.apache.poi.xssf.usermodel.XSSFSheet$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$PageMargin>;	$i0 = virtualinvoke r3.<org.apache.poi.ss.usermodel.PageMargin: int ordinal()>();	$i1 = $r4[$i0];	tableswitch($i1) {     case 1: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setLeft(double)>(d0);     case 2: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setRight(double)>(d0);     case 3: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setTop(double)>(d0);     case 4: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setBottom(double)>(d0);     case 5: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setHeader(double)>(d0);     case 6: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setFooter(double)>(d0);     default: goto $r5 = new java.lang.IllegalArgumentException; };	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown margin constant:  ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 4