(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3826 0)
(declare-sort var3083 0)
(declare-sort var1515 0)
(declare-sort var1706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMethod/-849361565 (var1706) var1515)
(declare-fun cast-from-var3826-to-var1706 (var3826) var1706)
(declare-fun getName/1227988463 (var1515) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var3826 var3826)
(declare-const null-var3083 var3083)
(declare-const var2633 var3826) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14 
(assert (not (= var2633 null-var3826)))
(declare-const var308 var3083) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var308 null-var3083)))
(declare-const var504 var3083) ; Statement: r7 := @parameter1: java.lang.Object 
(assert (not (= var504 null-var3083)))
(assert true)
(define-const var3192 var1515 (getMethod/-849361565 (cast-from-var3826-to-var1706 var2633))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14: java.lang.reflect.Method getMethod()>() 
(assert true)
(define-const var339 String (getName/1227988463 var3192)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2929 Bool (endsWith/985337093 var339 "Configured")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>("Configured") 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2929 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getMethod/-849361565=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator], java.lang.reflect.Method), cast-from-var3826-to-var1706=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator), getName/1227988463=([java.lang.reflect.Method], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3826=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14, var2633=r0, var3083=java.lang.Object, var308=r3, var504=r7, var1515=java.lang.reflect.Method, var1706=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator, var3192=$r1, var339=$r2, var2929=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14=var3826, r0=var2633, java.lang.Object=var3083, r3=var308, r7=var504, java.lang.reflect.Method=var1515, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator=var1706, $r1=var3192, $r2=var339, $z0=var2929}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14;	r3 := @parameter0: java.lang.Object;	r7 := @parameter1: java.lang.Object;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$14: java.lang.reflect.Method getMethod()>();	$r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>("Configured");	if $z0 == 0 goto return;	return
;block_num 2