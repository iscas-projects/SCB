(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var338 0)
(declare-sort var3686 0)
(declare-sort var1687 0)
(declare-sort var1319 0)
(declare-sort var402 0)
(declare-sort var2889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun val$m/-1743998278 (var338) var402)
(declare-fun arr-var2889-init () (Array Int var2889))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2889_valueOf/-1186540555 (Int) var2889)
(declare-fun cast-from-__Array__Int__var2889__-to-__Array__Int__var1687__ ((Array Int var2889)) (Array Int var1687))
(declare-fun invoke/-1759464968 (var402 var1687 (Array Int var1687)) var1687)
(declare-const null-var338 var338)
(declare-const null-var3686 var3686)
(declare-const null-var1687 var1687)
(declare-const null-String String)
(declare-const null-__Array__Int__var2889__ (Array Int var2889))
(declare-const var3615 var338) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4 
(assert (not (= var3615 null-var338)))
(declare-const var750 var3686) ; Statement: r14 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var750 null-var3686)))
(declare-const var1618 var1687) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1618 null-var1687)))
(declare-const var3081 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3081 null-String)))
(assert true)
(define-const var819 Bool (isEmpty/-1285796103 var3081)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4: java.lang.reflect.Method val$m> 
(assert (= (ite var819 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2106 var402 (val$m/-1743998278 var3615)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4: java.lang.reflect.Method val$m> 
(define-const var822 (Array Int var2889) arr-var2889-init) ; Statement: $r3 = newarray (java.lang.Character)[1] 
(assert (and true (and (> (str.len var3081) 0) (<= 0 0))))
(define-const var390 Int (charAt/698050440 var3081 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var678 var2889 (var2889_valueOf/-1186540555 var390)) ; Statement: $r5 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c0) 
(declare-const var822!1 (Array Int var2889))
(assert (not (= var822!1 null-__Array__Int__var2889__)))
(assert (= (select var822!1 0) var678)) ; Statement: $r3[0] = $r5 
(define-const var396 (Array Int var1687) (cast-from-__Array__Int__var2889__-to-__Array__Int__var1687__ var822!1)) ; Statement: $r6 = (java.lang.Object[]) $r3 
(assert true)
;(assert (invoke/-1759464968 var2106 var1618 var396)) ; Statement: virtualinvoke $r4.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r2, $r6) 

(declare-const var2106!1 var402)
(declare-const var1618!1 var1687)
(declare-const var396!1 (Array Int var1687))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), val$m/-1743998278=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4], java.lang.reflect.Method), arr-var2889-init=([], java.lang.Character[]), charAt/698050440=([java.lang.String, int], char), var2889_valueOf/-1186540555=([char], java.lang.Character), cast-from-__Array__Int__var2889__-to-__Array__Int__var1687__=([java.lang.Character[]], java.lang.Object[]), invoke/-1759464968=([java.lang.reflect.Method, java.lang.Object, java.lang.Object[]], java.lang.Object)}
; {var338=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4, var3615=r1, var3686=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var750=r14, var1687=java.lang.Object, var1618=r2, var3081=r0, var1319=null_type, var819=$z0, var402=java.lang.reflect.Method, var2106=$r4, var2889=java.lang.Character, var822=$r3, var390=$c0, var678=$r5, var396=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4=var338, r1=var3615, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3686, r14=var750, java.lang.Object=var1687, r2=var1618, r0=var3081, null_type=var1319, $z0=var819, java.lang.reflect.Method=var402, $r4=var2106, java.lang.Character=var2889, $r3=var822, $c0=var390, $r5=var678, $r6=var396}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4;	r14 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r2 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4: java.lang.reflect.Method val$m>;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4: java.lang.reflect.Method val$m>;	$r3 = newarray (java.lang.Character)[1];	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r5 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c0);	$r3[0] = $r5;	$r6 = (java.lang.Object[]) $r3;	virtualinvoke $r4.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r2, $r6);	return
;block_num 2