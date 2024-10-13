(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var631 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var631 null-String)))
(declare-const var2250 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var2250 null-String)))
(declare-const var211 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var211 null-Bool)))
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var631 null-String))) ; Negate: Cond: r0 == null  
 ; Statement: if r1 != null goto i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(assert (not (= var2250 null-String))) ; Cond: r1 != null 
(define-const var2362 Int (String_length/-667254855 var2250)) ; Statement: i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var691 Int (String_length/-667254855 var631)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if i0 <= $i1 goto $z1 = staticinvoke <org.apache.commons.lang3.CharSequenceUtils: boolean regionMatches(java.lang.CharSequence,boolean,int,java.lang.CharSequence,int,int)>(r0, z0, 0, r1, 0, i0) 
(assert (not (<= var2362 var691))) ; Negate: Cond: i0 <= $i1  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var631=r0, var2250=r1, var211=z0, var2362=i0, var691=$i1}
; {r0=var631, r1=var2250, z0=var211, i0=var2362, $i1=var691}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 2}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	z0 := @parameter2: boolean;	if r0 == null goto (branch);	if r1 != null goto i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if i0 <= $i1 goto $z1 = staticinvoke <org.apache.commons.lang3.CharSequenceUtils: boolean regionMatches(java.lang.CharSequence,boolean,int,java.lang.CharSequence,int,int)>(r0, z0, 0, r1, 0, i0);	return 0
;block_num 4