(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var417 0)
(declare-sort var1190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun reset/1528507496 (var417) var417)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun chars/1491220258 (var417) (Array Int Int))
(declare-const null-var417 var417)
(declare-const null-String String)
(declare-const var812 var417) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrTokenizer 
(assert (not (= var812 null-var417)))
(declare-const var80 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var80 null-String)))
(assert true)
;(assert (reset/1528507496 var812)) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrTokenizer reset()>() 

(declare-const var812!1 var417)
 ; Statement: if r1 == null goto r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = null 
(assert (not (= var80 null-String))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var384 (Array Int Int) (toCharArray/415275702 var80)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(declare-const var812!2 var417)
(assert (not (= var812!2 null-var417)))
(assert (= (chars/1491220258 var812!2) var384)) ; Statement: r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = $r2 
 ; Statement: goto [?= return r0] 
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {reset/1528507496=([org.apache.commons.lang3.text.StrTokenizer], org.apache.commons.lang3.text.StrTokenizer), toCharArray/415275702=([java.lang.String], char[]), chars/1491220258=([org.apache.commons.lang3.text.StrTokenizer], char[])}
; {var417=org.apache.commons.lang3.text.StrTokenizer, var812=r0, var80=r1, var1190=null_type, var384=$r2}
; {org.apache.commons.lang3.text.StrTokenizer=var417, r0=var812, r1=var80, null_type=var1190, $r2=var384}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrTokenizer;	r1 := @parameter0: java.lang.String;	virtualinvoke r0.<org.apache.commons.lang3.text.StrTokenizer: org.apache.commons.lang3.text.StrTokenizer reset()>();	if r1 == null goto r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = null;	$r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> = $r2;	goto [?= return r0];	return r0
;block_num 3