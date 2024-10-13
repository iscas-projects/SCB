(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3932 0)
(declare-sort var143 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultEncoding/2130463722 (var3932) String)
(declare-const null-var3932 var3932)
(declare-const null-String String)
(declare-const var3932-UTF_8 String)
(declare-const var319 var3932) ; Statement: r23 := @this: org.apache.commons.io.input.XmlStreamReader 
(assert (not (= var319 null-var3932)))
(declare-const var3003 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3003 null-String)))
(declare-const var3565 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3565 null-String)))
(declare-const var2745 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var2745 null-String)))
 ; Statement: if r0 != null goto $r1 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8> 
(assert (not (not (= var3003 null-String)))) ; Negate: Cond: r0 != null  
 ; Statement: if r3 == null goto $r24 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding> 
(assert (= var3565 null-String)) ; Cond: r3 == null 
(define-const var145 String (defaultEncoding/2130463722 var319)) ; Statement: $r24 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding> 
 ; Statement: if $r24 != null goto $r28 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding> 
(assert (not (not (= var145 null-String)))) ; Negate: Cond: $r24 != null  
(define-const var250 String var3932-UTF_8) ; Statement: $r28 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8> 
 ; Statement: goto [?= return $r28] 
(assert true) ; Non Conditional
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultEncoding/2130463722=([org.apache.commons.io.input.XmlStreamReader], java.lang.String)}
; {var3932=org.apache.commons.io.input.XmlStreamReader, var319=r23, var3003=r0, var143=null_type, var3565=r3, var2745=r4, var145=$r24, var250=$r28}
; {org.apache.commons.io.input.XmlStreamReader=var3932, r23=var319, r0=var3003, null_type=var143, r3=var3565, r4=var2745, $r24=var145, $r28=var250}
;seq 
;cnt {}
;stmts r23 := @this: org.apache.commons.io.input.XmlStreamReader;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	if r0 != null goto $r1 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8>;	if r3 == null goto $r24 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding>;	$r24 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding>;	if $r24 != null goto $r28 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding>;	$r28 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8>;	goto [?= return $r28];	return $r28
;block_num 5