(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var636 0)
(declare-sort var2513 0)
(declare-sort var784 0)
(declare-sort var1901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1112415476 (var784) String)
(declare-fun cast-from-var2513-to-var784 (var2513) var784)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var1901 String) void)
(declare-fun cast-from-var636-to-var1901 (var636) var1901)
(declare-fun err/-656950776 (var636) var784)
(declare-const null-var636 var636)
(declare-const null-var2513 var2513)
(declare-const null-var784 var784)
(declare-const var859 var636) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.reflect.CannotInvokeException 
(assert (not (= var859 null-var636)))
(declare-const var3902 var2513) ; Statement: r2 := @parameter0: java.lang.IllegalAccessException 
(assert (not (= var3902 null-var2513)))
(define-const var2105 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2105)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2105!1 String)
(assert (= var2105!1 ""))
(assert true)
(define-const var1769 String (append/672562846 var2105!1 "by ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("by ") 
(declare-const var2105!2 String)
(assert (= var2105!2 (str.++ var2105!1 "by ")))
(assert true)
(define-const var1823 String (toString/-1112415476 (cast-from-var2513-to-var784 var3902))) ; Statement: $r3 = virtualinvoke r2.<java.lang.IllegalAccessException: java.lang.String toString()>() 
(assert true)
(define-const var1986 String (append/672562846 var1769 var1823)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1769!1 String)
(assert (= var1769!1 (str.++ var1769 var1823)))
(assert true)
(define-const var1341 String (toString/-2075883882 var1986)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 (cast-from-var636-to-var1901 var859) var1341)) ; Statement: specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var859!1 var636)
(declare-const var1341!1 String)
(declare-const var859!2 var636)
(assert (not (= var859!2 null-var636)))
(assert (= (err/-656950776 var859!2) null-var784)) ; Statement: r0.<org.apache.ibatis.javassist.tools.reflect.CannotInvokeException: java.lang.Throwable err> = null 
(declare-const var859!3 var636)
(assert (not (= var859!3 null-var636)))
(assert (= (err/-656950776 var859!3) (cast-from-var2513-to-var784 var3902))) ; Statement: r0.<org.apache.ibatis.javassist.tools.reflect.CannotInvokeException: java.lang.Throwable err> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var2513-to-var784=([java.lang.IllegalAccessException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void), cast-from-var636-to-var1901=([org.apache.ibatis.javassist.tools.reflect.CannotInvokeException], java.lang.RuntimeException), err/-656950776=([org.apache.ibatis.javassist.tools.reflect.CannotInvokeException], java.lang.Throwable)}
; {var636=org.apache.ibatis.javassist.tools.reflect.CannotInvokeException, var859=r0, var2513=java.lang.IllegalAccessException, var3902=r2, var2105=$r1, var1769=$r4, var784=java.lang.Throwable, var1823=$r3, var1986=$r5, var1341=$r6, var1901=java.lang.RuntimeException}
; {org.apache.ibatis.javassist.tools.reflect.CannotInvokeException=var636, r0=var859, java.lang.IllegalAccessException=var2513, r2=var3902, $r1=var2105, $r4=var1769, java.lang.Throwable=var784, $r3=var1823, $r5=var1986, $r6=var1341, java.lang.RuntimeException=var1901}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.reflect.CannotInvokeException;	r2 := @parameter0: java.lang.IllegalAccessException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("by ");	$r3 = virtualinvoke r2.<java.lang.IllegalAccessException: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	r0.<org.apache.ibatis.javassist.tools.reflect.CannotInvokeException: java.lang.Throwable err> = null;	r0.<org.apache.ibatis.javassist.tools.reflect.CannotInvokeException: java.lang.Throwable err> = r2;	return
;block_num 1