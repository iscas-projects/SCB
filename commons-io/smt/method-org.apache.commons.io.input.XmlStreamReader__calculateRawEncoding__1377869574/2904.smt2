(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1460 0)
(declare-sort var497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1460 var1460)
(declare-const null-String String)
(declare-const var1460-UTF_8 String)
(declare-const var416 var1460) ; Statement: r23 := @this: org.apache.commons.io.input.XmlStreamReader 
(assert (not (= var416 null-var1460)))
(declare-const var2685 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2685 null-String)))
(declare-const var331 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var331 null-String)))
(declare-const var888 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var888 null-String)))
 ; Statement: if r0 != null goto $r1 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8> 
(assert (not (= var2685 null-String))) ; Cond: r0 != null 
(define-const var3435 String var1460-UTF_8) ; Statement: $r1 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8> 
(assert true)
(define-const var3101 Bool (= var2685 var3435)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r2 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_16BE> 
(assert (not (= (ite var3101 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r3 == null goto (branch) 
(assert (= var331 null-String)) ; Cond: r3 == null 
 ; Statement: if r4 == null goto return r0 
(assert (= var888 null-String)) ; Cond: r4 == null 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1460=org.apache.commons.io.input.XmlStreamReader, var416=r23, var2685=r0, var497=null_type, var331=r3, var888=r4, var3435=$r1, var3101=$z0}
; {org.apache.commons.io.input.XmlStreamReader=var1460, r23=var416, r0=var2685, null_type=var497, r3=var331, r4=var888, $r1=var3435, $z0=var3101}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r23 := @this: org.apache.commons.io.input.XmlStreamReader;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	if r0 != null goto $r1 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8>;	$r1 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_8>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r2 = <org.apache.commons.io.input.XmlStreamReader: java.lang.String UTF_16BE>;	if r3 == null goto (branch);	if r4 == null goto return r0;	return r0
;block_num 5