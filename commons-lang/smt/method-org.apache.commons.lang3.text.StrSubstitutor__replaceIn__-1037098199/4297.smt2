(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(declare-fun replaceIn/-305029969 (var3136 String Int Int) Bool)
(declare-const null-var3136 var3136)
(declare-const null-String String)
(declare-const var3665 var3136) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrSubstitutor 
(assert (not (= var3665 null-var3136)))
(declare-const var2570 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2570 null-String)))
 ; Statement: if r0 != null goto $i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(assert (not (= var2570 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var1807 Int (length/-171891354 var2570)) ; Statement: $i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(assert true)
(define-const var2399 Bool (replaceIn/-305029969 var3665 var2570 0 var1807)) ; Statement: $z0 = virtualinvoke r1.<org.apache.commons.lang3.text.StrSubstitutor: boolean replaceIn(java.lang.StringBuilder,int,int)>(r0, 0, $i0) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int), replaceIn/-305029969=([org.apache.commons.lang3.text.StrSubstitutor, java.lang.StringBuilder, int, int], boolean)}
; {var3136=org.apache.commons.lang3.text.StrSubstitutor, var3665=r1, var2570=r0, var1807=$i0, var2399=$z0}
; {org.apache.commons.lang3.text.StrSubstitutor=var3136, r1=var3665, r0=var2570, $i0=var1807, $z0=var2399}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrSubstitutor;	r0 := @parameter0: java.lang.StringBuilder;	if r0 != null goto $i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	$z0 = virtualinvoke r1.<org.apache.commons.lang3.text.StrSubstitutor: boolean replaceIn(java.lang.StringBuilder,int,int)>(r0, 0, $i0);	return $z0
;block_num 2