(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String_toString/-1426662429 (String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun codePointCount/-741124477 (String Int Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const var1799 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1799 null-String)))
 ; Statement: if r0 != null goto $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (not (= var1799 null-String))) ; Cond: r0 != null 
(define-const var1214 Int (String_length/-667254855 var1799)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (= var1214 0))) ; Cond: $i0 != 0 
(define-const var3315 String (String_toString/-1426662429 var1799)) ; Statement: r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var450 Int (length/-134980193 var3315)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
(define-const var2479 Int (codePointCount/-741124477 var3315 0 var450)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int codePointCount(int,int)>(0, $i1) 
(define-const var1585 (Array Int Int) arr-Int-init) ; Statement: r2 = newarray (int)[$i2] 
(define-const var777 Int 0) ; Statement: i7 = 0 
(define-const var1140 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var903 Int (getLength-Arr-Int-1 var1585)) ; Statement: $i3 = lengthof r2 
 ; Statement: if i8 >= $i3 goto return r2 
(assert (>= var1140 var903)) ; Cond: i8 >= $i3 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), length/-134980193=([java.lang.String], int), codePointCount/-741124477=([java.lang.String, int, int], int), arr-Int-init=([], int[]), getLength-Arr-Int-1=([int[]], int)}
; {var1799=r0, var1214=$i0, var3315=r1, var450=$i1, var2479=$i2, var1585=r2, var777=i7, var1140=i8, var903=$i3}
; {r0=var1799, $i0=var1214, r1=var3315, $i1=var450, $i2=var2479, r2=var1585, i7=var777, i8=var1140, $i3=var903}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: int codePointCount(int,int)>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.CharSequence: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: int codePointCount(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	if r0 != null goto $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = virtualinvoke r1.<java.lang.String: int codePointCount(int,int)>(0, $i1);	r2 = newarray (int)[$i2];	i7 = 0;	i8 = 0;	$i3 = lengthof r2;	if i8 >= $i3 goto return r2;	return r2
;block_num 5