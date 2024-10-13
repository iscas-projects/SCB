(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1368 0)
(declare-sort var1065 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1368 var1368)
(declare-const null-String String)
(declare-const var872 var1368) ; Statement: r2 := @this: org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping 
(assert (not (= var872 null-var1368)))
(declare-const var1037 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1037 null-String)))
(declare-const var3640 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3640 null-String)))
 ; Statement: if r0 == null goto (branch) 
(assert (= var1037 null-String)) ; Cond: r0 == null 
 ; Statement: if r1 == null goto return 0 
(assert (= var3640 null-String)) ; Cond: r1 == null 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1368=org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping, var872=r2, var1037=r0, var1065=null_type, var3640=r1}
; {org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping=var1368, r2=var872, r0=var1037, null_type=var1065, r1=var3640}
;seq 
;cnt {}
;stmts r2 := @this: org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	if r0 == null goto (branch);	if r1 == null goto return 0;	return 0
;block_num 3