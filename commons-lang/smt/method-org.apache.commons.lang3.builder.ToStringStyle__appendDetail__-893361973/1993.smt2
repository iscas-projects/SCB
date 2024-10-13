(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1099 0)
(declare-sort var3529 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var1099 var1099)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var157 var1099) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var157 null-var1099)))
(declare-const var1860 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1860 null-String)))
(declare-const var171 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var171 null-String)))
(declare-const var1236 Int) ; Statement: c0 := @parameter2: char 
(assert (not (= var1236 null-Int)))
(assert true)
;(assert (append/1183289509 var1860 var1236)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c0) 

(declare-const var1860!1 String)
(declare-const var1236!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var1099=org.apache.commons.lang3.builder.ToStringStyle, var157=r1, var1860=r0, var171=r2, var3529=null_type, var1236=c0}
; {org.apache.commons.lang3.builder.ToStringStyle=var1099, r1=var157, r0=var1860, r2=var171, null_type=var3529, c0=var1236}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r2 := @parameter1: java.lang.String;	c0 := @parameter2: char;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c0);	return
;block_num 1