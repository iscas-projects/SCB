(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3074 0)
(declare-sort var856 0)
(declare-sort var3420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNumberOfCells/-33375466 (var856) Int)
(declare-fun var3420-init () var3420)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun formatAsString/-350734525 (var856) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3420 String) void)
(declare-const null-var3074 var3074)
(declare-const null-var856 var856)
(declare-const null-Bool Bool)
(declare-const var950 var3074) ; Statement: r2 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var950 null-var3074)))
(declare-const var2368 var856) ; Statement: r0 := @parameter0: org.apache.poi.ss.util.CellRangeAddress 
(assert (not (= var2368 null-var856)))
(declare-const var3541 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3541 null-Bool)))
(assert true)
(define-const var1181 Int (getNumberOfCells/-33375466 var2368)) ; Statement: $i0 = virtualinvoke r0.<org.apache.poi.ss.util.CellRangeAddress: int getNumberOfCells()>() 
 ; Statement: if $i0 >= 2 goto $r1 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert (not (>= var1181 2))) ; Negate: Cond: $i0 >= 2  
(define-const var2150 var3420 var3420-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var3777 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3777)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3777!1 String)
(assert (= var3777!1 ""))
(assert true)
(define-const var804 String (append/672562846 var3777!1 "Merged region ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Merged region ") 
(declare-const var3777!2 String)
(assert (= var3777!2 (str.++ var3777!1 "Merged region ")))
(assert true)
(define-const var443 String (formatAsString/-350734525 var2368)) ; Statement: $r11 = virtualinvoke r0.<org.apache.poi.ss.util.CellRangeAddress: java.lang.String formatAsString()>() 
(assert true)
(define-const var2415 String (append/672562846 var804 var443)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var804!1 String)
(assert (= var804!1 (str.++ var804 var443)))
(assert true)
(define-const var1502 String (append/672562846 var2415 " must contain 2 or more cells")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must contain 2 or more cells") 
(declare-const var2415!1 String)
(assert (= var2415!1 (str.++ var2415 " must contain 2 or more cells")))
(assert true)
(define-const var2814 String (toString/-2075883882 var1502)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2150 var2814)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var2150!1 var3420)
(declare-const var2814!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getNumberOfCells/-33375466=([org.apache.poi.ss.util.CellRangeAddress], int), var3420-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), formatAsString/-350734525=([org.apache.poi.ss.util.CellRangeAddress], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3074=org.apache.poi.xssf.usermodel.XSSFSheet, var950=r2, var856=org.apache.poi.ss.util.CellRangeAddress, var2368=r0, var3541=z0, var1181=$i0, var3420=java.lang.IllegalArgumentException, var2150=$r9, var3777=$r10, var804=$r12, var443=$r11, var2415=$r13, var1502=$r14, var2814=$r15}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var3074, r2=var950, org.apache.poi.ss.util.CellRangeAddress=var856, r0=var2368, z0=var3541, $i0=var1181, java.lang.IllegalArgumentException=var3420, $r9=var2150, $r10=var3777, $r12=var804, $r11=var443, $r13=var2415, $r14=var1502, $r15=var2814}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.util.CellRangeAddress;	z0 := @parameter1: boolean;	$i0 = virtualinvoke r0.<org.apache.poi.ss.util.CellRangeAddress: int getNumberOfCells()>();	if $i0 >= 2 goto $r1 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	$r9 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Merged region ");	$r11 = virtualinvoke r0.<org.apache.poi.ss.util.CellRangeAddress: java.lang.String formatAsString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must contain 2 or more cells");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r9
;block_num 2