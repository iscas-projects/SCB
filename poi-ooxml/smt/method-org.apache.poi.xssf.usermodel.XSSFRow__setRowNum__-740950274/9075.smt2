(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3005 0)
(declare-sort var2290 0)
(declare-sort var3524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLastRowIndex/-973705812 (var2290) Int)
(declare-fun var3524-init () var3524)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3524 String) void)
(declare-const null-var3005 var3005)
(declare-const null-Int Int)
(declare-const var2290-EXCEL2007 var2290)
(declare-const var890 var3005) ; Statement: r9 := @this: org.apache.poi.xssf.usermodel.XSSFRow 
(assert (not (= var890 null-var3005)))
(declare-const var3090 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var3090 null-Int)))
(define-const var983 var2290 var2290-EXCEL2007) ; Statement: $r0 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var3909 Int (getLastRowIndex/-973705812 var983)) ; Statement: i0 = virtualinvoke $r0.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>() 
 ; Statement: if i1 < 0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (< var3090 0)) ; Cond: i1 < 0 
(define-const var2904 var3524 var3524-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var428 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var428)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var428!1 String)
(assert (= var428!1 ""))
(assert true)
(define-const var3055 String (append/672562846 var428!1 "Invalid row number (")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid row number (") 
(declare-const var428!2 String)
(assert (= var428!2 (str.++ var428!1 "Invalid row number (")))
(assert true)
(define-const var1538 String (append/-1001720160 var3055 var3090)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3055!1 String)
(assert (str.prefixof var3055 var3055!1))
(assert true)
(define-const var3318 String (append/672562846 var1538 ") outside allowable range (0..")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") outside allowable range (0..") 
(declare-const var1538!1 String)
(assert (= var1538!1 (str.++ var1538 ") outside allowable range (0..")))
(assert true)
(define-const var897 String (append/-1001720160 var3318 var3909)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3318!1 String)
(assert (str.prefixof var3318 var3318!1))
(assert true)
(define-const var831 String (append/672562846 var897 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var897!1 String)
(assert (= var897!1 (str.++ var897 ")")))
(assert true)
(define-const var1053 String (toString/-2075883882 var831)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2904 var1053)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2904!1 var3524)
(declare-const var1053!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLastRowIndex/-973705812=([org.apache.poi.ss.SpreadsheetVersion], int), var3524-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3005=org.apache.poi.xssf.usermodel.XSSFRow, var890=r9, var3090=i1, var2290=org.apache.poi.ss.SpreadsheetVersion, var983=$r0, var3909=i0, var3524=java.lang.IllegalArgumentException, var2904=$r1, var428=$r2, var3055=$r3, var1538=$r4, var3318=$r5, var897=$r6, var831=$r7, var1053=$r8}
; {org.apache.poi.xssf.usermodel.XSSFRow=var3005, r9=var890, i1=var3090, org.apache.poi.ss.SpreadsheetVersion=var2290, $r0=var983, i0=var3909, java.lang.IllegalArgumentException=var3524, $r1=var2904, $r2=var428, $r3=var3055, $r4=var1538, $r5=var3318, $r6=var897, $r7=var831, $r8=var1053}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.poi.xssf.usermodel.XSSFRow;	i1 := @parameter0: int;	$r0 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i0 = virtualinvoke $r0.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>();	if i1 < 0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid row number (");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") outside allowable range (0..");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 2