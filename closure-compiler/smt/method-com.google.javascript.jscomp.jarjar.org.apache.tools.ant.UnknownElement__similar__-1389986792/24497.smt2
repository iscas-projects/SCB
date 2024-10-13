(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2625 0)
(declare-sort var5 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var5) ClassObject)
(declare-fun cast-from-var2625-to-var5 (var2625) var5)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var2625 var2625)
(declare-const null-var5 var5)
(declare-const var3451 var2625) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement 
(assert (not (= var3451 null-var2625)))
(declare-const var500 var5) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var500 null-var5)))
 ; Statement: if r0 != null goto $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= var500 null-var5))) ; Cond: r0 != null 
(assert true)
(define-const var1894 ClassObject (getClass/1258963082 (cast-from-var2625-to-var5 var3451))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2353 String (getName/-1958580599 var1894)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1067 ClassObject (getClass/1258963082 var500)) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2542 String (getName/-1958580599 var1067)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1079 Bool (= var2353 var2542)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 != 0 goto r6 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement) r0 
(assert (not (not (= (ite var1079 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2625-to-var5=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var2625=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement, var3451=r1, var5=java.lang.Object, var500=r0, var1894=$r2, var2353=$r5, var1067=$r3, var2542=$r4, var1079=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement=var2625, r1=var3451, java.lang.Object=var5, r0=var500, $r2=var1894, $r5=var2353, $r3=var1067, $r4=var2542, $z0=var1079}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 != 0 goto r6 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement) r0;	return 0
;block_num 3