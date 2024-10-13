(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-1112840705 (String) Int)
(declare-fun replaceIn/174690242 (var2531 String Int Int) Bool)
(declare-const null-var2531 var2531)
(declare-const null-String String)
(declare-const var3896 var2531) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrSubstitutor 
(assert (not (= var3896 null-var2531)))
(declare-const var1595 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1595 null-String)))
 ; Statement: if r0 != null goto $i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>() 
(assert (not (= var1595 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var2171 Int (length/-1112840705 var1595)) ; Statement: $i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>() 
(assert true)
(define-const var1124 Bool (replaceIn/174690242 var3896 var1595 0 var2171)) ; Statement: $z0 = virtualinvoke r1.<org.apache.commons.lang3.text.StrSubstitutor: boolean replaceIn(java.lang.StringBuffer,int,int)>(r0, 0, $i0) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-1112840705=([java.lang.StringBuffer], int), replaceIn/174690242=([org.apache.commons.lang3.text.StrSubstitutor, java.lang.StringBuffer, int, int], boolean)}
; {var2531=org.apache.commons.lang3.text.StrSubstitutor, var3896=r1, var1595=r0, var2171=$i0, var1124=$z0}
; {org.apache.commons.lang3.text.StrSubstitutor=var2531, r1=var3896, r0=var1595, $i0=var2171, $z0=var1124}
;seq <java.lang.StringBuffer: int length()>
;cnt {"<java.lang.StringBuffer: int length()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrSubstitutor;	r0 := @parameter0: java.lang.StringBuffer;	if r0 != null goto $i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>();	$i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>();	$z0 = virtualinvoke r1.<org.apache.commons.lang3.text.StrSubstitutor: boolean replaceIn(java.lang.StringBuffer,int,int)>(r0, 0, $i0);	return $z0
;block_num 2