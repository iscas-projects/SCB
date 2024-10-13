(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1060 0)
(declare-sort var1332 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultEncoding/2130463722 (var1060) String)
(declare-const null-var1060 var1060)
(declare-const null-String String)
(declare-const var393 var1060) ; Statement: r23 := @this: org.apache.commons.io.input.XmlStreamReader 
(assert (not (= var393 null-var1060)))
(declare-const var2259 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2259 null-String)))
(declare-const var1306 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1306 null-String)))
(declare-const var3377 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var3377 null-String)))
 ; Statement: if r0 != null goto $r1 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8> 
(assert (not (not (= var2259 null-String)))) ; Negate: Cond: r0 != null  
 ; Statement: if r3 == null goto $r24 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding> 
(assert (= var1306 null-String)) ; Cond: r3 == null 
(define-const var1243 String (defaultEncoding/2130463722 var393)) ; Statement: $r24 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding> 
 ; Statement: if $r24 != null goto $r28 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding> 
(assert (not (= var1243 null-String))) ; Cond: $r24 != null 
(define-const var3503 String (defaultEncoding/2130463722 var393)) ; Statement: $r28 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding> 
(assert true) ; Non Conditional
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultEncoding/2130463722=([org.apache.commons.io.input.XmlStreamReader], java.lang.String)}
; {var1060=org.apache.commons.io.input.XmlStreamReader, var393=r23, var2259=r0, var1332=null_type, var1306=r3, var3377=r4, var1243=$r24, var3503=$r28}
; {org.apache.commons.io.input.XmlStreamReader=var1060, r23=var393, r0=var2259, null_type=var1332, r3=var1306, r4=var3377, $r24=var1243, $r28=var3503}
;seq 
;cnt {}
;stmts r23 := @this: org.apache.commons.io.input.XmlStreamReader;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	if r0 != null goto $r1 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8>;	if r3 == null goto $r24 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding>;	$r24 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding>;	if $r24 != null goto $r28 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding>;	$r28 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding>;	return $r28
;block_num 5