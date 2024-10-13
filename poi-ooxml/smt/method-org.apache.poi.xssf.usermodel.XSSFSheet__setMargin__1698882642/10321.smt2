(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3466 0)
(declare-sort var3187 0)
(declare-sort var2600 0)
(declare-sort var1807 0)
(declare-sort var2195 0)
(declare-sort var1144 0)
(declare-sort var3242 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun worksheet/-1100774885 (var3466) var2600)
(declare-fun var2600_isSetPageMargins/-586364977 (var2600) Bool)
(declare-fun var2600_addNewPageMargins/544134280 (var2600) var1807)
(declare-fun ordinal/907589312 (var3187) Int)
(declare-fun var1144-init () var1144)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3242) String)
(declare-fun cast-from-var3187-to-var3242 (var3187) var3242)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1144 String) void)
(declare-const null-var3466 var3466)
(declare-const null-var3187 var3187)
(declare-const null-Float64 Float64)
(declare-const var2195-$SwitchMap$org$apache$poi$ss$usermodel$PageMargin (Array Int Int))
(declare-const var593 var3466) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var593 null-var3466)))
(declare-const var838 var3187) ; Statement: r3 := @parameter0: org.apache.poi.ss.usermodel.PageMargin 
(assert (not (= var838 null-var3187)))
(declare-const var359 Float64) ; Statement: d0 := @parameter1: double 
(assert (not (= var359 null-Float64)))
(define-const var1361 var2600 (worksheet/-1100774885 var593)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var377 Bool (var2600_isSetPageMargins/-586364977 var1361)) ; Statement: $z0 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: boolean isSetPageMargins()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(assert (= (ite var377 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1420 var2600 (worksheet/-1100774885 var593)) ; Statement: $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var3812 var1807 (var2600_addNewPageMargins/544134280 var1420)) ; Statement: $r11 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins addNewPageMargins()>() 
(assert true) ; Non Conditional
(define-const var3584 (Array Int Int) var2195-$SwitchMap$org$apache$poi$ss$usermodel$PageMargin) ; Statement: $r4 = <org.apache.poi.xssf.usermodel.XSSFSheet$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$PageMargin> 
(assert true)
(define-const var923 Int (ordinal/907589312 var838)) ; Statement: $i0 = virtualinvoke r3.<org.apache.poi.ss.usermodel.PageMargin: int ordinal()>() 
(define-const var3355 Int (select var3584 var923)) ; Statement: $i1 = $r4[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setLeft(double)>(d0);     case 2: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setRight(double)>(d0);     case 3: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setTop(double)>(d0);     case 4: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setBottom(double)>(d0);     case 5: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setHeader(double)>(d0);     case 6: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setFooter(double)>(d0);     default: goto $r5 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3355 6)) (and (not (= var3355 5)) (and (not (= var3355 4)) (and (not (= var3355 3)) (and (not (= var3355 2)) (and (not (= var3355 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var2505 var1144 var1144-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var1691 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1691)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1691!1 String)
(assert (= var1691!1 ""))
(assert true)
(define-const var1674 String (append/672562846 var1691!1 "Unknown margin constant:  ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown margin constant:  ") 
(declare-const var1691!2 String)
(assert (= var1691!2 (str.++ var1691!1 "Unknown margin constant:  ")))
(assert true)
(define-const var2604 String (append/-1031950772 var1674 (cast-from-var3187-to-var3242 var838))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var1674!1 String)
(assert (str.prefixof var1674 var1674!1))
(assert true)
(define-const var3624 String (toString/-2075883882 var2604)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2505 var3624)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var2505!1 var1144)
(declare-const var3624!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {worksheet/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet), var2600_isSetPageMargins/-586364977=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet], boolean), var2600_addNewPageMargins/544134280=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins), ordinal/907589312=([org.apache.poi.ss.usermodel.PageMargin], int), var1144-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3187-to-var3242=([org.apache.poi.ss.usermodel.PageMargin], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3466=org.apache.poi.xssf.usermodel.XSSFSheet, var593=r0, var3187=org.apache.poi.ss.usermodel.PageMargin, var838=r3, var359=d0, var2600=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet, var1361=$r1, var377=$z0, var1420=$r2, var1807=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins, var3812=$r11, var2195=org.apache.poi.xssf.usermodel.XSSFSheet$1, var3584=$r4, var923=$i0, var3355=$i1, var1144=java.lang.IllegalArgumentException, var2505=$r5, var1691=$r6, var1674=$r7, var3242=java.lang.Object, var2604=$r8, var3624=$r9}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var3466, r0=var593, org.apache.poi.ss.usermodel.PageMargin=var3187, r3=var838, d0=var359, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet=var2600, $r1=var1361, $z0=var377, $r2=var1420, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins=var1807, $r11=var3812, org.apache.poi.xssf.usermodel.XSSFSheet$1=var2195, $r4=var3584, $i0=var923, $i1=var3355, java.lang.IllegalArgumentException=var1144, $r5=var2505, $r6=var1691, $r7=var1674, java.lang.Object=var3242, $r8=var2604, $r9=var3624}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r3 := @parameter0: org.apache.poi.ss.usermodel.PageMargin;	d0 := @parameter1: double;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	$z0 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: boolean isSetPageMargins()>();	if $z0 == 0 goto $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	$r2 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	$r11 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins addNewPageMargins()>();	$r4 = <org.apache.poi.xssf.usermodel.XSSFSheet$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$PageMargin>;	$i0 = virtualinvoke r3.<org.apache.poi.ss.usermodel.PageMargin: int ordinal()>();	$i1 = $r4[$i0];	tableswitch($i1) {     case 1: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setLeft(double)>(d0);     case 2: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setRight(double)>(d0);     case 3: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setTop(double)>(d0);     case 4: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setBottom(double)>(d0);     case 5: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setHeader(double)>(d0);     case 6: goto interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins: void setFooter(double)>(d0);     default: goto $r5 = new java.lang.IllegalArgumentException; };	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown margin constant:  ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 4