(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2291 0)
(declare-sort var1807 0)
(declare-sort var25 0)
(declare-sort var1836 0)
(declare-sort var3167 0)
(declare-sort var3025 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1807_getSheetName/-2120222945 (var1807) String)
(declare-fun var1836_getSheetName/1433762611 (var1836) String)
(declare-fun var3025-init () var3025)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3025 String) void)
(declare-const null-var2291 var2291)
(declare-const null-var1807 var1807)
(declare-const null-var25 var25)
(declare-const null-var1836 var1836)
(declare-const null-String String)
(declare-const var1635 var2291) ; Statement: r2 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var1635 null-var2291)))
(declare-const var1204 var1807) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Name 
(assert (not (= var1204 null-var1807)))
(declare-const var2184 var25) ; Statement: r3 := @parameter1: org.apache.poi.ss.util.CellReference 
(assert (not (= var2184 null-var25)))
(declare-const var1912 var1836) ; Statement: r4 := @parameter2: org.apache.poi.ss.usermodel.Sheet 
(assert (not (= var1912 null-var1836)))
(define-const var1273 String (var1807_getSheetName/-2120222945 var1204)) ; Statement: $r1 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Name: java.lang.String getSheetName()>() 
 ; Statement: if $r1 == null goto $r5 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_3__512: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.usermodel.Name)>(r0) 
(assert (not (= var1273 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1112 String (var1807_getSheetName/-2120222945 var1204)) ; Statement: $r8 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Name: java.lang.String getSheetName()>() 
(define-const var693 String (var1836_getSheetName/1433762611 var1912)) ; Statement: $r7 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.Sheet: java.lang.String getSheetName()>() 
(assert true)
(define-const var618 Bool (= var1112 var693)) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
 ; Statement: if $z0 != 0 goto $r5 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_3__512: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.usermodel.Name)>(r0) 
(assert (not (not (= (ite var618 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2090 var3025 var3025-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var3343 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3343)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3343!1 String)
(assert (= var3343!1 ""))
(assert true)
(define-const var192 String (append/672562846 var3343!1 "The named range references another sheet than the defined source sheet ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The named range references another sheet than the defined source sheet ") 
(declare-const var3343!2 String)
(assert (= var3343!2 (str.++ var3343!1 "The named range references another sheet than the defined source sheet ")))
(define-const var1981 String (var1836_getSheetName/1433762611 var1912)) ; Statement: $r11 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.Sheet: java.lang.String getSheetName()>() 
(assert true)
(define-const var3581 String (append/672562846 var192 var1981)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var192!1 String)
(assert (= var192!1 (str.++ var192 var1981)))
(assert true)
(define-const var291 String (append/672562846 var3581 ".")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3581!1 String)
(assert (= var3581!1 (str.++ var3581 ".")))
(assert true)
(define-const var2955 String (toString/-2075883882 var291)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2090 var2955)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var2090!1 var3025)
(declare-const var2955!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1807_getSheetName/-2120222945=([org.apache.poi.ss.usermodel.Name], java.lang.String), var1836_getSheetName/1433762611=([org.apache.poi.ss.usermodel.Sheet], java.lang.String), var3025-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2291=org.apache.poi.xssf.usermodel.XSSFSheet, var1635=r2, var1807=org.apache.poi.ss.usermodel.Name, var1204=r0, var25=org.apache.poi.ss.util.CellReference, var2184=r3, var1836=org.apache.poi.ss.usermodel.Sheet, var1912=r4, var1273=$r1, var3167=null_type, var1112=$r8, var693=$r7, var618=$z0, var3025=java.lang.IllegalArgumentException, var2090=$r9, var3343=$r10, var192=$r12, var1981=$r11, var3581=$r13, var291=$r14, var2955=$r15}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var2291, r2=var1635, org.apache.poi.ss.usermodel.Name=var1807, r0=var1204, org.apache.poi.ss.util.CellReference=var25, r3=var2184, org.apache.poi.ss.usermodel.Sheet=var1836, r4=var1912, $r1=var1273, null_type=var3167, $r8=var1112, $r7=var693, $z0=var618, java.lang.IllegalArgumentException=var3025, $r9=var2090, $r10=var3343, $r12=var192, $r11=var1981, $r13=var3581, $r14=var291, $r15=var2955}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.usermodel.Name;	r3 := @parameter1: org.apache.poi.ss.util.CellReference;	r4 := @parameter2: org.apache.poi.ss.usermodel.Sheet;	$r1 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Name: java.lang.String getSheetName()>();	if $r1 == null goto $r5 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_3__512: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.usermodel.Name)>(r0);	$r8 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Name: java.lang.String getSheetName()>();	$r7 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.Sheet: java.lang.String getSheetName()>();	$z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7);	if $z0 != 0 goto $r5 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_3__512: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.usermodel.Name)>(r0);	$r9 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The named range references another sheet than the defined source sheet ");	$r11 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.Sheet: java.lang.String getSheetName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r9
;block_num 3