(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var683 0)
(declare-sort var2787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun literal/758282103 (var683) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var683 var683)
(declare-const null-var2787 var2787)
(declare-const null-String String)
(declare-const var2726 var683) ; Statement: r1 := @this: org.apache.log4j.pattern.LiteralPatternConverter 
(assert (not (= var2726 null-var683)))
(declare-const var2459 var2787) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var2459 null-var2787)))
(declare-const var1134 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var1134 null-String)))
(define-const var1029 String (literal/758282103 var2726)) ; Statement: $r2 = r1.<org.apache.log4j.pattern.LiteralPatternConverter: java.lang.String literal> 
(assert true)
;(assert (append/1560614132 var1134 var1029)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1134!1 String)
(assert (str.prefixof var1134 var1134!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {literal/758282103=([org.apache.log4j.pattern.LiteralPatternConverter], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var683=org.apache.log4j.pattern.LiteralPatternConverter, var2726=r1, var2787=java.lang.Object, var2459=r3, var1134=r0, var1029=$r2}
; {org.apache.log4j.pattern.LiteralPatternConverter=var683, r1=var2726, java.lang.Object=var2787, r3=var2459, r0=var1134, $r2=var1029}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.log4j.pattern.LiteralPatternConverter;	r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.StringBuffer;	$r2 = r1.<org.apache.log4j.pattern.LiteralPatternConverter: java.lang.String literal>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	return
;block_num 1