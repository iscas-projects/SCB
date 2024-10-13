(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2502 0)
(declare-sort var1283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166642301 (String Bool) String)
(declare-const null-var2502 var2502)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2240 var2502) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var2240 null-var2502)))
(declare-const var3817 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var3817 null-String)))
(declare-const var737 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var737 null-String)))
(declare-const var2803 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2803 null-Bool)))
(assert true)
;(assert (append/-1166642301 var3817 var2803)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0) 

(declare-const var3817!1 String)
(declare-const var2803!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166642301=([java.lang.StringBuffer, boolean], java.lang.StringBuffer)}
; {var2502=org.apache.commons.lang3.builder.ToStringStyle, var2240=r1, var3817=r0, var737=r2, var1283=null_type, var2803=z0}
; {org.apache.commons.lang3.builder.ToStringStyle=var2502, r1=var2240, r0=var3817, r2=var737, null_type=var1283, z0=var2803}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r2 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0);	return
;block_num 1