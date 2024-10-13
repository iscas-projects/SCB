(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1950 0)
(declare-sort var89 0)
(declare-sort var1179 0)
(declare-sort var1631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-1293039071 (var1950) ClassObject)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun method/-1293039071 (var1950) var1631)
(declare-fun arr-var1179-init () (Array Int var1179))
(declare-fun invoke/-1759464968 (var1631 var1179 (Array Int var1179)) var1179)
(declare-const null-var1950 var1950)
(declare-const null-var89 var89)
(declare-const null-var1179 var1179)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__var1179__ (Array Int var1179))
(declare-const var507 var1950) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter 
(assert (not (= var507 null-var1950)))
(declare-const var1796 var89) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1796 null-var89)))
(declare-const var3157 var1179) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3157 null-var1179)))
(declare-const var2547 var1179) ; Statement: r4 := @parameter2: java.lang.Object 
(assert (not (= var2547 null-var1179)))
(define-const var2767 ClassObject (type/-1293039071 var507)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.Class type> 
 ; Statement: if $r1 == null goto $r5 = virtualinvoke r4.<java.lang.Object: java.lang.String toString()>() 
(assert (not (= var2767 null-ClassObject))) ; Negate: Cond: $r1 == null  
(define-const var179 ClassObject (type/-1293039071 var507)) ; Statement: r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.Class type> 
(define-const var271 ClassObject (type/-1293039071 var507)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.Class type> 
(assert true)
(define-const var432 Bool (isPrimitive/-473230874 var271)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var432 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r4 == null goto $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.reflect.Method method> 
(assert (= var2547 null-var1179)) ; Cond: r4 == null 
(define-const var601 var1631 (method/-1293039071 var507)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.reflect.Method method> 
(define-const var1245 (Array Int var1179) arr-var1179-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var1245!1 (Array Int var1179))
(assert (not (= var1245!1 null-__Array__Int__var1179__)))
(assert (= (select var1245!1 0) var2547)) ; Statement: $r7[0] = r4 
(assert true)
;(assert (invoke/-1759464968 var601 var3157 var1245!1)) ; Statement: virtualinvoke $r8.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r3, $r7) 

(declare-const var601!1 var1631)
(declare-const var3157!1 var1179)
(declare-const var1245!2 (Array Int var1179))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-1293039071=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter], java.lang.Class), isPrimitive/-473230874=([java.lang.Class], boolean), method/-1293039071=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter], java.lang.reflect.Method), arr-var1179-init=([], java.lang.Object[]), invoke/-1759464968=([java.lang.reflect.Method, java.lang.Object, java.lang.Object[]], java.lang.Object)}
; {var1950=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter, var507=r0, var89=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1796=r2, var1179=java.lang.Object, var3157=r3, var2547=r4, var2767=$r1, var179=r22, var271=$r6, var432=$z0, var1631=java.lang.reflect.Method, var601=$r8, var1245=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter=var1950, r0=var507, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var89, r2=var1796, java.lang.Object=var1179, r3=var3157, r4=var2547, $r1=var2767, r22=var179, $r6=var271, $z0=var432, java.lang.reflect.Method=var1631, $r8=var601, $r7=var1245}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r3 := @parameter1: java.lang.Object;	r4 := @parameter2: java.lang.Object;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.Class type>;	if $r1 == null goto $r5 = virtualinvoke r4.<java.lang.Object: java.lang.String toString()>();	r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.Class type>;	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.Class type>;	$z0 = virtualinvoke $r6.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto (branch);	if r4 == null goto $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.reflect.Method method>;	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.reflect.Method method>;	$r7 = newarray (java.lang.Object)[1];	$r7[0] = r4;	virtualinvoke $r8.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r3, $r7);	return
;block_num 4