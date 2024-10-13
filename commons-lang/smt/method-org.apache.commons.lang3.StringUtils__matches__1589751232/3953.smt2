(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var804 0)
(declare-sort var835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var804_max/1360571700 (Int Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var835_fill/506259732 ((Array Int Int) Int) void)
(declare-fun arr-Bool-init () (Array Int Bool))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1351 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1351 null-String)))
(declare-const var2436 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var2436 null-String)))
(define-const var3366 Int (String_length/-667254855 var1351)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var250 Int (String_length/-667254855 var2436)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i1 <= $i0 goto r5 = r1 
(assert (not (<= var3366 var250))) ; Negate: Cond: $i1 <= $i0  
(define-const var276 String var1351) ; Statement: r5 = r0 
(define-const var964 String var2436) ; Statement: r6 = r1 
 ; Statement: goto [?= $i2 = interfaceinvoke r5.<java.lang.CharSequence: int length()>()] 
(assert true) ; Non Conditional
(define-const var1156 Int (String_length/-667254855 var276)) ; Statement: $i2 = interfaceinvoke r5.<java.lang.CharSequence: int length()>() 
(define-const var1791 Int (div var1156 2)) ; Statement: $i3 = $i2 / 2 
(define-const var1530 Int (- var1791 1)) ; Statement: $i4 = $i3 - 1 
(define-const var524 Int (var804_max/1360571700 var1530 0)) ; Statement: $i25 = staticinvoke <java.lang.Math: int max(int,int)>($i4, 0) 
(define-const var986 Int (String_length/-667254855 var964)) ; Statement: $i5 = interfaceinvoke r6.<java.lang.CharSequence: int length()>() 
(define-const var3060 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (int)[$i5] 
(define-const var2777 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i41 = (int) -1 
;(assert (var835_fill/506259732 var3060 var2777)) ; Statement: staticinvoke <java.util.Arrays: void fill(int[],int)>($r3, $i41) 

(declare-const var3060!1 (Array Int Int))
(declare-const var2777!1 Int)
(define-const var2707 Int (String_length/-667254855 var276)) ; Statement: $i6 = interfaceinvoke r5.<java.lang.CharSequence: int length()>() 
(define-const var1990 (Array Int Bool) arr-Bool-init) ; Statement: $r4 = newarray (boolean)[$i6] 
(define-const var2373 Int 0) ; Statement: i26 = 0 
(define-const var968 Int 0) ; Statement: i27 = 0 
(assert true) ; Non Conditional
(define-const var2135 Int (String_length/-667254855 var964)) ; Statement: $i28 = interfaceinvoke r6.<java.lang.CharSequence: int length()>() 
 ; Statement: if i27 >= $i28 goto r7 = newarray (char)[i26] 
(assert (>= var968 var2135)) ; Cond: i27 >= $i28 
(define-const var2782 (Array Int Int) arr-Int-init) ; Statement: r7 = newarray (char)[i26] 
(define-const var3677 (Array Int Int) arr-Int-init) ; Statement: r8 = newarray (char)[i26] 
(define-const var411 Int 0) ; Statement: i32 = 0 
(define-const var2983 Int 0) ; Statement: i33 = 0 
(assert true) ; Non Conditional
(define-const var2189 Int (String_length/-667254855 var964)) ; Statement: $i7 = interfaceinvoke r6.<java.lang.CharSequence: int length()>() 
 ; Statement: if i32 >= $i7 goto i34 = 0 
(assert (>= var411 var2189)) ; Cond: i32 >= $i7 
(define-const var1595 Int 0) ; Statement: i34 = 0 
(define-const var618 Int 0) ; Statement: i35 = 0 
(assert true) ; Non Conditional
(define-const var2539 Int (String_length/-667254855 var276)) ; Statement: $i8 = interfaceinvoke r5.<java.lang.CharSequence: int length()>() 
 ; Statement: if i34 >= $i8 goto i36 = 0 
(assert (>= var1595 var2539)) ; Cond: i34 >= $i8 
(define-const var950 Int 0) ; Statement: i36 = 0 
(define-const var2185 Int 0) ; Statement: i37 = 0 
(assert true) ; Non Conditional
(define-const var218 Int (getLength-Arr-Int-1 var2782)) ; Statement: $i9 = lengthof r7 
 ; Statement: if i37 >= $i9 goto i38 = 0 
(assert (>= var2185 var218)) ; Cond: i37 >= $i9 
(define-const var3140 Int 0) ; Statement: i38 = 0 
(define-const var949 Int 0) ; Statement: i39 = 0 
(assert true) ; Non Conditional
(define-const var3319 Int (String_length/-667254855 var964)) ; Statement: $i10 = interfaceinvoke r6.<java.lang.CharSequence: int length()>() 
 ; Statement: if i39 >= $i10 goto $r2 = newarray (int)[4] 
(assert (>= var949 var3319)) ; Cond: i39 >= $i10 
(define-const var1982 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (int)[4] 
(declare-const var1982!1 (Array Int Int))
(assert (not (= var1982!1 null-__Array__Int__Int__)))
(assert (= (select var1982!1 0) var2373)) ; Statement: $r2[0] = i26 
(define-const var196 Int (div var950 2)) ; Statement: $i11 = i36 / 2 
(declare-const var1982!2 (Array Int Int))
(assert (not (= var1982!2 null-__Array__Int__Int__)))
(assert (= (select var1982!2 1) var196)) ; Statement: $r2[1] = $i11 
(declare-const var1982!3 (Array Int Int))
(assert (not (= var1982!3 null-__Array__Int__Int__)))
(assert (= (select var1982!3 2) var3140)) ; Statement: $r2[2] = i38 
(define-const var3494 Int (String_length/-667254855 var276)) ; Statement: $i12 = interfaceinvoke r5.<java.lang.CharSequence: int length()>() 
(declare-const var1982!4 (Array Int Int))
(assert (not (= var1982!4 null-__Array__Int__Int__)))
(assert (= (select var1982!4 3) var3494)) ; Statement: $r2[3] = $i12 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var804_max/1360571700=([int, int], int), arr-Int-init=([], int[]), cast-from-Int-to-Int=([int], int), var835_fill/506259732=([int[], int], void), arr-Bool-init=([], boolean[]), getLength-Arr-Int-1=([char[]], int)}
; {var1351=r0, var2436=r1, var3366=$i1, var250=$i0, var276=r5, var964=r6, var1156=$i2, var1791=$i3, var1530=$i4, var804=java.lang.Math, var524=$i25, var986=$i5, var3060=$r3, var2777=$i41, var835=java.util.Arrays, var2707=$i6, var1990=$r4, var2373=i26, var968=i27, var2135=$i28, var2782=r7, var3677=r8, var411=i32, var2983=i33, var2189=$i7, var1595=i34, var618=i35, var2539=$i8, var950=i36, var2185=i37, var218=$i9, var3140=i38, var949=i39, var3319=$i10, var1982=$r2, var196=$i11, var3494=$i12}
; {r0=var1351, r1=var2436, $i1=var3366, $i0=var250, r5=var276, r6=var964, $i2=var1156, $i3=var1791, $i4=var1530, java.lang.Math=var804, $i25=var524, $i5=var986, $r3=var3060, $i41=var2777, java.util.Arrays=var835, $i6=var2707, $r4=var1990, i26=var2373, i27=var968, $i28=var2135, r7=var2782, r8=var3677, i32=var411, i33=var2983, $i7=var2189, i34=var1595, i35=var618, $i8=var2539, i36=var950, i37=var2185, $i9=var218, i38=var3140, i39=var949, $i10=var3319, $r2=var1982, $i11=var196, $i12=var3494}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 10}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	if $i1 <= $i0 goto r5 = r1;	r5 = r0;	r6 = r1;	goto [?= $i2 = interfaceinvoke r5.<java.lang.CharSequence: int length()>()];	$i2 = interfaceinvoke r5.<java.lang.CharSequence: int length()>();	$i3 = $i2 / 2;	$i4 = $i3 - 1;	$i25 = staticinvoke <java.lang.Math: int max(int,int)>($i4, 0);	$i5 = interfaceinvoke r6.<java.lang.CharSequence: int length()>();	$r3 = newarray (int)[$i5];	$i41 = (int) -1;	staticinvoke <java.util.Arrays: void fill(int[],int)>($r3, $i41);	$i6 = interfaceinvoke r5.<java.lang.CharSequence: int length()>();	$r4 = newarray (boolean)[$i6];	i26 = 0;	i27 = 0;	$i28 = interfaceinvoke r6.<java.lang.CharSequence: int length()>();	if i27 >= $i28 goto r7 = newarray (char)[i26];	r7 = newarray (char)[i26];	r8 = newarray (char)[i26];	i32 = 0;	i33 = 0;	$i7 = interfaceinvoke r6.<java.lang.CharSequence: int length()>();	if i32 >= $i7 goto i34 = 0;	i34 = 0;	i35 = 0;	$i8 = interfaceinvoke r5.<java.lang.CharSequence: int length()>();	if i34 >= $i8 goto i36 = 0;	i36 = 0;	i37 = 0;	$i9 = lengthof r7;	if i37 >= $i9 goto i38 = 0;	i38 = 0;	i39 = 0;	$i10 = interfaceinvoke r6.<java.lang.CharSequence: int length()>();	if i39 >= $i10 goto $r2 = newarray (int)[4];	$r2 = newarray (int)[4];	$r2[0] = i26;	$i11 = i36 / 2;	$r2[1] = $i11;	$r2[2] = i38;	$i12 = interfaceinvoke r5.<java.lang.CharSequence: int length()>();	$r2[3] = $i12;	return $r2
;block_num 13