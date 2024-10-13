(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2152 0)
(declare-sort var1850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1850-to-String (var1850) String)
(declare-fun append/-1031950772 (String var1850) String)
(declare-const null-var2152 var2152)
(declare-const null-var1850 var1850)
(declare-const var685 var2152) ; Statement: $r0 := @this: org.apache.commons.lang3.stream.LangCollectors$append__239 
(assert (not (= var685 null-var2152)))
(declare-const var3710 var1850) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var3710 null-var1850)))
(declare-const var1249 var1850) ; Statement: $r2 := @parameter1: java.lang.Object 
(assert (not (= var1249 null-var1850)))
(define-const var885 String (cast-from-var1850-to-String var3710)) ; Statement: $r3 = (java.lang.StringBuilder) $r1 
(assert true)
;(assert (append/-1031950772 var885 var1249)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var885!1 String)
(assert (str.prefixof var885 var885!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1850-to-String=([java.lang.Object], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder)}
; {var2152=org.apache.commons.lang3.stream.LangCollectors$append__239, var685=$r0, var1850=java.lang.Object, var3710=$r1, var1249=$r2, var885=$r3}
; {org.apache.commons.lang3.stream.LangCollectors$append__239=var2152, $r0=var685, java.lang.Object=var1850, $r1=var3710, $r2=var1249, $r3=var885}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts $r0 := @this: org.apache.commons.lang3.stream.LangCollectors$append__239;	$r1 := @parameter0: java.lang.Object;	$r2 := @parameter1: java.lang.Object;	$r3 = (java.lang.StringBuilder) $r1;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	return
;block_num 1