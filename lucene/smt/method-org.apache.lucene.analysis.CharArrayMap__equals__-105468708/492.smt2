(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var1815 var1815)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var466 var1815) ; Statement: r2 := @this: org.apache.lucene.analysis.CharArrayMap 
(assert (not (= var466 null-var1815)))
(declare-const var459 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var459 null-String)))
(declare-const var156 (Array Int Int)) ; Statement: r1 := @parameter1: char[] 
(assert (not (= var156 null-__Array__Int__Int__)))
(define-const var846 Int (String_length/-667254855 var459)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var3761 Int (getLength-Arr-Int-1 var156)) ; Statement: $i1 = lengthof r1 
 ; Statement: if i0 == $i1 goto $z0 = r2.<org.apache.lucene.analysis.CharArrayMap: boolean ignoreCase> 
(assert (not (= var846 var3761))) ; Negate: Cond: i0 == $i1  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), getLength-Arr-Int-1=([char[]], int)}
; {var1815=org.apache.lucene.analysis.CharArrayMap, var466=r2, var459=r0, var156=r1, var846=i0, var3761=$i1}
; {org.apache.lucene.analysis.CharArrayMap=var1815, r2=var466, r0=var459, r1=var156, i0=var846, $i1=var3761}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r2 := @this: org.apache.lucene.analysis.CharArrayMap;	r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: char[];	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i1 = lengthof r1;	if i0 == $i1 goto $z0 = r2.<org.apache.lucene.analysis.CharArrayMap: boolean ignoreCase>;	return 0
;block_num 2