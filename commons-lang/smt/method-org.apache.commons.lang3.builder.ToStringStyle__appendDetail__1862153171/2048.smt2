(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1146 0)
(declare-sort var3237 0)
(declare-sort var1156 0)
(declare-sort var235 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-143899486 (String var235) String)
(declare-fun cast-from-var1156-to-var235 (var1156) var235)
(declare-const null-var1146 var1146)
(declare-const null-String String)
(declare-const null-var1156 var1156)
(declare-const var604 var1146) ; Statement: r2 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var604 null-var1146)))
(declare-const var959 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var959 null-String)))
(declare-const var369 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var369 null-String)))
(declare-const var686 var1156) ; Statement: r1 := @parameter2: java.util.Collection 
(assert (not (= var686 null-var1156)))
(assert true)
;(assert (append/-143899486 var959 (cast-from-var1156-to-var235 var686))) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1) 

(declare-const var959!1 String)
(declare-const var686!1 var1156)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var1156-to-var235=([java.util.Collection], java.lang.Object)}
; {var1146=org.apache.commons.lang3.builder.ToStringStyle, var604=r2, var959=r0, var369=r3, var3237=null_type, var1156=java.util.Collection, var686=r1, var235=java.lang.Object}
; {org.apache.commons.lang3.builder.ToStringStyle=var1146, r2=var604, r0=var959, r3=var369, null_type=var3237, java.util.Collection=var1156, r1=var686, java.lang.Object=var235}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r3 := @parameter1: java.lang.String;	r1 := @parameter2: java.util.Collection;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1);	return
;block_num 1