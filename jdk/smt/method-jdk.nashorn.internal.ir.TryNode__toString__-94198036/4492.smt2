(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3184 var3184)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2355 var3184) ; Statement: r1 := @this: jdk.nashorn.internal.ir.TryNode 
(assert (not (= var2355 null-var3184)))
(declare-const var695 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var695 null-String)))
(declare-const var1231 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1231 null-Bool)))
(assert true)
;(assert (append/672562846 var695 "try ")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("try ") 
(declare-const var695!1 String)
(assert (= var695!1 (str.++ var695 "try ")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3184=jdk.nashorn.internal.ir.TryNode, var2355=r1, var695=r0, var1231=z0}
; {jdk.nashorn.internal.ir.TryNode=var3184, r1=var2355, r0=var695, z0=var1231}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.TryNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("try ");	return
;block_num 1