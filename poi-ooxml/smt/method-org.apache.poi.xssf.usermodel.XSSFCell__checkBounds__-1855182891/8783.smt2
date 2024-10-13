(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2366 0)
(declare-sort var1968 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLastColumnIndex/-111059718 (var2366) Int)
(declare-fun var1968-init () var1968)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun name/-1155214087 (var2366) String)
(declare-fun getLastColumnName/-646164375 (var2366) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1968 String) void)
(declare-const null-Int Int)
(declare-const var2366-EXCEL2007 var2366)
(declare-const var3430 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var3430 null-Int)))
(define-const var2535 var2366 var2366-EXCEL2007) ; Statement: r0 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(define-const var3051 var2366 var2366-EXCEL2007) ; Statement: $r1 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var3422 Int (getLastColumnIndex/-111059718 var3051)) ; Statement: i0 = virtualinvoke $r1.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>() 
 ; Statement: if i1 < 0 goto $r2 = new java.lang.IllegalArgumentException 
(assert (< var3430 0)) ; Cond: i1 < 0 
(define-const var389 var1968 var1968-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var1053 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1053)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1053!1 String)
(assert (= var1053!1 ""))
(assert true)
(define-const var3477 String (append/672562846 var1053!1 "Invalid column index (")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid column index (") 
(declare-const var1053!2 String)
(assert (= var1053!2 (str.++ var1053!1 "Invalid column index (")))
(assert true)
(define-const var1150 String (append/-1001720160 var3477 var3430)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3477!1 String)
(assert (str.prefixof var3477 var3477!1))
(assert true)
(define-const var1643 String (append/672562846 var1150 ").  Allowable column range for ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(").  Allowable column range for ") 
(declare-const var1150!1 String)
(assert (= var1150!1 (str.++ var1150 ").  Allowable column range for ")))
(assert true)
(define-const var72 String (name/-1155214087 var2535)) ; Statement: $r6 = virtualinvoke r0.<org.apache.poi.ss.SpreadsheetVersion: java.lang.String name()>() 
(assert true)
(define-const var706 String (append/672562846 var1643 var72)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1643!1 String)
(assert (= var1643!1 (str.++ var1643 var72)))
(assert true)
(define-const var2071 String (append/672562846 var706 " is (0..")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is (0..") 
(declare-const var706!1 String)
(assert (= var706!1 (str.++ var706 " is (0..")))
(assert true)
(define-const var2359 String (append/-1001720160 var2071 var3422)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2071!1 String)
(assert (str.prefixof var2071 var2071!1))
(assert true)
(define-const var3068 String (append/672562846 var2359 ") or (\u0027A\u0027..\u0027")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") or (\'A\'..\'") 
(declare-const var2359!1 String)
(assert (= var2359!1 (str.++ var2359 ") or (\u0027A\u0027..\u0027")))
(assert true)
(define-const var579 String (getLastColumnName/-646164375 var2535)) ; Statement: $r11 = virtualinvoke r0.<org.apache.poi.ss.SpreadsheetVersion: java.lang.String getLastColumnName()>() 
(assert true)
(define-const var1624 String (append/672562846 var3068 var579)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3068!1 String)
(assert (= var3068!1 (str.++ var3068 var579)))
(assert true)
(define-const var1786 String (append/672562846 var1624 "\u0027)")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\')") 
(declare-const var1624!1 String)
(assert (= var1624!1 (str.++ var1624 "\u0027)")))
(assert true)
(define-const var1797 String (toString/-2075883882 var1786)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var389 var1797)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var389!1 var1968)
(declare-const var1797!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getLastColumnIndex/-111059718=([org.apache.poi.ss.SpreadsheetVersion], int), var1968-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), name/-1155214087=([org.apache.poi.ss.SpreadsheetVersion], java.lang.String), getLastColumnName/-646164375=([org.apache.poi.ss.SpreadsheetVersion], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3430=i1, var2366=org.apache.poi.ss.SpreadsheetVersion, var2535=r0, var3051=$r1, var3422=i0, var1968=java.lang.IllegalArgumentException, var389=$r2, var1053=$r3, var3477=$r4, var1150=$r5, var1643=$r7, var72=$r6, var706=$r8, var2071=$r9, var2359=$r10, var3068=$r12, var579=$r11, var1624=$r13, var1786=$r14, var1797=$r15}
; {i1=var3430, org.apache.poi.ss.SpreadsheetVersion=var2366, r0=var2535, $r1=var3051, i0=var3422, java.lang.IllegalArgumentException=var1968, $r2=var389, $r3=var1053, $r4=var3477, $r5=var1150, $r7=var1643, $r6=var72, $r8=var706, $r9=var2071, $r10=var2359, $r12=var3068, $r11=var579, $r13=var1624, $r14=var1786, $r15=var1797}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i1 := @parameter0: int;	r0 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	$r1 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i0 = virtualinvoke $r1.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>();	if i1 < 0 goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid column index (");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(").  Allowable column range for ");	$r6 = virtualinvoke r0.<org.apache.poi.ss.SpreadsheetVersion: java.lang.String name()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is (0..");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") or (\'A\'..\'");	$r11 = virtualinvoke r0.<org.apache.poi.ss.SpreadsheetVersion: java.lang.String getLastColumnName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\')");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r2
;block_num 2