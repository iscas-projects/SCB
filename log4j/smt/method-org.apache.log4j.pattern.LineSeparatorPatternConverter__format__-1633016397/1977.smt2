(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var618 0)
(declare-sort var2651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lineSep/-1695257063 (var618) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var618 var618)
(declare-const null-var2651 var2651)
(declare-const null-String String)
(declare-const var2550 var618) ; Statement: r1 := @this: org.apache.log4j.pattern.LineSeparatorPatternConverter 
(assert (not (= var2550 null-var618)))
(declare-const var2563 var2651) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var2563 null-var2651)))
(declare-const var1391 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var1391 null-String)))
(define-const var1232 String (lineSep/-1695257063 var2550)) ; Statement: $r2 = r1.<org.apache.log4j.pattern.LineSeparatorPatternConverter: java.lang.String lineSep> 
(assert true)
;(assert (append/1560614132 var1391 var1232)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1391!1 String)
(assert (str.prefixof var1391 var1391!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lineSep/-1695257063=([org.apache.log4j.pattern.LineSeparatorPatternConverter], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var618=org.apache.log4j.pattern.LineSeparatorPatternConverter, var2550=r1, var2651=java.lang.Object, var2563=r3, var1391=r0, var1232=$r2}
; {org.apache.log4j.pattern.LineSeparatorPatternConverter=var618, r1=var2550, java.lang.Object=var2651, r3=var2563, r0=var1391, $r2=var1232}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.log4j.pattern.LineSeparatorPatternConverter;	r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.StringBuffer;	$r2 = r1.<org.apache.log4j.pattern.LineSeparatorPatternConverter: java.lang.String lineSep>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	return
;block_num 1