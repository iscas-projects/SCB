(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var321 0)
(declare-sort var501 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var321 var321)
(declare-const null-String String)
(declare-const var555 var321) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Available 
(assert (not (= var555 null-var321)))
(declare-const var2873 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2873 null-String)))
(assert true)
(define-const var658 Bool (isEmpty/-1285796103 var2873)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var658 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var321=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Available, var555=r1, var2873=r0, var501=null_type, var658=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Available=var321, r1=var555, r0=var2873, null_type=var501, $z0=var658}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Available;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return;	return
;block_num 2