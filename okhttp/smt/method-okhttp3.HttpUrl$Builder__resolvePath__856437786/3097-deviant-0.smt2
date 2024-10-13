(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3604 0)
(declare-sort var2830 0)
(declare-sort var992 0)
(declare-sort var1914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var3604) var992)
(declare-fun var992_clear/2124191932 (var992) void)
(declare-fun var992_add/328494887 (var992 var1914) Bool)
(declare-fun cast-from-String-to-var1914 (String) var1914)
(declare-const null-var3604 var3604)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2770 var3604) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2770 null-var3604)))
(declare-const var3295 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3295 null-String)))
(declare-const var3674 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3674 null-Int)))
(declare-const var1080 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1080 null-Int)))
(define-const var789 Int var3674) ; Statement: i6 = i0 
 ; Statement: if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(assert (not (= var3674 var1080))) ; Cond: i0 != i1 
(assert (not (and true (and (> (str.len var3295) var3674) (<= 0 var3674)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var992_clear/2124191932=([java.util.List], void), var992_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1914=([java.lang.String], java.lang.Object)}
; {var3604=okhttp3.HttpUrl$Builder, var2770=r1, var3295=r0, var2830=null_type, var3674=i0, var1080=i1, var789=i6, var2113=c2, var2173=$i8, var2917=$i9, var992=java.util.List, var1460=$r2, var3445=$r3, var1914=java.lang.Object, var1032="", var1770=i7}
; {okhttp3.HttpUrl$Builder=var3604, r1=var2770, r0=var3295, null_type=var2830, i0=var3674, i1=var1080, i6=var789, c2=var2113, $i8=var2173, $i9=var2917, java.util.List=var992, $r2=var1460, $r3=var3445, java.lang.Object=var1914, ""=var1032, i7=var1770}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i6 = i0;	if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i8 = (int) c2;	if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i9 = (int) c2;	if $i9 != 92 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r2.<java.util.List: void clear()>();	$r3 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>("");	i6 = i0 + 1;	goto [?= i7 = i6];	i7 = i6;	if i7 >= i1 goto return;	return
;block_num 7