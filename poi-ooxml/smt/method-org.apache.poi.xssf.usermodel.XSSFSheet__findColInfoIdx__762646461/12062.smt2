(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var903 0)
(declare-sort var2574 0)
(declare-sort var2381 0)
(declare-sort var958 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun worksheet/-1100774885 (var903) var2574)
(declare-fun var2574_getColsArray/1784375329 (var2574 Int) var2381)
(declare-fun var958-init () var958)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var958 String) void)
(declare-const null-var903 var903)
(declare-const null-Int Int)
(declare-const var1125 var903) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var1125 null-var903)))
(declare-const var1949 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1949 null-Int)))
(declare-const var392 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var392 null-Int)))
(define-const var1607 var2574 (worksheet/-1100774885 var1125)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var1313 var2381 (var2574_getColsArray/1784375329 var1607 0)) ; Statement: r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols getColsArray(int)>(0) 
 ; Statement: if i0 >= 0 goto (branch) 
(assert (not (>= var1949 0))) ; Negate: Cond: i0 >= 0  
(define-const var2077 var958 var958-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var3877 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3877)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3877!1 String)
(assert (= var3877!1 ""))
(assert true)
(define-const var3099 String (append/672562846 var3877!1 "column parameter out of range: ")) ; Statement: $r12 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("column parameter out of range: ") 
(declare-const var3877!2 String)
(assert (= var3877!2 (str.++ var3877!1 "column parameter out of range: ")))
(assert true)
(define-const var3040 String (append/-1001720160 var3099 var1949)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3099!1 String)
(assert (str.prefixof var3099 var3099!1))
(assert true)
(define-const var2029 String (toString/-2075883882 var3040)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2077 var2029)) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var2077!1 var958)
(declare-const var2029!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {worksheet/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet), var2574_getColsArray/1784375329=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet, int], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols), var958-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var903=org.apache.poi.xssf.usermodel.XSSFSheet, var1125=r0, var1949=i0, var392=i1, var2574=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet, var1607=$r1, var2381=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols, var1313=r2, var958=java.lang.IllegalArgumentException, var2077=$r16, var3877=$r15, var3099=$r12, var3040=$r13, var2029=$r14}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var903, r0=var1125, i0=var1949, i1=var392, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet=var2574, $r1=var1607, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols=var2381, r2=var1313, java.lang.IllegalArgumentException=var958, $r16=var2077, $r15=var3877, $r12=var3099, $r13=var3040, $r14=var2029}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols getColsArray(int)>(0);	if i0 >= 0 goto (branch);	$r16 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("column parameter out of range: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r16
;block_num 2