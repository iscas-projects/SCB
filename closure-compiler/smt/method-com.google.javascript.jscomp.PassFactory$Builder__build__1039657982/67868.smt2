(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1434 0)
(declare-sort var1749 0)
(declare-sort var1586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun autoBuild/697143117 (var1434) var1749)
(declare-fun getName/-1228753607 (var1749) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1586_checkState/1431124798 (Bool) void)
(declare-const null-var1434 var1434)
(declare-const var3649 var1434) ; Statement: r0 := @this: com.google.javascript.jscomp.PassFactory$Builder 
(assert (not (= var3649 null-var1434)))
(assert true)
(define-const var2956 var1749 (autoBuild/697143117 var3649)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.PassFactory$Builder: com.google.javascript.jscomp.PassFactory autoBuild()>() 
(assert true)
(define-const var3387 String (getName/-1228753607 var2956)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.PassFactory: java.lang.String getName()>() 
(assert true)
(define-const var3227 Bool (isEmpty/-1285796103 var3387)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var3227 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2821 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var1586_checkState/1431124798 var2821)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var2821!1 Bool)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {autoBuild/697143117=([com.google.javascript.jscomp.PassFactory$Builder], com.google.javascript.jscomp.PassFactory), getName/-1228753607=([com.google.javascript.jscomp.PassFactory], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var1586_checkState/1431124798=([boolean], void)}
; {var1434=com.google.javascript.jscomp.PassFactory$Builder, var3649=r0, var1749=com.google.javascript.jscomp.PassFactory, var2956=r1, var3387=$r2, var3227=$z0, var2821=$z1, var1586=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions}
; {com.google.javascript.jscomp.PassFactory$Builder=var1434, r0=var3649, com.google.javascript.jscomp.PassFactory=var1749, r1=var2956, $r2=var3387, $z0=var3227, $z1=var2821, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1586}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.PassFactory$Builder;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.PassFactory$Builder: com.google.javascript.jscomp.PassFactory autoBuild()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.PassFactory: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	return r1
;block_num 3