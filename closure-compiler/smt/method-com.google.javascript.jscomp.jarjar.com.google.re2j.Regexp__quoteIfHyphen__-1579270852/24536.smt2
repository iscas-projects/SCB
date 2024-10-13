(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1189 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1189 null-String)))
(declare-const var578 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var578 null-Int)))
 ; Statement: if i0 != 45 goto return 
(assert (not (not (= var578 45)))) ; Negate: Cond: i0 != 45  
(assert true)
;(assert (append/-1166366385 var1189 92)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92) 
(declare-const var1189!1 String)
(assert (str.prefixof var1189 var1189!1))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1189=r0, var578=i0}
; {r0=var1189, i0=var578}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	if i0 != 45 goto return;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);	return
;block_num 3