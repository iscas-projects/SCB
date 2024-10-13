(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3813 0)
(declare-sort var1959 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun reset/1528507496 (var3813) var3813)
(declare-fun chars/1491220258 (var3813) (Array Int Int))
(declare-const null-var3813 var3813)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1693 var3813) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrTokenizer 
(assert (not (= var1693 null-var3813)))
(declare-const var2468 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2468 null-String)))
(assert true)
;(assert (reset/1528507496 var1693)) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrTokenizer reset()>() 

(declare-const var1693!1 var3813)
 ; Statement: if r1 == null goto r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = null 
(assert (= var2468 null-String)) ; Cond: r1 == null 
(declare-const var1693!2 var3813)
(assert (not (= var1693!2 null-var3813)))
(assert (= (chars/1491220258 var1693!2) null-__Array__Int__Int__)) ; Statement: r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = null 
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {reset/1528507496=([org.apache.commons.lang3.text.StrTokenizer], org.apache.commons.lang3.text.StrTokenizer), chars/1491220258=([org.apache.commons.lang3.text.StrTokenizer], char[])}
; {var3813=org.apache.commons.lang3.text.StrTokenizer, var1693=r0, var2468=r1, var1959=null_type}
; {org.apache.commons.lang3.text.StrTokenizer=var3813, r0=var1693, r1=var2468, null_type=var1959}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.lang3.text.StrTokenizer;	r1 := @parameter0: java.lang.String;	virtualinvoke r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrTokenizer reset()>();	if r1 == null goto r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = null;	r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = null;	return r0
;block_num 3