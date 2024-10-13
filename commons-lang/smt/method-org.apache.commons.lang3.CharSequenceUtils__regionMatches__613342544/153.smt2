(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const var2613 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2613 null-String)))
(declare-const var3561 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3561 null-Bool)))
(declare-const var2141 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2141 null-Int)))
(declare-const var492 String) ; Statement: r1 := @parameter3: java.lang.CharSequence 
(assert (not (= var492 null-String)))
(declare-const var846 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var846 null-Int)))
(declare-const var3263 Int) ; Statement: i2 := @parameter5: int 
(assert (not (= var3263 null-Int)))
(define-const var39 Bool true) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto i15 = i0 
(assert (= (ite var39 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2962 Int var2141) ; Statement: i15 = i0 
(define-const var2991 Int var846) ; Statement: i16 = i1 
(define-const var390 Int var3263) ; Statement: i17 = i2 
(define-const var2466 Int (String_length/-667254855 var2613)) ; Statement: $i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2250 Int (- var2466 var2141)) ; Statement: $i13 = $i3 - i0 
(define-const var1508 Int (String_length/-667254855 var492)) ; Statement: $i4 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var2629 Int (- var1508 var846)) ; Statement: $i14 = $i4 - i1 
 ; Statement: if i0 < 0 goto return 0 
(assert (< var2141 0)) ; Cond: i0 < 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var2613=r0, var3561=z1, var2141=i0, var492=r1, var846=i1, var3263=i2, var39=$z0, var2962=i15, var2991=i16, var390=i17, var2466=$i3, var2250=$i13, var1508=$i4, var2629=$i14}
; {r0=var2613, z1=var3561, i0=var2141, r1=var492, i1=var846, i2=var3263, $z0=var39, i15=var2962, i16=var2991, i17=var390, $i3=var2466, $i13=var2250, $i4=var1508, $i14=var2629}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 2}
;stmts r0 := @parameter0: java.lang.CharSequence;	z1 := @parameter1: boolean;	i0 := @parameter2: int;	r1 := @parameter3: java.lang.CharSequence;	i1 := @parameter4: int;	i2 := @parameter5: int;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto i15 = i0;	i15 = i0;	i16 = i1;	i17 = i2;	$i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i13 = $i3 - i0;	$i4 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i14 = $i4 - i1;	if i0 < 0 goto return 0;	return 0
;block_num 3