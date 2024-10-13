(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var418 0)
(declare-sort var856 0)
(declare-sort var2584 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun autoBuild/697143117 (var418) var856)
(declare-fun getName/-1228753607 (var856) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2584_checkState/1431124798 (Bool) void)
(declare-const null-var418 var418)
(declare-const var2246 var418) ; Statement: r0 := @this: com.google.javascript.jscomp.PassFactory$Builder 
(assert (not (= var2246 null-var418)))
(assert true)
(define-const var2105 var856 (autoBuild/697143117 var2246)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.PassFactory$Builder: com.google.javascript.jscomp.PassFactory autoBuild()>() 
(assert true)
(define-const var2219 String (getName/-1228753607 var2105)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.PassFactory: java.lang.String getName()>() 
(assert true)
(define-const var1653 Bool (isEmpty/-1285796103 var2219)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var1653 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2142 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var2584_checkState/1431124798 var2142)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var2142!1 Bool)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {autoBuild/697143117=([com.google.javascript.jscomp.PassFactory$Builder], com.google.javascript.jscomp.PassFactory), getName/-1228753607=([com.google.javascript.jscomp.PassFactory], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var2584_checkState/1431124798=([boolean], void)}
; {var418=com.google.javascript.jscomp.PassFactory$Builder, var2246=r0, var856=com.google.javascript.jscomp.PassFactory, var2105=r1, var2219=$r2, var1653=$z0, var2142=$z1, var2584=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions}
; {com.google.javascript.jscomp.PassFactory$Builder=var418, r0=var2246, com.google.javascript.jscomp.PassFactory=var856, r1=var2105, $r2=var2219, $z0=var1653, $z1=var2142, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2584}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.PassFactory$Builder;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.PassFactory$Builder: com.google.javascript.jscomp.PassFactory autoBuild()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.PassFactory: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	return r1
;block_num 3