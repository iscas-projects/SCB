(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var328 0)
(declare-sort var3183 0)
(declare-sort var1487 0)
(declare-sort var2836 0)
(declare-sort var2079 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var328) var1487)
(declare-fun var1487_clear/2124191932 (var1487) void)
(declare-fun var1487_add/328494887 (var1487 var2836) Bool)
(declare-fun cast-from-String-to-var2836 (String) var2836)
(declare-fun var2079_delimiterOffset/1183305642 (String String Int Int) Int)
(declare-fun push/1526858787 (var328 String Int Int Bool Bool) void)
(declare-const null-var328 var328)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2741 var328) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2741 null-var328)))
(declare-const var259 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var259 null-String)))
(declare-const var2526 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2526 null-Int)))
(declare-const var1680 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1680 null-Int)))
(define-const var686 Int var2526) ; Statement: i6 = i0 
 ; Statement: if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(assert (not (= var2526 var1680))) ; Cond: i0 != i1 
(assert (not (and true (and (> (str.len var259) var2526) (<= 0 var2526)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var1487_clear/2124191932=([java.util.List], void), var1487_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2836=([java.lang.String], java.lang.Object), var2079_delimiterOffset/1183305642=([java.lang.String, java.lang.String, int, int], int), push/1526858787=([okhttp3.HttpUrl$Builder, java.lang.String, int, int, boolean, boolean], void)}
; {var328=okhttp3.HttpUrl$Builder, var2741=r1, var259=r0, var3183=null_type, var2526=i0, var1680=i1, var686=i6, var3342=c2, var3830=$i8, var3880=$i9, var1487=java.util.List, var1141=$r2, var1276=$r3, var2836=java.lang.Object, var3311="", var2363=i7, var2079=okhttp3.internal.Util, var2015=i3, var2615=$z2, var58=$z1, var108=1}
; {okhttp3.HttpUrl$Builder=var328, r1=var2741, r0=var259, null_type=var3183, i0=var2526, i1=var1680, i6=var686, c2=var3342, $i8=var3830, $i9=var3880, java.util.List=var1487, $r2=var1141, $r3=var1276, java.lang.Object=var2836, ""=var3311, i7=var2363, okhttp3.internal.Util=var2079, i3=var2015, $z2=var2615, $z1=var58, 1=var108}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i6 = i0;	if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i8 = (int) c2;	if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i9 = (int) c2;	if $i9 != 92 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r2.<java.util.List: void clear()>();	$r3 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>("");	i6 = i0 + 1;	goto [?= i7 = i6];	i7 = i6;	if i7 >= i1 goto return;	i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r0, "/\\", i7, i1);	if i3 >= i1 goto $z2 = 0;	$z2 = 0;	$z1 = 0;	specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1);	i7 = i3;	if $z1 == 0 goto (branch);	if i7 >= i1 goto return;	return
;block_num 11