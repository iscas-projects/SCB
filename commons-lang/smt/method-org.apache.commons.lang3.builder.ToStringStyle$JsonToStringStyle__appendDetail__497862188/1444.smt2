(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2219 0)
(declare-sort var1615 0)
(declare-sort var3450 0)
(declare-sort var3505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-143899486 (String var3505) String)
(declare-fun cast-from-var3450-to-var3505 (var3450) var3505)
(declare-const null-var2219 var2219)
(declare-const null-String String)
(declare-const null-var3450 var3450)
(declare-const var549 var2219) ; Statement: r2 := @this: org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle 
(assert (not (= var549 null-var2219)))
(declare-const var1341 String) ; Statement: r1 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1341 null-String)))
(declare-const var1533 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var1533 null-String)))
(declare-const var3338 var3450) ; Statement: r0 := @parameter2: java.util.Collection 
(assert (not (= var3338 null-var3450)))
 ; Statement: if r0 == null goto virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r0) 
(assert (= var3338 null-var3450)) ; Cond: r0 == null 
(assert true)
;(assert (append/-143899486 var1341 (cast-from-var3450-to-var3505 var3338))) ; Statement: virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r0) 

(declare-const var1341!1 String)
(declare-const var3338!1 var3450)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var3450-to-var3505=([java.util.Collection], java.lang.Object)}
; {var2219=org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle, var549=r2, var1341=r1, var1533=r7, var1615=null_type, var3450=java.util.Collection, var3338=r0, var3505=java.lang.Object}
; {org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle=var2219, r2=var549, r1=var1341, r7=var1533, null_type=var1615, java.util.Collection=var3450, r0=var3338, java.lang.Object=var3505}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle;	r1 := @parameter0: java.lang.StringBuffer;	r7 := @parameter1: java.lang.String;	r0 := @parameter2: java.util.Collection;	if r0 == null goto virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r0);	virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r0);	return
;block_num 2