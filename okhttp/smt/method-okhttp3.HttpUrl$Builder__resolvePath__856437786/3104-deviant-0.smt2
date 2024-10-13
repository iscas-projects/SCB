(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var827 0)
(declare-sort var2963 0)
(declare-sort var2337 0)
(declare-sort var1963 0)
(declare-sort var2009 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var827) var2337)
(declare-fun var2337_size/-959786421 (var2337) Int)
(declare-fun var2337_set/-1241329960 (var2337 Int var1963) var1963)
(declare-fun cast-from-String-to-var1963 (String) var1963)
(declare-fun var2009_delimiterOffset/1183305642 (String String Int Int) Int)
(declare-fun push/1526858787 (var827 String Int Int Bool Bool) void)
(declare-const null-var827 var827)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3371 var827) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var3371 null-var827)))
(declare-const var2849 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2849 null-String)))
(declare-const var2294 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2294 null-Int)))
(declare-const var656 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var656 null-Int)))
(define-const var722 Int var2294) ; Statement: i6 = i0 
 ; Statement: if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(assert (not (= var2294 var656))) ; Cond: i0 != i1 
(assert (not (and true (and (> (str.len var2849) var2294) (<= 0 var2294)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var2337_size/-959786421=([java.util.List], int), var2337_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-String-to-var1963=([java.lang.String], java.lang.Object), var2009_delimiterOffset/1183305642=([java.lang.String, java.lang.String, int, int], int), push/1526858787=([okhttp3.HttpUrl$Builder, java.lang.String, int, int, boolean, boolean], void)}
; {var827=okhttp3.HttpUrl$Builder, var3371=r1, var2849=r0, var2963=null_type, var2294=i0, var656=i1, var722=i6, var3126=c2, var1988=$i8, var711=$i9, var2337=java.util.List, var1296=$r5, var1281=$r4, var1964=$i4, var2441=$i5, var1963=java.lang.Object, var975="", var1220=i7, var2009=okhttp3.internal.Util, var3770=i3, var1697=$z2, var3395=$z1, var2901=1}
; {okhttp3.HttpUrl$Builder=var827, r1=var3371, r0=var2849, null_type=var2963, i0=var2294, i1=var656, i6=var722, c2=var3126, $i8=var1988, $i9=var711, java.util.List=var2337, $r5=var1296, $r4=var1281, $i4=var1964, $i5=var2441, java.lang.Object=var1963, ""=var975, i7=var1220, okhttp3.internal.Util=var2009, i3=var3770, $z2=var1697, $z1=var3395, 1=var2901}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i6 = i0;	if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i8 = (int) c2;	if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i9 = (int) c2;	if $i9 != 92 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r5 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r4 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i4 = interfaceinvoke $r4.<java.util.List: int size()>();	$i5 = $i4 - 1;	interfaceinvoke $r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i5, "");	i7 = i6;	if i7 >= i1 goto return;	i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r0, "/\\", i7, i1);	if i3 >= i1 goto $z2 = 0;	$z2 = 0;	$z1 = 0;	specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1);	i7 = i3;	if $z1 == 0 goto (branch);	if i7 >= i1 goto return;	return
;block_num 11