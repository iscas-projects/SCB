(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var871 0)
(declare-sort var3546 0)
(declare-sort var2842 0)
(declare-sort var2209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var871) var2842)
(declare-fun var2842_clear/2124191932 (var2842) void)
(declare-fun var2842_add/328494887 (var2842 var2209) Bool)
(declare-fun cast-from-String-to-var2209 (String) var2209)
(declare-const null-var871 var871)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2530 var871) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2530 null-var871)))
(declare-const var3952 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3952 null-String)))
(declare-const var1471 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1471 null-Int)))
(declare-const var2943 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2943 null-Int)))
(define-const var3080 Int var1471) ; Statement: i6 = i0 
 ; Statement: if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(assert (not (= var1471 var2943))) ; Cond: i0 != i1 
(assert (not (and true (and (> (str.len var3952) var1471) (<= 0 var1471)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var2842_clear/2124191932=([java.util.List], void), var2842_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2209=([java.lang.String], java.lang.Object)}
; {var871=okhttp3.HttpUrl$Builder, var2530=r1, var3952=r0, var3546=null_type, var1471=i0, var2943=i1, var3080=i6, var2565=c2, var165=$i8, var2842=java.util.List, var1943=$r2, var1884=$r3, var2209=java.lang.Object, var2338="", var2265=i7}
; {okhttp3.HttpUrl$Builder=var871, r1=var2530, r0=var3952, null_type=var3546, i0=var1471, i1=var2943, i6=var3080, c2=var2565, $i8=var165, java.util.List=var2842, $r2=var1943, $r3=var1884, java.lang.Object=var2209, ""=var2338, i7=var2265}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i6 = i0;	if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i8 = (int) c2;	if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r2.<java.util.List: void clear()>();	$r3 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>("");	i6 = i0 + 1;	goto [?= i7 = i6];	i7 = i6;	if i7 >= i1 goto return;	return
;block_num 6