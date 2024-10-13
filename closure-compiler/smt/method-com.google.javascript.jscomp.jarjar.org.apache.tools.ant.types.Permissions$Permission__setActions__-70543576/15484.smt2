(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2008 0)
(declare-sort var1581 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun actionString/-1608030493 (var2008) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2008 var2008)
(declare-const null-String String)
(declare-const var1534 var2008) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission 
(assert (not (= var1534 null-var2008)))
(declare-const var1673 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1673 null-String)))
(declare-const var1534!1 var2008)
(assert (not (= var1534!1 null-var2008)))
(assert (= (actionString/-1608030493 var1534!1) var1673)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String actionString> = r1 
(assert true)
(define-const var586 Bool (isEmpty/-1285796103 var1673)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var586 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {actionString/-1608030493=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2008=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission, var1534=r0, var1673=r1, var1581=null_type, var586=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission=var2008, r0=var1534, r1=var1673, null_type=var1581, $z0=var586}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission;	r1 := @parameter0: java.lang.String;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String actionString> = r1;	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return;	return
;block_num 2