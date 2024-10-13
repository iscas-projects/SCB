(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2580 0)
(declare-sort var3210 0)
(declare-sort var2844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun className/-1608030493 (var2580) String)
(declare-fun getClass/1258963082 (var2844) ClassObject)
(declare-fun cast-from-var3210-to-var2844 (var3210) var2844)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var2580 var2580)
(declare-const null-var3210 var3210)
(declare-const var611 var2580) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission 
(assert (not (= var611 null-var2580)))
(declare-const var3724 var3210) ; Statement: r1 := @parameter0: java.security.Permission 
(assert (not (= var3724 null-var3210)))
(define-const var784 String (className/-1608030493 var611)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String className> 
(assert true)
(define-const var169 ClassObject (getClass/1258963082 (cast-from-var3210-to-var2844 var3724))) ; Statement: $r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var808 String (getName/-1958580599 var169)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var755 Bool (= var784 var808)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 != 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String name> 
(assert (not (not (= (ite var755 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {className/-1608030493=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3210-to-var2844=([java.security.Permission], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var2580=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission, var611=r0, var3210=java.security.Permission, var3724=r1, var784=$r2, var2844=java.lang.Object, var169=$r3, var808=$r4, var755=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission=var2580, r0=var611, java.security.Permission=var3210, r1=var3724, $r2=var784, java.lang.Object=var2844, $r3=var169, $r4=var808, $z0=var755}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission;	r1 := @parameter0: java.security.Permission;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String className>;	$r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 != 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String name>;	return 0
;block_num 2