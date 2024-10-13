(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3372 0)
(declare-sort var842 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun items/667995530 (var3372) var842)
(declare-fun size/-1863229846 (var842) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3372 var3372)
(declare-const var271 var3372) ; Statement: r1 := @this: freemarker.core.ListLiteral 
(assert (not (= var271 null-var3372)))
(define-const var2884 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2884 "[")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("[") 
(declare-const var2884!1 String)
(assert (= var2884!1 "["))
(define-const var1574 var842 (items/667995530 var271)) ; Statement: $r2 = r1.<freemarker.core.ListLiteral: java.util.ArrayList items> 
(assert true)
(define-const var3285 Int (size/-1863229846 var1574)) ; Statement: i0 = virtualinvoke $r2.<java.util.ArrayList: int size()>() 
(define-const var2079 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (>= var2079 var3285)) ; Cond: i2 >= i0 
(assert true)
;(assert (append/672562846 var2884!1 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2884!2 String)
(assert (= var2884!2 (str.++ var2884!1 "]")))
(assert true)
(define-const var2232 String (toString/-2075883882 var2884!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), items/667995530=([freemarker.core.ListLiteral], java.util.ArrayList), size/-1863229846=([java.util.ArrayList], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3372=freemarker.core.ListLiteral, var271=r1, var2884=$r0, var842=java.util.ArrayList, var1574=$r2, var3285=i0, var2079=i2, var2232=$r3}
; {freemarker.core.ListLiteral=var3372, r1=var271, $r0=var2884, java.util.ArrayList=var842, $r2=var1574, i0=var3285, i2=var2079, $r3=var2232}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.ListLiteral;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("[");	$r2 = r1.<freemarker.core.ListLiteral: java.util.ArrayList items>;	i0 = virtualinvoke $r2.<java.util.ArrayList: int size()>();	i2 = 0;	if i2 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3