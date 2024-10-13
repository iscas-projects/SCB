(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1525 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1525 null-String)))
(declare-const var3213 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var3213 null-Int)))
 ; Statement: if r0 != null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(assert (not (= var1525 null-String))) ; Cond: r0 != null 
(assert true)
;(assert (append/-1166366385 var1525 var3213)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var1525!1 String)
(assert (str.prefixof var1525 var1525!1))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1525=r0, var3213=c0}
; {r0=var1525, c0=var3213}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	c0 := @parameter1: char;	if r0 != null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	return
;block_num 3