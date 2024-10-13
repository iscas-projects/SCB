(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var816 var816)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3588 var816) ; Statement: r1 := @this: jdk.nashorn.internal.ir.EmptyNode 
(assert (not (= var3588 null-var816)))
(declare-const var3394 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3394 null-String)))
(declare-const var198 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var198 null-Bool)))
(assert true)
;(assert (append/-1166366385 var3394 59)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var3394!1 String)
(assert (str.prefixof var3394 var3394!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var816=jdk.nashorn.internal.ir.EmptyNode, var3588=r1, var3394=r0, var198=z0}
; {jdk.nashorn.internal.ir.EmptyNode=var816, r1=var3588, r0=var3394, z0=var198}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.EmptyNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	return
;block_num 1