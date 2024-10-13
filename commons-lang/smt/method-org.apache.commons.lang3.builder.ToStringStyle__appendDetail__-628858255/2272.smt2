(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3043 0)
(declare-sort var3263 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/1447793227 (String Int) String)
(declare-const null-var3043 var3043)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2291 var3043) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var2291 null-var3043)))
(declare-const var3138 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var3138 null-String)))
(declare-const var2782 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2782 null-String)))
(declare-const var772 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var772 null-Int)))
(assert true)
;(assert (append/1447793227 var3138 var772)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>(l0) 

(declare-const var3138!1 String)
(declare-const var772!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1447793227=([java.lang.StringBuffer, long], java.lang.StringBuffer)}
; {var3043=org.apache.commons.lang3.builder.ToStringStyle, var2291=r1, var3138=r0, var2782=r2, var3263=null_type, var772=l0}
; {org.apache.commons.lang3.builder.ToStringStyle=var3043, r1=var2291, r0=var3138, r2=var2782, null_type=var3263, l0=var772}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(long)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(long)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r2 := @parameter1: java.lang.String;	l0 := @parameter2: long;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>(l0);	return
;block_num 1