(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1150 0)
(declare-sort var3129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1150 var1150)
(declare-const null-String String)
(declare-const var906 var1150) ; Statement: r2 := @this: junit.runner.BaseTestRunner 
(assert (not (= var906 null-var1150)))
(declare-const var1760 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1760 null-String)))
(assert true)
(define-const var60 Bool (startsWith/-1785782452 var1760 "Default package for")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("Default package for") 
 ; Statement: if $z0 == 0 goto return r0 
(assert (= (ite var60 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1150=junit.runner.BaseTestRunner, var906=r2, var1760=r0, var3129=null_type, var60=$z0}
; {junit.runner.BaseTestRunner=var1150, r2=var906, r0=var1760, null_type=var3129, $z0=var60}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: junit.runner.BaseTestRunner;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("Default package for");	if $z0 == 0 goto return r0;	return r0
;block_num 2