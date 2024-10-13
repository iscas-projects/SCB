(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3012 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3012_regionMatches/613342544 (String Bool Int String Int Int) Bool)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var994 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var994 null-String)))
(declare-const var3444 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var3444 null-String)))
(declare-const var2878 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2878 null-Bool)))
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var994 null-String))) ; Negate: Cond: r0 == null  
 ; Statement: if r1 != null goto i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(assert (not (= var3444 null-String))) ; Cond: r1 != null 
(define-const var427 Int (String_length/-667254855 var3444)) ; Statement: i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var1404 Int (String_length/-667254855 var994)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if i0 <= $i1 goto $z1 = staticinvoke <org.apache.commons.lang3.CharSequenceUtils: boolean regionMatches(java.lang.CharSequence,boolean,int,java.lang.CharSequence,int,int)>(r0, z0, 0, r1, 0, i0) 
(assert (<= var427 var1404)) ; Cond: i0 <= $i1 
(define-const var1462 Bool (var3012_regionMatches/613342544 var994 var2878 0 var3444 0 var427)) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.CharSequenceUtils: boolean regionMatches(java.lang.CharSequence,boolean,int,java.lang.CharSequence,int,int)>(r0, z0, 0, r1, 0, i0) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var3012_regionMatches/613342544=([java.lang.CharSequence, boolean, int, java.lang.CharSequence, int, int], boolean)}
; {var994=r0, var3444=r1, var2878=z0, var427=i0, var1404=$i1, var3012=org.apache.commons.lang3.CharSequenceUtils, var1462=$z1}
; {r0=var994, r1=var3444, z0=var2878, i0=var427, $i1=var1404, org.apache.commons.lang3.CharSequenceUtils=var3012, $z1=var1462}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 2}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	z0 := @parameter2: boolean;	if r0 == null goto (branch);	if r1 != null goto i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if i0 <= $i1 goto $z1 = staticinvoke <org.apache.commons.lang3.CharSequenceUtils: boolean regionMatches(java.lang.CharSequence,boolean,int,java.lang.CharSequence,int,int)>(r0, z0, 0, r1, 0, i0);	$z1 = staticinvoke <org.apache.commons.lang3.CharSequenceUtils: boolean regionMatches(java.lang.CharSequence,boolean,int,java.lang.CharSequence,int,int)>(r0, z0, 0, r1, 0, i0);	return $z1
;block_num 4