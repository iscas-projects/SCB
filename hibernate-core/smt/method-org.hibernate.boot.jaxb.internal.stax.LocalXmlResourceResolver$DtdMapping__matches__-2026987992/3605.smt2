(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1014 0)
(declare-sort var2124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun httpBase/-1275184894 (var1014) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1014 var1014)
(declare-const null-String String)
(declare-const var175 var1014) ; Statement: r2 := @this: org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping 
(assert (not (= var175 null-var1014)))
(declare-const var2938 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2938 null-String)))
(declare-const var1056 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1056 null-String)))
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var2938 null-String))) ; Negate: Cond: r0 == null  
(define-const var541 String (httpBase/-1275184894 var175)) ; Statement: $r5 = r2.<org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping: java.lang.String httpBase> 
(assert true)
(define-const var21 Bool (startsWith/-1785782452 var2938 var541)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r5) 
 ; Statement: if $z2 != 0 goto return 1 
(assert (not (= (ite var21 1 0) 0))) ; Cond: $z2 != 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {httpBase/-1275184894=([org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1014=org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping, var175=r2, var2938=r0, var2124=null_type, var1056=r1, var541=$r5, var21=$z2}
; {org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping=var1014, r2=var175, r0=var2938, null_type=var2124, r1=var1056, $r5=var541, $z2=var21}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	if r0 == null goto (branch);	$r5 = r2.<org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping: java.lang.String httpBase>;	$z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r5);	if $z2 != 0 goto return 1;	return 1
;block_num 3