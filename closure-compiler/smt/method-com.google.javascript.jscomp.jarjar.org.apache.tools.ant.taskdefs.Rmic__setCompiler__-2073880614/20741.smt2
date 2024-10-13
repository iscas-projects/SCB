(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1279 0)
(declare-sort var2746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1279 var1279)
(declare-const null-String String)
(declare-const var3409 var1279) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic 
(assert (not (= var3409 null-var1279)))
(declare-const var1518 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1518 null-String)))
(assert true)
(define-const var2993 Bool (isEmpty/-1285796103 var1518)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2993 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1279=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic, var3409=r1, var1518=r0, var2746=null_type, var2993=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic=var1279, r1=var3409, r0=var1518, null_type=var2746, $z0=var2993}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return;	return
;block_num 2