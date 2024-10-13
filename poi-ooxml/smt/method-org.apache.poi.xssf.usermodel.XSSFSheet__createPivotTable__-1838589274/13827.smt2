(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3014 0)
(declare-sort var1140 0)
(declare-sort var2307 0)
(declare-sort var3057 0)
(declare-sort var3596 0)
(declare-sort var2907 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstCell/1646459898 (var1140) var2307)
(declare-fun getSheetName/525963585 (var2307) String)
(declare-fun var3057_getSheetName/1433762611 (var3057) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var2907-init () var2907)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2907 String) void)
(declare-const null-var3014 var3014)
(declare-const null-var1140 var1140)
(declare-const null-var2307 var2307)
(declare-const null-var3057 var3057)
(declare-const null-String String)
(declare-const var2775 var3014) ; Statement: r3 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var2775 null-var3014)))
(declare-const var1444 var1140) ; Statement: r0 := @parameter0: org.apache.poi.ss.util.AreaReference 
(assert (not (= var1444 null-var1140)))
(declare-const var3992 var2307) ; Statement: r4 := @parameter1: org.apache.poi.ss.util.CellReference 
(assert (not (= var3992 null-var2307)))
(declare-const var3435 var3057) ; Statement: r5 := @parameter2: org.apache.poi.ss.usermodel.Sheet 
(assert (not (= var3435 null-var3057)))
(assert true)
(define-const var443 var2307 (getFirstCell/1646459898 var1444)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getFirstCell()>() 
(assert true)
(define-const var3517 String (getSheetName/525963585 var443)) ; Statement: r2 = virtualinvoke $r1.<org.apache.poi.ss.util.CellReference: java.lang.String getSheetName()>() 
 ; Statement: if r2 == null goto $r6 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_2__511: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.util.AreaReference)>(r0) 
(assert (not (= var3517 null-String))) ; Negate: Cond: r2 == null  
(define-const var2408 String (var3057_getSheetName/1433762611 var3435)) ; Statement: $r8 = interfaceinvoke r5.<org.apache.poi.ss.usermodel.Sheet: java.lang.String getSheetName()>() 
(assert true)
(define-const var883 Bool (equalsIgnoreCase/-92311102 var3517 var2408)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r8) 
 ; Statement: if $z0 != 0 goto $r6 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_2__511: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.util.AreaReference)>(r0) 
(assert (not (not (= (ite var883 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3858 var2907 var2907-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var2570 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2570)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2570!1 String)
(assert (= var2570!1 ""))
(assert true)
(define-const var1919 String (append/672562846 var2570!1 "The area is referenced in another sheet than the defined source sheet ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The area is referenced in another sheet than the defined source sheet ") 
(declare-const var2570!2 String)
(assert (= var2570!2 (str.++ var2570!1 "The area is referenced in another sheet than the defined source sheet ")))
(define-const var2350 String (var3057_getSheetName/1433762611 var3435)) ; Statement: $r11 = interfaceinvoke r5.<org.apache.poi.ss.usermodel.Sheet: java.lang.String getSheetName()>() 
(assert true)
(define-const var619 String (append/672562846 var1919 var2350)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1919!1 String)
(assert (= var1919!1 (str.++ var1919 var2350)))
(assert true)
(define-const var2706 String (append/672562846 var619 ".")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var619!1 String)
(assert (= var619!1 (str.++ var619 ".")))
(assert true)
(define-const var3811 String (toString/-2075883882 var2706)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3858 var3811)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var3858!1 var2907)
(declare-const var3811!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstCell/1646459898=([org.apache.poi.ss.util.AreaReference], org.apache.poi.ss.util.CellReference), getSheetName/525963585=([org.apache.poi.ss.util.CellReference], java.lang.String), var3057_getSheetName/1433762611=([org.apache.poi.ss.usermodel.Sheet], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var2907-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3014=org.apache.poi.xssf.usermodel.XSSFSheet, var2775=r3, var1140=org.apache.poi.ss.util.AreaReference, var1444=r0, var2307=org.apache.poi.ss.util.CellReference, var3992=r4, var3057=org.apache.poi.ss.usermodel.Sheet, var3435=r5, var443=$r1, var3517=r2, var3596=null_type, var2408=$r8, var883=$z0, var2907=java.lang.IllegalArgumentException, var3858=$r9, var2570=$r10, var1919=$r12, var2350=$r11, var619=$r13, var2706=$r14, var3811=$r15}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var3014, r3=var2775, org.apache.poi.ss.util.AreaReference=var1140, r0=var1444, org.apache.poi.ss.util.CellReference=var2307, r4=var3992, org.apache.poi.ss.usermodel.Sheet=var3057, r5=var3435, $r1=var443, r2=var3517, null_type=var3596, $r8=var2408, $z0=var883, java.lang.IllegalArgumentException=var2907, $r9=var3858, $r10=var2570, $r12=var1919, $r11=var2350, $r13=var619, $r14=var2706, $r15=var3811}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.util.AreaReference;	r4 := @parameter1: org.apache.poi.ss.util.CellReference;	r5 := @parameter2: org.apache.poi.ss.usermodel.Sheet;	$r1 = virtualinvoke r0.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getFirstCell()>();	r2 = virtualinvoke $r1.<org.apache.poi.ss.util.CellReference: java.lang.String getSheetName()>();	if r2 == null goto $r6 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_2__511: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.util.AreaReference)>(r0);	$r8 = interfaceinvoke r5.<org.apache.poi.ss.usermodel.Sheet: java.lang.String getSheetName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r8);	if $z0 != 0 goto $r6 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_2__511: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.util.AreaReference)>(r0);	$r9 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The area is referenced in another sheet than the defined source sheet ");	$r11 = interfaceinvoke r5.<org.apache.poi.ss.usermodel.Sheet: java.lang.String getSheetName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r9
;block_num 3