(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2445 0)
(declare-sort var2312 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2445 var2445)
(declare-const null-String String)
(declare-const var2445-UTF_16 String)
(declare-const var808 var2445) ; Statement: r23 := @this: org.apache.commons.io.input.XmlStreamReader 
(assert (not (= var808 null-var2445)))
(declare-const var2269 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2269 null-String)))
(declare-const var1986 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1986 null-String)))
(declare-const var2977 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var2977 null-String)))
 ; Statement: if r0 != null goto $r1 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8> 
(assert (not (not (= var2269 null-String)))) ; Negate: Cond: r0 != null  
 ; Statement: if r3 == null goto $r24 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding> 
(assert (not (= var1986 null-String))) ; Negate: Cond: r3 == null  
 ; Statement: if r4 != null goto $r25 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_16> 
(assert (not (= var2977 null-String))) ; Cond: r4 != null 
(define-const var1422 String var2445-UTF_16) ; Statement: $r25 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_16> 
(assert true)
(define-const var2069 Bool (= var2977 var1422)) ; Statement: $z13 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>($r25) 
 ; Statement: if $z13 == 0 goto return r4 
(assert (= (ite var2069 1 0) 0)) ; Cond: $z13 == 0 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2445=org.apache.commons.io.input.XmlStreamReader, var808=r23, var2269=r0, var2312=null_type, var1986=r3, var2977=r4, var1422=$r25, var2069=$z13}
; {org.apache.commons.io.input.XmlStreamReader=var2445, r23=var808, r0=var2269, null_type=var2312, r3=var1986, r4=var2977, $r25=var1422, $z13=var2069}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r23 := @this: org.apache.commons.io.input.XmlStreamReader;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	if r0 != null goto $r1 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8>;	if r3 == null goto $r24 = r23.<org.apache.commons.io.input.XmlStreamReader: java.lang.String defaultEncoding>;	if r4 != null goto $r25 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_16>;	$r25 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_16>;	$z13 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>($r25);	if $z13 == 0 goto return r4;	return r4
;block_num 5