(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2652 0)
(declare-sort var3437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/1845021834 (String Int) String)
(declare-const null-var2652 var2652)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1468 var2652) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var1468 null-var2652)))
(declare-const var354 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var354 null-String)))
(declare-const var3379 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3379 null-String)))
(declare-const var7 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var7 null-Int)))
(assert true)
;(assert (append/1845021834 var354 var7)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 

(declare-const var354!1 String)
(declare-const var7!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer)}
; {var2652=org.apache.commons.lang3.builder.ToStringStyle, var1468=r1, var354=r0, var3379=r2, var3437=null_type, var7=i0}
; {org.apache.commons.lang3.builder.ToStringStyle=var2652, r1=var1468, r0=var354, r2=var3379, null_type=var3437, i0=var7}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(int)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r2 := @parameter1: java.lang.String;	i0 := @parameter2: int;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	return
;block_num 1