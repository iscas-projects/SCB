(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2711 0)
(declare-sort var15 0)
(declare-sort var376 0)
(declare-sort var2240 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun targets/1631853323 (var2711) var376)
(declare-fun var376_add/328494887 (var376 var2240) Bool)
(declare-fun cast-from-String-to-var2240 (String) var2240)
(declare-fun targetAttributeSet/1631853323 (var2711) Bool)
(declare-const null-var2711 var2711)
(declare-const null-String String)
(declare-const var2981 var2711) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant 
(assert (not (= var2981 null-var2711)))
(declare-const var2741 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2741 null-String)))
(assert true)
(define-const var218 Bool (isEmpty/-1285796103 var2741)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant: java.util.List targets> 
(assert (= (ite var218 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2670 var376 (targets/1631853323 var2981)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant: java.util.List targets> 
;(assert (var376_add/328494887 var2670 (cast-from-String-to-var2240 var2741))) ; Statement: interfaceinvoke $r2.<java.util.List: boolean add(java.lang.Object)>(r0) 

(declare-const var2670!1 var376)
(declare-const var2741!1 String)
(declare-const var2981!1 var2711)
(assert (not (= var2981!1 null-var2711)))
(assert (= (targetAttributeSet/1631853323 var2981!1) (ite (= 1 1) true false))) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant: boolean targetAttributeSet> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), targets/1631853323=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant], java.util.List), var376_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2240=([java.lang.String], java.lang.Object), targetAttributeSet/1631853323=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant], boolean)}
; {var2711=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant, var2981=r1, var2741=r0, var15=null_type, var218=$z0, var376=java.util.List, var2670=$r2, var2240=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant=var2711, r1=var2981, r0=var2741, null_type=var15, $z0=var218, java.util.List=var376, $r2=var2670, java.lang.Object=var2240}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant: java.util.List targets>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant: java.util.List targets>;	interfaceinvoke $r2.<java.util.List: boolean add(java.lang.Object)>(r0);	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant: boolean targetAttributeSet> = 1;	return
;block_num 2