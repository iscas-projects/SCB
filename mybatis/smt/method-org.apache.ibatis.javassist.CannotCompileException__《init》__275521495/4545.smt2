(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2589 0)
(declare-sort var3071 0)
(declare-sort var3874 0)
(declare-sort var2482 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-480142003 (var2589 String var2482) void)
(declare-fun cast-from-var3071-to-var2482 (var3071) var2482)
(declare-const null-var2589 var2589)
(declare-const null-var3071 var3071)
(declare-const null-String String)
(declare-const var2442 var2589) ; Statement: r0 := @this: org.apache.ibatis.javassist.CannotCompileException 
(assert (not (= var2442 null-var2589)))
(declare-const var2461 var3071) ; Statement: r5 := @parameter0: java.lang.ClassNotFoundException 
(assert (not (= var2461 null-var3071)))
(declare-const var379 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var379 null-String)))
(define-const var1397 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1397)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1397!1 String)
(assert (= var1397!1 ""))
(assert true)
(define-const var2704 String (append/672562846 var1397!1 "cannot find ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot find ") 
(declare-const var1397!2 String)
(assert (= var1397!2 (str.++ var1397!1 "cannot find ")))
(assert true)
(define-const var1731 String (append/672562846 var2704 var379)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2704!1 String)
(assert (= var2704!1 (str.++ var2704 var379)))
(assert true)
(define-const var2714 String (toString/-2075883882 var1731)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-480142003 var2442 var2714 (cast-from-var3071-to-var2482 var2461))) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String,java.lang.Throwable)>($r6, r5) 

(declare-const var2442!1 var2589)
(declare-const var2714!1 String)
(declare-const var2461!1 var3071)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-480142003=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String, java.lang.Throwable], void), cast-from-var3071-to-var2482=([java.lang.ClassNotFoundException], java.lang.Throwable)}
; {var2589=org.apache.ibatis.javassist.CannotCompileException, var2442=r0, var3071=java.lang.ClassNotFoundException, var2461=r5, var379=r2, var3874=null_type, var1397=$r1, var2704=$r3, var1731=$r4, var2714=$r6, var2482=java.lang.Throwable}
; {org.apache.ibatis.javassist.CannotCompileException=var2589, r0=var2442, java.lang.ClassNotFoundException=var3071, r5=var2461, r2=var379, null_type=var3874, $r1=var1397, $r3=var2704, $r4=var1731, $r6=var2714, java.lang.Throwable=var2482}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CannotCompileException;	r5 := @parameter0: java.lang.ClassNotFoundException;	r2 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot find ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String,java.lang.Throwable)>($r6, r5);	return
;block_num 1