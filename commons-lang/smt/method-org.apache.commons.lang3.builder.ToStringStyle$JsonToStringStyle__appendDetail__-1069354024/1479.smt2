(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2911 0)
(declare-sort var1036 0)
(declare-sort var3817 0)
(declare-sort var1947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-143899486 (String var1947) String)
(declare-fun cast-from-var3817-to-var1947 (var3817) var1947)
(declare-const null-var2911 var2911)
(declare-const null-String String)
(declare-const null-var3817 var3817)
(declare-const var2937 var2911) ; Statement: r2 := @this: org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle 
(assert (not (= var2937 null-var2911)))
(declare-const var2818 String) ; Statement: r1 := @parameter0: java.lang.StringBuffer 
(assert (not (= var2818 null-String)))
(declare-const var572 String) ; Statement: r12 := @parameter1: java.lang.String 
(assert (not (= var572 null-String)))
(declare-const var3532 var3817) ; Statement: r0 := @parameter2: java.util.Map 
(assert (not (= var3532 null-var3817)))
 ; Statement: if r0 == null goto virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r0) 
(assert (= var3532 null-var3817)) ; Cond: r0 == null 
(assert true)
;(assert (append/-143899486 var2818 (cast-from-var3817-to-var1947 var3532))) ; Statement: virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r0) 

(declare-const var2818!1 String)
(declare-const var3532!1 var3817)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var3817-to-var1947=([java.util.Map], java.lang.Object)}
; {var2911=org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle, var2937=r2, var2818=r1, var572=r12, var1036=null_type, var3817=java.util.Map, var3532=r0, var1947=java.lang.Object}
; {org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle=var2911, r2=var2937, r1=var2818, r12=var572, null_type=var1036, java.util.Map=var3817, r0=var3532, java.lang.Object=var1947}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle;	r1 := @parameter0: java.lang.StringBuffer;	r12 := @parameter1: java.lang.String;	r0 := @parameter2: java.util.Map;	if r0 == null goto virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r0);	virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r0);	return
;block_num 2