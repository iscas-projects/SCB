(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1908 var1908)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var675 var1908) ; Statement: r1 := @this: jdk.nashorn.internal.ir.SplitReturn 
(assert (not (= var675 null-var1908)))
(declare-const var1274 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1274 null-String)))
(declare-const var1101 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1101 null-Bool)))
(assert true)
;(assert (append/672562846 var1274 ":splitreturn;")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":splitreturn;") 
(declare-const var1274!1 String)
(assert (= var1274!1 (str.++ var1274 ":splitreturn;")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1908=jdk.nashorn.internal.ir.SplitReturn, var675=r1, var1274=r0, var1101=z0}
; {jdk.nashorn.internal.ir.SplitReturn=var1908, r1=var675, r0=var1274, z0=var1101}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.SplitReturn;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":splitreturn;");	return
;block_num 1