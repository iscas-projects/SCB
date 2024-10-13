(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3738 0)
(declare-sort var2484 0)
(declare-sort var3397 0)
(declare-sort var556 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-143899486 (String var556) String)
(declare-fun cast-from-var3397-to-var556 (var3397) var556)
(declare-const null-var3738 var3738)
(declare-const null-String String)
(declare-const null-var3397 var3397)
(declare-const var2445 var3738) ; Statement: r2 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var2445 null-var3738)))
(declare-const var1861 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1861 null-String)))
(declare-const var695 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var695 null-String)))
(declare-const var446 var3397) ; Statement: r1 := @parameter2: java.util.Map 
(assert (not (= var446 null-var3397)))
(assert true)
;(assert (append/-143899486 var1861 (cast-from-var3397-to-var556 var446))) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1) 

(declare-const var1861!1 String)
(declare-const var446!1 var3397)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var3397-to-var556=([java.util.Map], java.lang.Object)}
; {var3738=org.apache.commons.lang3.builder.ToStringStyle, var2445=r2, var1861=r0, var695=r3, var2484=null_type, var3397=java.util.Map, var446=r1, var556=java.lang.Object}
; {org.apache.commons.lang3.builder.ToStringStyle=var3738, r2=var2445, r0=var1861, r3=var695, null_type=var2484, java.util.Map=var3397, r1=var446, java.lang.Object=var556}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r3 := @parameter1: java.lang.String;	r1 := @parameter2: java.util.Map;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1);	return
;block_num 1