(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1000 0)
(declare-sort var3217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun append/687120598 (var1000 String Int Int) var3217)
(declare-const null-var1000 var1000)
(declare-const null-String String)
(declare-const var3731 var1000) ; Statement: r1 := @this: org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl 
(assert (not (= var3731 null-var1000)))
(declare-const var633 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var633 null-String)))
 ; Statement: if r0 != null goto $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (not (= var633 null-String))) ; Cond: r0 != null 
(define-const var1092 Int (String_length/-667254855 var633)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert true)
(define-const var3872 var3217 (append/687120598 var3731 var633 0 var1092)) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: org.apache.lucene.analysis.tokenattributes.CharTermAttribute append(java.lang.CharSequence,int,int)>(r0, 0, $i0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), append/687120598=([org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl, java.lang.CharSequence, int, int], org.apache.lucene.analysis.tokenattributes.CharTermAttribute)}
; {var1000=org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl, var3731=r1, var633=r0, var1092=$i0, var3217=org.apache.lucene.analysis.tokenattributes.CharTermAttribute, var3872=$r2}
; {org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl=var1000, r1=var3731, r0=var633, $i0=var1092, org.apache.lucene.analysis.tokenattributes.CharTermAttribute=var3217, $r2=var3872}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl;	r0 := @parameter0: java.lang.CharSequence;	if r0 != null goto $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r2 = virtualinvoke r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: org.apache.lucene.analysis.tokenattributes.CharTermAttribute append(java.lang.CharSequence,int,int)>(r0, 0, $i0);	return $r2
;block_num 2