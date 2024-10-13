(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var576 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var576_regionMatches/613342544 (String Bool Int String Int Int) Bool)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1759 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1759 null-String)))
(declare-const var1995 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var1995 null-String)))
(declare-const var3878 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3878 null-Bool)))
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var1759 null-String))) ; Negate: Cond: r0 == null  
 ; Statement: if r1 != null goto $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(assert (not (= var1995 null-String))) ; Cond: r1 != null 
(define-const var2036 Int (String_length/-667254855 var1995)) ; Statement: $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var3615 Int (String_length/-667254855 var1759)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i1 <= $i0 goto $i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (<= var2036 var3615)) ; Cond: $i1 <= $i0 
(define-const var2431 Int (String_length/-667254855 var1759)) ; Statement: $i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var1798 Int (String_length/-667254855 var1995)) ; Statement: $i2 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var3208 Int (- var2431 var1798)) ; Statement: i4 = $i3 - $i2 
(define-const var998 Int (String_length/-667254855 var1995)) ; Statement: $i5 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var515 Bool (var576_regionMatches/613342544 var1759 var3878 var3208 var1995 0 var998)) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.CharSequenceUtils: boolean regionMatches(java.lang.CharSequence,boolean,int,java.lang.CharSequence,int,int)>(r0, z0, i4, r1, 0, $i5) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var576_regionMatches/613342544=([java.lang.CharSequence, boolean, int, java.lang.CharSequence, int, int], boolean)}
; {var1759=r0, var1995=r1, var3878=z0, var2036=$i1, var3615=$i0, var2431=$i3, var1798=$i2, var3208=i4, var998=$i5, var576=org.apache.commons.lang3.CharSequenceUtils, var515=$z1}
; {r0=var1759, r1=var1995, z0=var3878, $i1=var2036, $i0=var3615, $i3=var2431, $i2=var1798, i4=var3208, $i5=var998, org.apache.commons.lang3.CharSequenceUtils=var576, $z1=var515}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 5}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	z0 := @parameter2: boolean;	if r0 == null goto (branch);	if r1 != null goto $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i1 <= $i0 goto $i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i2 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	i4 = $i3 - $i2;	$i5 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$z1 = staticinvoke <org.apache.commons.lang3.CharSequenceUtils: boolean regionMatches(java.lang.CharSequence,boolean,int,java.lang.CharSequence,int,int)>(r0, z0, i4, r1, 0, $i5);	return $z1
;block_num 4