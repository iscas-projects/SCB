(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var154 0)
(declare-sort var1058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var154 var154)
(declare-const null-String String)
(declare-const var1576 var154) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable 
(assert (not (= var1576 null-var154)))
(declare-const var2548 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2548 null-String)))
(assert true)
(define-const var2814 Bool (isEmpty/-1285796103 var2548)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer characters> 
(assert (not (= (ite var2814 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var154=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, var1576=r1, var2548=r0, var1058=null_type, var2814=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable=var154, r1=var1576, r0=var2548, null_type=var1058, $z0=var2814}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer characters>;	return
;block_num 2