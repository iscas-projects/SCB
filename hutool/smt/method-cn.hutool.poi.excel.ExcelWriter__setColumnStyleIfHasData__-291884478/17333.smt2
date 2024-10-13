(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3618 0)
(declare-sort var3992 0)
(declare-sort var1804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1804-init () var1804)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1804 String) void)
(declare-const null-var3618 var3618)
(declare-const null-Int Int)
(declare-const null-var3992 var3992)
(declare-const var3374 var3618) ; Statement: r0 := @this: cn.hutool.poi.excel.ExcelWriter 
(assert (not (= var3374 null-var3618)))
(declare-const var1500 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1500 null-Int)))
(declare-const var2999 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2999 null-Int)))
(declare-const var1221 var3992) ; Statement: r1 := @parameter2: org.apache.poi.ss.usermodel.CellStyle 
(assert (not (= var1221 null-var3992)))
 ; Statement: if i0 >= 0 goto (branch) 
(assert (not (>= var1500 0))) ; Negate: Cond: i0 >= 0  
(define-const var821 var1804 var1804-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var1311 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1311)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1311!1 String)
(assert (= var1311!1 ""))
(assert true)
(define-const var2575 String (append/672562846 var1311!1 "Invalid column number (")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid column number (") 
(declare-const var1311!2 String)
(assert (= var1311!2 (str.++ var1311!1 "Invalid column number (")))
(assert true)
(define-const var2225 String (append/-1001720160 var2575 var1500)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2575!1 String)
(assert (str.prefixof var2575 var2575!1))
(assert true)
(define-const var1709 String (append/672562846 var2225 ")")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2225!1 String)
(assert (= var2225!1 (str.++ var2225 ")")))
(assert true)
(define-const var1871 String (toString/-2075883882 var1709)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var821 var1871)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var821!1 var1804)
(declare-const var1871!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1804-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3618=cn.hutool.poi.excel.ExcelWriter, var3374=r0, var1500=i0, var2999=i1, var3992=org.apache.poi.ss.usermodel.CellStyle, var1221=r1, var1804=java.lang.IllegalArgumentException, var821=$r8, var1311=$r9, var2575=$r10, var2225=$r11, var1709=$r12, var1871=$r13}
; {cn.hutool.poi.excel.ExcelWriter=var3618, r0=var3374, i0=var1500, i1=var2999, org.apache.poi.ss.usermodel.CellStyle=var3992, r1=var1221, java.lang.IllegalArgumentException=var1804, $r8=var821, $r9=var1311, $r10=var2575, $r11=var2225, $r12=var1709, $r13=var1871}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.poi.excel.ExcelWriter;	i0 := @parameter0: int;	i1 := @parameter1: int;	r1 := @parameter2: org.apache.poi.ss.usermodel.CellStyle;	if i0 >= 0 goto (branch);	$r8 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid column number (");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r8
;block_num 2