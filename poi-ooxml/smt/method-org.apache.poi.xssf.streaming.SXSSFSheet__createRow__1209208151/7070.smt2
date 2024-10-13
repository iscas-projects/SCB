(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3361 0)
(declare-sort var3421 0)
(declare-sort var376 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLastRowIndex/-973705812 (var3421) Int)
(declare-fun var376-init () var376)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var376 String) void)
(declare-const null-var3361 var3361)
(declare-const null-Int Int)
(declare-const var3421-EXCEL2007 var3421)
(declare-const var2820 var3361) ; Statement: r9 := @this: org.apache.poi.xssf.streaming.SXSSFSheet 
(assert (not (= var2820 null-var3361)))
(declare-const var3005 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var3005 null-Int)))
(define-const var1918 var3421 var3421-EXCEL2007) ; Statement: $r0 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var690 Int (getLastRowIndex/-973705812 var1918)) ; Statement: i0 = virtualinvoke $r0.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>() 
 ; Statement: if i1 < 0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (< var3005 0)) ; Cond: i1 < 0 
(define-const var3159 var376 var376-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var1818 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1818)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1818!1 String)
(assert (= var1818!1 ""))
(assert true)
(define-const var339 String (append/672562846 var1818!1 "Invalid row number (")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid row number (") 
(declare-const var1818!2 String)
(assert (= var1818!2 (str.++ var1818!1 "Invalid row number (")))
(assert true)
(define-const var1483 String (append/-1001720160 var339 var3005)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var339!1 String)
(assert (str.prefixof var339 var339!1))
(assert true)
(define-const var2296 String (append/672562846 var1483 ") outside allowable range (0..")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") outside allowable range (0..") 
(declare-const var1483!1 String)
(assert (= var1483!1 (str.++ var1483 ") outside allowable range (0..")))
(assert true)
(define-const var1382 String (append/-1001720160 var2296 var690)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2296!1 String)
(assert (str.prefixof var2296 var2296!1))
(assert true)
(define-const var3282 String (append/672562846 var1382 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1382!1 String)
(assert (= var1382!1 (str.++ var1382 ")")))
(assert true)
(define-const var1097 String (toString/-2075883882 var3282)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3159 var1097)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var3159!1 var376)
(declare-const var1097!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLastRowIndex/-973705812=([org.apache.poi.ss.SpreadsheetVersion], int), var376-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3361=org.apache.poi.xssf.streaming.SXSSFSheet, var2820=r9, var3005=i1, var3421=org.apache.poi.ss.SpreadsheetVersion, var1918=$r0, var690=i0, var376=java.lang.IllegalArgumentException, var3159=$r1, var1818=$r2, var339=$r3, var1483=$r4, var2296=$r5, var1382=$r6, var3282=$r7, var1097=$r8}
; {org.apache.poi.xssf.streaming.SXSSFSheet=var3361, r9=var2820, i1=var3005, org.apache.poi.ss.SpreadsheetVersion=var3421, $r0=var1918, i0=var690, java.lang.IllegalArgumentException=var376, $r1=var3159, $r2=var1818, $r3=var339, $r4=var1483, $r5=var2296, $r6=var1382, $r7=var3282, $r8=var1097}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.poi.xssf.streaming.SXSSFSheet;	i1 := @parameter0: int;	$r0 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i0 = virtualinvoke $r0.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>();	if i1 < 0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid row number (");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") outside allowable range (0..");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 2