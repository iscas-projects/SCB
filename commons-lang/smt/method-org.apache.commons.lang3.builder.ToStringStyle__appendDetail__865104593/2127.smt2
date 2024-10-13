(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2071 0)
(declare-sort var3179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/816791095 (String Float32) String)
(declare-const null-var2071 var2071)
(declare-const null-String String)
(declare-const null-Float32 Float32)
(declare-const var443 var2071) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var443 null-var2071)))
(declare-const var3489 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var3489 null-String)))
(declare-const var1536 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1536 null-String)))
(declare-const var1893 Float32) ; Statement: f0 := @parameter2: float 
(assert (not (= var1893 null-Float32)))
(assert true)
;(assert (append/816791095 var3489 var1893)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(float)>(f0) 

(declare-const var3489!1 String)
(declare-const var1893!1 Float32)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/816791095=([java.lang.StringBuffer, float], java.lang.StringBuffer)}
; {var2071=org.apache.commons.lang3.builder.ToStringStyle, var443=r1, var3489=r0, var1536=r2, var3179=null_type, var1893=f0}
; {org.apache.commons.lang3.builder.ToStringStyle=var2071, r1=var443, r0=var3489, r2=var1536, null_type=var3179, f0=var1893}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(float)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(float)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r2 := @parameter1: java.lang.String;	f0 := @parameter2: float;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(float)>(f0);	return
;block_num 1