(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1730 0)
(declare-sort var905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var905-init () var905)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var905 String) void)
(declare-const null-var1730 var1730)
(declare-const null-Int Int)
(declare-const var286 var1730) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFTable 
(assert (not (= var286 null-var1730)))
(declare-const var1714 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1714 null-Int)))
(declare-const var2405 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2405 null-Int)))
(declare-const var42 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var42 null-Int)))
(declare-const var2014 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2014 null-Int)))
 ; Statement: if i0 <= i1 goto (branch) 
(assert (not (<= var1714 var2405))) ; Negate: Cond: i0 <= i1  
(define-const var3033 var905 var905-init) ; Statement: $r14 = new java.lang.IllegalArgumentException 
(define-const var2725 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2725)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2725!1 String)
(assert (= var2725!1 ""))
(assert true)
(define-const var3210 String (append/672562846 var2725!1 "Cannot merge, first row > last row : ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot merge, first row > last row : ") 
(declare-const var2725!2 String)
(assert (= var2725!2 (str.++ var2725!1 "Cannot merge, first row > last row : ")))
(assert true)
(define-const var3958 String (append/-1001720160 var3210 var1714)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3210!1 String)
(assert (str.prefixof var3210 var3210!1))
(assert true)
(define-const var1394 String (append/672562846 var3958 " > ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" > ") 
(declare-const var3958!1 String)
(assert (= var3958!1 (str.++ var3958 " > ")))
(assert true)
(define-const var752 String (append/-1001720160 var1394 var2405)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1394!1 String)
(assert (str.prefixof var1394 var1394!1))
(assert true)
(define-const var2682 String (toString/-2075883882 var752)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3033 var2682)) ; Statement: specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20) 

(declare-const var3033!1 var905)
(declare-const var2682!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var905-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1730=org.apache.poi.xslf.usermodel.XSLFTable, var286=r0, var1714=i0, var2405=i1, var42=i2, var2014=i3, var905=java.lang.IllegalArgumentException, var3033=$r14, var2725=$r15, var3210=$r16, var3958=$r17, var1394=$r18, var752=$r19, var2682=$r20}
; {org.apache.poi.xslf.usermodel.XSLFTable=var1730, r0=var286, i0=var1714, i1=var2405, i2=var42, i3=var2014, java.lang.IllegalArgumentException=var905, $r14=var3033, $r15=var2725, $r16=var3210, $r17=var3958, $r18=var1394, $r19=var752, $r20=var2682}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFTable;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	if i0 <= i1 goto (branch);	$r14 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot merge, first row > last row : ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" > ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20);	throw $r14
;block_num 2