(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3128 0)
(declare-sort var209 0)
(declare-sort var2409 0)
(declare-sort var3275 0)
(declare-sort var333 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMethod/-849361565 (var333) var3275)
(declare-fun cast-from-var3128-to-var333 (var3128) var333)
(declare-fun getName/1227988463 (var3275) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun val$nestedObject/1770628189 (var3128) var2409)
(declare-const null-var3128 var3128)
(declare-const null-var209 var209)
(declare-const null-var2409 var2409)
(declare-const var3697 var3128) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14 
(assert (not (= var3697 null-var3128)))
(declare-const var3855 var209) ; Statement: r8 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var3855 null-var209)))
(declare-const var2249 var2409) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var2249 null-var2409)))
(declare-const var2099 var2409) ; Statement: r9 := @parameter2: java.lang.Object 
(assert (not (= var2099 null-var2409)))
(assert true)
(define-const var740 var3275 (getMethod/-849361565 (cast-from-var3128-to-var333 var3697))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14: java.lang.reflect.Method getMethod()>() 
(assert true)
(define-const var272 String (getName/1227988463 var740)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var970 Bool (endsWith/985337093 var272 "Configured")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>("Configured") 
 ; Statement: if $z0 != 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14: java.lang.Object val$nestedObject> 
(assert (not (= (ite var970 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2929 var2409 (val$nestedObject/1770628189 var3697)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14: java.lang.Object val$nestedObject> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getMethod/-849361565=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator], java.lang.reflect.Method), cast-from-var3128-to-var333=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator), getName/1227988463=([java.lang.reflect.Method], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), val$nestedObject/1770628189=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14], java.lang.Object)}
; {var3128=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14, var3697=r0, var209=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3855=r8, var2409=java.lang.Object, var2249=r4, var2099=r9, var3275=java.lang.reflect.Method, var333=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator, var740=$r1, var272=$r2, var970=$z0, var2929=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14=var3128, r0=var3697, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var209, r8=var3855, java.lang.Object=var2409, r4=var2249, r9=var2099, java.lang.reflect.Method=var3275, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator=var333, $r1=var740, $r2=var272, $z0=var970, $r3=var2929}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14;	r8 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r4 := @parameter1: java.lang.Object;	r9 := @parameter2: java.lang.Object;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14: java.lang.reflect.Method getMethod()>();	$r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>("Configured");	if $z0 != 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14: java.lang.Object val$nestedObject>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14: java.lang.Object val$nestedObject>;	return $r3
;block_num 2