(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2580 0)
(declare-sort var1569 0)
(declare-sort var3345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2580 var2580)
(declare-const null-String String)
(declare-const null-var3345 var3345)
(declare-const var3016 var2580) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase 
(assert (not (= var3016 null-var2580)))
(declare-const var330 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var330 null-String)))
(declare-const var3058 var3345) ; Statement: r5 := @parameter1: java.lang.Object 
(assert (not (= var3058 null-var3345)))
(assert true)
(define-const var2816 Bool (isEmpty/-1285796103 var330)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2816 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2580=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase, var3016=r4, var330=r0, var1569=null_type, var3345=java.lang.Object, var3058=r5, var2816=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase=var2580, r4=var3016, r0=var330, null_type=var1569, java.lang.Object=var3345, r5=var3058, $z0=var2816}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase;	r0 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.Object;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return;	return
;block_num 2