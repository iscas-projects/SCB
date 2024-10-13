(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3638 0)
(declare-sort var2606 0)
(declare-sort var1956 0)
(declare-sort var1831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTargetException/2075407118 (var2606) var1956)
(declare-fun toString/-1112415476 (var1956) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var1831 String) void)
(declare-fun cast-from-var3638-to-var1831 (var3638) var1831)
(declare-fun err/-656950776 (var3638) var1956)
(declare-const null-var3638 var3638)
(declare-const null-var2606 var2606)
(declare-const null-var1956 var1956)
(declare-const var1673 var3638) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.reflect.CannotInvokeException 
(assert (not (= var1673 null-var3638)))
(declare-const var2113 var2606) ; Statement: r2 := @parameter0: java.lang.reflect.InvocationTargetException 
(assert (not (= var2113 null-var2606)))
(define-const var3394 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3394)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3394!1 String)
(assert (= var3394!1 ""))
(assert true)
(define-const var2429 String (append/672562846 var3394!1 "by ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("by ") 
(declare-const var3394!2 String)
(assert (= var3394!2 (str.++ var3394!1 "by ")))
(assert true)
(define-const var3670 var1956 (getTargetException/2075407118 var2113)) ; Statement: $r3 = virtualinvoke r2.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>() 
(assert true)
(define-const var119 String (toString/-1112415476 var3670)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Throwable: java.lang.String toString()>() 
(assert true)
(define-const var1132 String (append/672562846 var2429 var119)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2429!1 String)
(assert (= var2429!1 (str.++ var2429 var119)))
(assert true)
(define-const var1526 String (toString/-2075883882 var1132)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 (cast-from-var3638-to-var1831 var1673) var1526)) ; Statement: specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7) 

(declare-const var1673!1 var3638)
(declare-const var1526!1 String)
(declare-const var1673!2 var3638)
(assert (not (= var1673!2 null-var3638)))
(assert (= (err/-656950776 var1673!2) null-var1956)) ; Statement: r0.<org.apache.ibatis.javassist.tools.reflect.CannotInvokeException: java.lang.Throwable err> = null 
(assert true)
(define-const var5 var1956 (getTargetException/2075407118 var2113)) ; Statement: $r8 = virtualinvoke r2.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>() 
(declare-const var1673!3 var3638)
(assert (not (= var1673!3 null-var3638)))
(assert (= (err/-656950776 var1673!3) var5)) ; Statement: r0.<org.apache.ibatis.javassist.tools.reflect.CannotInvokeException: java.lang.Throwable err> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTargetException/2075407118=([java.lang.reflect.InvocationTargetException], java.lang.Throwable), toString/-1112415476=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void), cast-from-var3638-to-var1831=([org.apache.ibatis.javassist.tools.reflect.CannotInvokeException], java.lang.RuntimeException), err/-656950776=([org.apache.ibatis.javassist.tools.reflect.CannotInvokeException], java.lang.Throwable)}
; {var3638=org.apache.ibatis.javassist.tools.reflect.CannotInvokeException, var1673=r0, var2606=java.lang.reflect.InvocationTargetException, var2113=r2, var3394=$r1, var2429=$r5, var1956=java.lang.Throwable, var3670=$r3, var119=$r4, var1132=$r6, var1526=$r7, var1831=java.lang.RuntimeException, var5=$r8}
; {org.apache.ibatis.javassist.tools.reflect.CannotInvokeException=var3638, r0=var1673, java.lang.reflect.InvocationTargetException=var2606, r2=var2113, $r1=var3394, $r5=var2429, java.lang.Throwable=var1956, $r3=var3670, $r4=var119, $r6=var1132, $r7=var1526, java.lang.RuntimeException=var1831, $r8=var5}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.reflect.CannotInvokeException;	r2 := @parameter0: java.lang.reflect.InvocationTargetException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("by ");	$r3 = virtualinvoke r2.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>();	$r4 = virtualinvoke $r3.<java.lang.Throwable: java.lang.String toString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7);	r0.<org.apache.ibatis.javassist.tools.reflect.CannotInvokeException: java.lang.Throwable err> = null;	$r8 = virtualinvoke r2.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>();	r0.<org.apache.ibatis.javassist.tools.reflect.CannotInvokeException: java.lang.Throwable err> = $r8;	return
;block_num 1