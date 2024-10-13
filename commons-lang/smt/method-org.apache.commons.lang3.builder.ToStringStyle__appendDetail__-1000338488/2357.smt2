(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var218 0)
(declare-sort var1404 0)
(declare-sort var2447 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-143899486 (String var2447) String)
(declare-const null-var218 var218)
(declare-const null-String String)
(declare-const null-var2447 var2447)
(declare-const var1632 var218) ; Statement: r2 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var1632 null-var218)))
(declare-const var1436 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1436 null-String)))
(declare-const var2119 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2119 null-String)))
(declare-const var1770 var2447) ; Statement: r1 := @parameter2: java.lang.Object 
(assert (not (= var1770 null-var2447)))
(assert true)
;(assert (append/-143899486 var1436 var1770)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1) 

(declare-const var1436!1 String)
(declare-const var1770!1 var2447)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer)}
; {var218=org.apache.commons.lang3.builder.ToStringStyle, var1632=r2, var1436=r0, var2119=r3, var1404=null_type, var2447=java.lang.Object, var1770=r1}
; {org.apache.commons.lang3.builder.ToStringStyle=var218, r2=var1632, r0=var1436, r3=var2119, null_type=var1404, java.lang.Object=var2447, r1=var1770}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r3 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Object;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1);	return
;block_num 1