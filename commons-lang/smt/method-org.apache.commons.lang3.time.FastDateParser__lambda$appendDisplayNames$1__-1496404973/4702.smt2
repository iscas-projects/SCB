(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3912 0)
(declare-sort var3035 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3035_simpleQuote/35489439 (String String) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-String String)
(declare-const var379 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var379 null-String)))
(declare-const var2787 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2787 null-String)))
(define-const var2510 String (var3035_simpleQuote/35489439 var379 var2787)) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.lang.StringBuilder simpleQuote(java.lang.StringBuilder,java.lang.String)>(r0, r1) 
(assert true)
;(assert (append/-1166366385 var2510 124)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(124) 
(declare-const var2510!1 String)
(assert (str.prefixof var2510 var2510!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3035_simpleQuote/35489439=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var379=r0, var2787=r1, var3912=null_type, var3035=org.apache.commons.lang3.time.FastDateParser, var2510=$r2}
; {r0=var379, r1=var2787, null_type=var3912, org.apache.commons.lang3.time.FastDateParser=var3035, $r2=var2510}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.String;	$r2 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.lang.StringBuilder simpleQuote(java.lang.StringBuilder,java.lang.String)>(r0, r1);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(124);	return
;block_num 1