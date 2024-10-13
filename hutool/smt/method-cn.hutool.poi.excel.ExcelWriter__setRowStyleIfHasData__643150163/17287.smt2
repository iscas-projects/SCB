(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3581 0)
(declare-sort var258 0)
(declare-sort var3500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3500-init () var3500)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3500 String) void)
(declare-const null-var3581 var3581)
(declare-const null-Int Int)
(declare-const null-var258 var258)
(declare-const var153 var3581) ; Statement: r0 := @this: cn.hutool.poi.excel.ExcelWriter 
(assert (not (= var153 null-var3581)))
(declare-const var3513 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3513 null-Int)))
(declare-const var3380 var258) ; Statement: r1 := @parameter1: org.apache.poi.ss.usermodel.CellStyle 
(assert (not (= var3380 null-var258)))
 ; Statement: if i0 >= 0 goto i1 = virtualinvoke r0.<cn.hutool.poi.excel.ExcelWriter: int getColumnCount()>() 
(assert (not (>= var3513 0))) ; Negate: Cond: i0 >= 0  
(define-const var3910 var3500 var3500-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var1948 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1948)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1948!1 String)
(assert (= var1948!1 ""))
(assert true)
(define-const var2262 String (append/672562846 var1948!1 "Invalid row number (")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid row number (") 
(declare-const var1948!2 String)
(assert (= var1948!2 (str.++ var1948!1 "Invalid row number (")))
(assert true)
(define-const var800 String (append/-1001720160 var2262 var3513)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2262!1 String)
(assert (str.prefixof var2262 var2262!1))
(assert true)
(define-const var1650 String (append/672562846 var800 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var800!1 String)
(assert (= var800!1 (str.++ var800 ")")))
(assert true)
(define-const var937 String (toString/-2075883882 var1650)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3910 var937)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var3910!1 var3500)
(declare-const var937!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3500-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3581=cn.hutool.poi.excel.ExcelWriter, var153=r0, var3513=i0, var258=org.apache.poi.ss.usermodel.CellStyle, var3380=r1, var3500=java.lang.IllegalArgumentException, var3910=$r2, var1948=$r3, var2262=$r4, var800=$r5, var1650=$r6, var937=$r7}
; {cn.hutool.poi.excel.ExcelWriter=var3581, r0=var153, i0=var3513, org.apache.poi.ss.usermodel.CellStyle=var258, r1=var3380, java.lang.IllegalArgumentException=var3500, $r2=var3910, $r3=var1948, $r4=var2262, $r5=var800, $r6=var1650, $r7=var937}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.poi.excel.ExcelWriter;	i0 := @parameter0: int;	r1 := @parameter1: org.apache.poi.ss.usermodel.CellStyle;	if i0 >= 0 goto i1 = virtualinvoke r0.<cn.hutool.poi.excel.ExcelWriter: int getColumnCount()>();	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid row number (");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 2