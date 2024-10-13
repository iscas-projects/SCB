(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2047 0)
(declare-sort var1136 0)
(declare-sort var3482 0)
(declare-sort var213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var2047) var3482)
(declare-fun var3482_size/-959786421 (var3482) Int)
(declare-fun var3482_set/-1241329960 (var3482 Int var213) var213)
(declare-fun cast-from-String-to-var213 (String) var213)
(declare-const null-var2047 var2047)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2098 var2047) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2098 null-var2047)))
(declare-const var1486 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1486 null-String)))
(declare-const var2666 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2666 null-Int)))
(declare-const var2232 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2232 null-Int)))
(define-const var451 Int var2666) ; Statement: i6 = i0 
 ; Statement: if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(assert (not (= var2666 var2232))) ; Cond: i0 != i1 
(assert (not (and true (and (> (str.len var1486) var2666) (<= 0 var2666)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var3482_size/-959786421=([java.util.List], int), var3482_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-String-to-var213=([java.lang.String], java.lang.Object)}
; {var2047=okhttp3.HttpUrl$Builder, var2098=r1, var1486=r0, var1136=null_type, var2666=i0, var2232=i1, var451=i6, var3600=c2, var3488=$i8, var2705=$i9, var3482=java.util.List, var3923=$r5, var2933=$r4, var2084=$i4, var227=$i5, var213=java.lang.Object, var1238="", var2904=i7}
; {okhttp3.HttpUrl$Builder=var2047, r1=var2098, r0=var1486, null_type=var1136, i0=var2666, i1=var2232, i6=var451, c2=var3600, $i8=var3488, $i9=var2705, java.util.List=var3482, $r5=var3923, $r4=var2933, $i4=var2084, $i5=var227, java.lang.Object=var213, ""=var1238, i7=var2904}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i6 = i0;	if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i8 = (int) c2;	if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i9 = (int) c2;	if $i9 != 92 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r5 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r4 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i4 = interfaceinvoke $r4.<java.util.List: int size()>();	$i5 = $i4 - 1;	interfaceinvoke $r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i5, "");	i7 = i6;	if i7 >= i1 goto return;	return
;block_num 7