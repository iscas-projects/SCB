(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun replace/-2044865670 (var2063 String Int Int) String)
(declare-const null-var2063 var2063)
(declare-const null-String String)
(declare-const var325 var2063) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrSubstitutor 
(assert (not (= var325 null-var2063)))
(declare-const var3300 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3300 null-String)))
 ; Statement: if r0 != null goto $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (not (= var3300 null-String))) ; Cond: r0 != null 
(define-const var623 Int (String_length/-667254855 var3300)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert true)
(define-const var3110 String (replace/-2044865670 var325 var3300 0 var623)) ; Statement: $r2 = virtualinvoke r1.<org.apache.commons.lang3.text.StrSubstitutor: java.lang.String replace(java.lang.CharSequence,int,int)>(r0, 0, $i0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), replace/-2044865670=([org.apache.commons.lang3.text.StrSubstitutor, java.lang.CharSequence, int, int], java.lang.String)}
; {var2063=org.apache.commons.lang3.text.StrSubstitutor, var325=r1, var3300=r0, var623=$i0, var3110=$r2}
; {org.apache.commons.lang3.text.StrSubstitutor=var2063, r1=var325, r0=var3300, $i0=var623, $r2=var3110}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrSubstitutor;	r0 := @parameter0: java.lang.CharSequence;	if r0 != null goto $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r2 = virtualinvoke r1.<org.apache.commons.lang3.text.StrSubstitutor: java.lang.String replace(java.lang.CharSequence,int,int)>(r0, 0, $i0);	return $r2
;block_num 2