(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var210 0)
(declare-sort var2695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLastColumnIndex/-111059718 (var210) Int)
(declare-fun var2695-init () var2695)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun name/-1155214087 (var210) String)
(declare-fun getLastColumnName/-646164375 (var210) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2695 String) void)
(declare-const null-Int Int)
(declare-const var210-EXCEL2007 var210)
(declare-const var100 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var100 null-Int)))
(define-const var2098 var210 var210-EXCEL2007) ; Statement: r0 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(define-const var3576 var210 var210-EXCEL2007) ; Statement: $r1 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var901 Int (getLastColumnIndex/-111059718 var3576)) ; Statement: i0 = virtualinvoke $r1.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>() 
 ; Statement: if i1 < 0 goto $r2 = new java.lang.IllegalArgumentException 
(assert (< var100 0)) ; Cond: i1 < 0 
(define-const var2651 var2695 var2695-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var1000 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1000)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1000!1 String)
(assert (= var1000!1 ""))
(assert true)
(define-const var347 String (append/672562846 var1000!1 "Invalid column index (")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid column index (") 
(declare-const var1000!2 String)
(assert (= var1000!2 (str.++ var1000!1 "Invalid column index (")))
(assert true)
(define-const var2005 String (append/-1001720160 var347 var100)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var347!1 String)
(assert (str.prefixof var347 var347!1))
(assert true)
(define-const var329 String (append/672562846 var2005 ").  Allowable column range for ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(").  Allowable column range for ") 
(declare-const var2005!1 String)
(assert (= var2005!1 (str.++ var2005 ").  Allowable column range for ")))
(assert true)
(define-const var3007 String (name/-1155214087 var2098)) ; Statement: $r6 = virtualinvoke r0.<org.apache.poi.ss.SpreadsheetVersion: java.lang.String name()>() 
(assert true)
(define-const var3252 String (append/672562846 var329 var3007)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var329!1 String)
(assert (= var329!1 (str.++ var329 var3007)))
(assert true)
(define-const var2423 String (append/672562846 var3252 " is (0..")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is (0..") 
(declare-const var3252!1 String)
(assert (= var3252!1 (str.++ var3252 " is (0..")))
(assert true)
(define-const var1183 String (append/-1001720160 var2423 var901)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2423!1 String)
(assert (str.prefixof var2423 var2423!1))
(assert true)
(define-const var282 String (append/672562846 var1183 ") or (\u0027A\u0027..\u0027")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") or (\'A\'..\'") 
(declare-const var1183!1 String)
(assert (= var1183!1 (str.++ var1183 ") or (\u0027A\u0027..\u0027")))
(assert true)
(define-const var2289 String (getLastColumnName/-646164375 var2098)) ; Statement: $r11 = virtualinvoke r0.<org.apache.poi.ss.SpreadsheetVersion: java.lang.String getLastColumnName()>() 
(assert true)
(define-const var1292 String (append/672562846 var282 var2289)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var282!1 String)
(assert (= var282!1 (str.++ var282 var2289)))
(assert true)
(define-const var3642 String (append/672562846 var1292 "\u0027)")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\')") 
(declare-const var1292!1 String)
(assert (= var1292!1 (str.++ var1292 "\u0027)")))
(assert true)
(define-const var2612 String (toString/-2075883882 var3642)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2651 var2612)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var2651!1 var2695)
(declare-const var2612!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getLastColumnIndex/-111059718=([org.apache.poi.ss.SpreadsheetVersion], int), var2695-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), name/-1155214087=([org.apache.poi.ss.SpreadsheetVersion], java.lang.String), getLastColumnName/-646164375=([org.apache.poi.ss.SpreadsheetVersion], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var100=i1, var210=org.apache.poi.ss.SpreadsheetVersion, var2098=r0, var3576=$r1, var901=i0, var2695=java.lang.IllegalArgumentException, var2651=$r2, var1000=$r3, var347=$r4, var2005=$r5, var329=$r7, var3007=$r6, var3252=$r8, var2423=$r9, var1183=$r10, var282=$r12, var2289=$r11, var1292=$r13, var3642=$r14, var2612=$r15}
; {i1=var100, org.apache.poi.ss.SpreadsheetVersion=var210, r0=var2098, $r1=var3576, i0=var901, java.lang.IllegalArgumentException=var2695, $r2=var2651, $r3=var1000, $r4=var347, $r5=var2005, $r7=var329, $r6=var3007, $r8=var3252, $r9=var2423, $r10=var1183, $r12=var282, $r11=var2289, $r13=var1292, $r14=var3642, $r15=var2612}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i1 := @parameter0: int;	r0 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	$r1 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i0 = virtualinvoke $r1.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>();	if i1 < 0 goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid column index (");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(").  Allowable column range for ");	$r6 = virtualinvoke r0.<org.apache.poi.ss.SpreadsheetVersion: java.lang.String name()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is (0..");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") or (\'A\'..\'");	$r11 = virtualinvoke r0.<org.apache.poi.ss.SpreadsheetVersion: java.lang.String getLastColumnName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\')");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r2
;block_num 2