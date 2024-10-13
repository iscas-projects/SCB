(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var510 0)
(declare-sort var2496 0)
(declare-sort var2082 0)
(declare-sort var393 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1112415476 (var2082) String)
(declare-fun cast-from-var2496-to-var2082 (var2496) var2082)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var393 String) void)
(declare-fun cast-from-var510-to-var393 (var510) var393)
(declare-fun err/-656950776 (var510) var2082)
(declare-const null-var510 var510)
(declare-const null-var2496 var2496)
(declare-const null-var2082 var2082)
(declare-const var2577 var510) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.reflect.CannotInvokeException 
(assert (not (= var2577 null-var510)))
(declare-const var853 var2496) ; Statement: r2 := @parameter0: java.lang.ClassNotFoundException 
(assert (not (= var853 null-var2496)))
(define-const var1287 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1287)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1287!1 String)
(assert (= var1287!1 ""))
(assert true)
(define-const var2898 String (append/672562846 var1287!1 "by ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("by ") 
(declare-const var1287!2 String)
(assert (= var1287!2 (str.++ var1287!1 "by ")))
(assert true)
(define-const var1764 String (toString/-1112415476 (cast-from-var2496-to-var2082 var853))) ; Statement: $r3 = virtualinvoke r2.<java.lang.ClassNotFoundException: java.lang.String toString()>() 
(assert true)
(define-const var2515 String (append/672562846 var2898 var1764)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2898!1 String)
(assert (= var2898!1 (str.++ var2898 var1764)))
(assert true)
(define-const var924 String (toString/-2075883882 var2515)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 (cast-from-var510-to-var393 var2577) var924)) ; Statement: specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var2577!1 var510)
(declare-const var924!1 String)
(declare-const var2577!2 var510)
(assert (not (= var2577!2 null-var510)))
(assert (= (err/-656950776 var2577!2) null-var2082)) ; Statement: r0.<org.apache.ibatis.javassist.tools.reflect.CannotInvokeException: java.lang.Throwable err> = null 
(declare-const var2577!3 var510)
(assert (not (= var2577!3 null-var510)))
(assert (= (err/-656950776 var2577!3) (cast-from-var2496-to-var2082 var853))) ; Statement: r0.<org.apache.ibatis.javassist.tools.reflect.CannotInvokeException: java.lang.Throwable err> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var2496-to-var2082=([java.lang.ClassNotFoundException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void), cast-from-var510-to-var393=([org.apache.ibatis.javassist.tools.reflect.CannotInvokeException], java.lang.RuntimeException), err/-656950776=([org.apache.ibatis.javassist.tools.reflect.CannotInvokeException], java.lang.Throwable)}
; {var510=org.apache.ibatis.javassist.tools.reflect.CannotInvokeException, var2577=r0, var2496=java.lang.ClassNotFoundException, var853=r2, var1287=$r1, var2898=$r4, var2082=java.lang.Throwable, var1764=$r3, var2515=$r5, var924=$r6, var393=java.lang.RuntimeException}
; {org.apache.ibatis.javassist.tools.reflect.CannotInvokeException=var510, r0=var2577, java.lang.ClassNotFoundException=var2496, r2=var853, $r1=var1287, $r4=var2898, java.lang.Throwable=var2082, $r3=var1764, $r5=var2515, $r6=var924, java.lang.RuntimeException=var393}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.reflect.CannotInvokeException;	r2 := @parameter0: java.lang.ClassNotFoundException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("by ");	$r3 = virtualinvoke r2.<java.lang.ClassNotFoundException: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	r0.<org.apache.ibatis.javassist.tools.reflect.CannotInvokeException: java.lang.Throwable err> = null;	r0.<org.apache.ibatis.javassist.tools.reflect.CannotInvokeException: java.lang.Throwable err> = r2;	return
;block_num 1