(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2975 0)
(declare-sort var520 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var2975_max/1360571700 (Int Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var520_fill/506259732 ((Array Int Int) Int) void)
(declare-fun arr-Bool-init () (Array Int Bool))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1775 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1775 null-String)))
(declare-const var93 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var93 null-String)))
(define-const var900 Int (String_length/-667254855 var1775)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2572 Int (String_length/-667254855 var93)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i1 <= $i0 goto r5 = r1 
(assert (<= var900 var2572)) ; Cond: $i1 <= $i0 
(define-const var3053 String var93) ; Statement: r5 = r1 
(define-const var1758 String var1775) ; Statement: r6 = r0 
(assert true) ; Non Conditional
(define-const var3274 Int (String_length/-667254855 var3053)) ; Statement: $i2 = interfaceinvoke r5.<java.lang.CharSequence: int length()>() 
(define-const var2265 Int (div var3274 2)) ; Statement: $i3 = $i2 / 2 
(define-const var2902 Int (- var2265 1)) ; Statement: $i4 = $i3 - 1 
(define-const var2234 Int (var2975_max/1360571700 var2902 0)) ; Statement: $i25 = staticinvoke <java.lang.Math: int max(int,int)>($i4, 0) 
(define-const var3463 Int (String_length/-667254855 var1758)) ; Statement: $i5 = interfaceinvoke r6.<java.lang.CharSequence: int length()>() 
(define-const var2323 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (int)[$i5] 
(define-const var3993 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i41 = (int) -1 
;(assert (var520_fill/506259732 var2323 var3993)) ; Statement: staticinvoke <java.util.Arrays: void fill(int[],int)>($r3, $i41) 

(declare-const var2323!1 (Array Int Int))
(declare-const var3993!1 Int)
(define-const var3622 Int (String_length/-667254855 var3053)) ; Statement: $i6 = interfaceinvoke r5.<java.lang.CharSequence: int length()>() 
(define-const var2381 (Array Int Bool) arr-Bool-init) ; Statement: $r4 = newarray (boolean)[$i6] 
(define-const var2849 Int 0) ; Statement: i26 = 0 
(define-const var2544 Int 0) ; Statement: i27 = 0 
(assert true) ; Non Conditional
(define-const var3921 Int (String_length/-667254855 var1758)) ; Statement: $i28 = interfaceinvoke r6.<java.lang.CharSequence: int length()>() 
 ; Statement: if i27 >= $i28 goto r7 = newarray (char)[i26] 
(assert (>= var2544 var3921)) ; Cond: i27 >= $i28 
(define-const var2518 (Array Int Int) arr-Int-init) ; Statement: r7 = newarray (char)[i26] 
(define-const var2908 (Array Int Int) arr-Int-init) ; Statement: r8 = newarray (char)[i26] 
(define-const var2190 Int 0) ; Statement: i32 = 0 
(define-const var2241 Int 0) ; Statement: i33 = 0 
(assert true) ; Non Conditional
(define-const var704 Int (String_length/-667254855 var1758)) ; Statement: $i7 = interfaceinvoke r6.<java.lang.CharSequence: int length()>() 
 ; Statement: if i32 >= $i7 goto i34 = 0 
(assert (>= var2190 var704)) ; Cond: i32 >= $i7 
(define-const var2377 Int 0) ; Statement: i34 = 0 
(define-const var647 Int 0) ; Statement: i35 = 0 
(assert true) ; Non Conditional
(define-const var1946 Int (String_length/-667254855 var3053)) ; Statement: $i8 = interfaceinvoke r5.<java.lang.CharSequence: int length()>() 
 ; Statement: if i34 >= $i8 goto i36 = 0 
(assert (>= var2377 var1946)) ; Cond: i34 >= $i8 
(define-const var2645 Int 0) ; Statement: i36 = 0 
(define-const var996 Int 0) ; Statement: i37 = 0 
(assert true) ; Non Conditional
(define-const var132 Int (getLength-Arr-Int-1 var2518)) ; Statement: $i9 = lengthof r7 
 ; Statement: if i37 >= $i9 goto i38 = 0 
(assert (>= var996 var132)) ; Cond: i37 >= $i9 
(define-const var1423 Int 0) ; Statement: i38 = 0 
(define-const var2833 Int 0) ; Statement: i39 = 0 
(assert true) ; Non Conditional
(define-const var2148 Int (String_length/-667254855 var1758)) ; Statement: $i10 = interfaceinvoke r6.<java.lang.CharSequence: int length()>() 
 ; Statement: if i39 >= $i10 goto $r2 = newarray (int)[4] 
(assert (>= var2833 var2148)) ; Cond: i39 >= $i10 
(define-const var55 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (int)[4] 
(declare-const var55!1 (Array Int Int))
(assert (not (= var55!1 null-__Array__Int__Int__)))
(assert (= (select var55!1 0) var2849)) ; Statement: $r2[0] = i26 
(define-const var3922 Int (div var2645 2)) ; Statement: $i11 = i36 / 2 
(declare-const var55!2 (Array Int Int))
(assert (not (= var55!2 null-__Array__Int__Int__)))
(assert (= (select var55!2 1) var3922)) ; Statement: $r2[1] = $i11 
(declare-const var55!3 (Array Int Int))
(assert (not (= var55!3 null-__Array__Int__Int__)))
(assert (= (select var55!3 2) var1423)) ; Statement: $r2[2] = i38 
(define-const var3026 Int (String_length/-667254855 var3053)) ; Statement: $i12 = interfaceinvoke r5.<java.lang.CharSequence: int length()>() 
(declare-const var55!4 (Array Int Int))
(assert (not (= var55!4 null-__Array__Int__Int__)))
(assert (= (select var55!4 3) var3026)) ; Statement: $r2[3] = $i12 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var2975_max/1360571700=([int, int], int), arr-Int-init=([], int[]), cast-from-Int-to-Int=([int], int), var520_fill/506259732=([int[], int], void), arr-Bool-init=([], boolean[]), getLength-Arr-Int-1=([char[]], int)}
; {var1775=r0, var93=r1, var900=$i1, var2572=$i0, var3053=r5, var1758=r6, var3274=$i2, var2265=$i3, var2902=$i4, var2975=java.lang.Math, var2234=$i25, var3463=$i5, var2323=$r3, var3993=$i41, var520=java.util.Arrays, var3622=$i6, var2381=$r4, var2849=i26, var2544=i27, var3921=$i28, var2518=r7, var2908=r8, var2190=i32, var2241=i33, var704=$i7, var2377=i34, var647=i35, var1946=$i8, var2645=i36, var996=i37, var132=$i9, var1423=i38, var2833=i39, var2148=$i10, var55=$r2, var3922=$i11, var3026=$i12}
; {r0=var1775, r1=var93, $i1=var900, $i0=var2572, r5=var3053, r6=var1758, $i2=var3274, $i3=var2265, $i4=var2902, java.lang.Math=var2975, $i25=var2234, $i5=var3463, $r3=var2323, $i41=var3993, java.util.Arrays=var520, $i6=var3622, $r4=var2381, i26=var2849, i27=var2544, $i28=var3921, r7=var2518, r8=var2908, i32=var2190, i33=var2241, $i7=var704, i34=var2377, i35=var647, $i8=var1946, i36=var2645, i37=var996, $i9=var132, i38=var1423, i39=var2833, $i10=var2148, $r2=var55, $i11=var3922, $i12=var3026}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 10}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	if $i1 <= $i0 goto r5 = r1;	r5 = r1;	r6 = r0;	$i2 = interfaceinvoke r5.<java.lang.CharSequence: int length()>();	$i3 = $i2 / 2;	$i4 = $i3 - 1;	$i25 = staticinvoke <java.lang.Math: int max(int,int)>($i4, 0);	$i5 = interfaceinvoke r6.<java.lang.CharSequence: int length()>();	$r3 = newarray (int)[$i5];	$i41 = (int) -1;	staticinvoke <java.util.Arrays: void fill(int[],int)>($r3, $i41);	$i6 = interfaceinvoke r5.<java.lang.CharSequence: int length()>();	$r4 = newarray (boolean)[$i6];	i26 = 0;	i27 = 0;	$i28 = interfaceinvoke r6.<java.lang.CharSequence: int length()>();	if i27 >= $i28 goto r7 = newarray (char)[i26];	r7 = newarray (char)[i26];	r8 = newarray (char)[i26];	i32 = 0;	i33 = 0;	$i7 = interfaceinvoke r6.<java.lang.CharSequence: int length()>();	if i32 >= $i7 goto i34 = 0;	i34 = 0;	i35 = 0;	$i8 = interfaceinvoke r5.<java.lang.CharSequence: int length()>();	if i34 >= $i8 goto i36 = 0;	i36 = 0;	i37 = 0;	$i9 = lengthof r7;	if i37 >= $i9 goto i38 = 0;	i38 = 0;	i39 = 0;	$i10 = interfaceinvoke r6.<java.lang.CharSequence: int length()>();	if i39 >= $i10 goto $r2 = newarray (int)[4];	$r2 = newarray (int)[4];	$r2[0] = i26;	$i11 = i36 / 2;	$r2[1] = $i11;	$r2[2] = i38;	$i12 = interfaceinvoke r5.<java.lang.CharSequence: int length()>();	$r2[3] = $i12;	return $r2
;block_num 13