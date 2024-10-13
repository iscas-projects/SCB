(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2002 0)
(declare-sort var3678 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1099872288 (String Float64) String)
(declare-const null-var2002 var2002)
(declare-const null-String String)
(declare-const null-Float64 Float64)
(declare-const var2771 var2002) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var2771 null-var2002)))
(declare-const var3442 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var3442 null-String)))
(declare-const var3255 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3255 null-String)))
(declare-const var2558 Float64) ; Statement: d0 := @parameter2: double 
(assert (not (= var2558 null-Float64)))
(assert true)
;(assert (append/-1099872288 var3442 var2558)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(double)>(d0) 

(declare-const var3442!1 String)
(declare-const var2558!1 Float64)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1099872288=([java.lang.StringBuffer, double], java.lang.StringBuffer)}
; {var2002=org.apache.commons.lang3.builder.ToStringStyle, var2771=r1, var3442=r0, var3255=r2, var3678=null_type, var2558=d0}
; {org.apache.commons.lang3.builder.ToStringStyle=var2002, r1=var2771, r0=var3442, r2=var3255, null_type=var3678, d0=var2558}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(double)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(double)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r2 := @parameter1: java.lang.String;	d0 := @parameter2: double;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(double)>(d0);	return
;block_num 1