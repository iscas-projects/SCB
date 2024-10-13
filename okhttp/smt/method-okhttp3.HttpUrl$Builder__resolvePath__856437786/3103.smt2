(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3319 0)
(declare-sort var1748 0)
(declare-sort var955 0)
(declare-sort var685 0)
(declare-sort var55 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var3319) var955)
(declare-fun var955_size/-959786421 (var955) Int)
(declare-fun var955_set/-1241329960 (var955 Int var685) var685)
(declare-fun cast-from-String-to-var685 (String) var685)
(declare-fun var55_delimiterOffset/1183305642 (String String Int Int) Int)
(declare-fun push/1526858787 (var3319 String Int Int Bool Bool) void)
(declare-const null-var3319 var3319)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var366 var3319) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var366 null-var3319)))
(declare-const var249 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var249 null-String)))
(declare-const var2340 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2340 null-Int)))
(declare-const var3381 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3381 null-Int)))
(define-const var1531 Int var2340) ; Statement: i6 = i0 
 ; Statement: if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(assert (not (= var2340 var3381))) ; Cond: i0 != i1 
(assert (and true (and (> (str.len var249) var2340) (<= 0 var2340))))
(define-const var2412 Int (charAt/698050440 var249 var2340)) ; Statement: c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(define-const var2409 Int (cast-from-Int-to-Int var2412)) ; Statement: $i8 = (int) c2 
 ; Statement: if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= var2409 47))) ; Negate: Cond: $i8 == 47  
(define-const var3246 Int (cast-from-Int-to-Int var2412)) ; Statement: $i9 = (int) c2 
 ; Statement: if $i9 != 92 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= var3246 92))) ; Cond: $i9 != 92 
(define-const var883 var955 (encodedPathSegments/627676127 var366)) ; Statement: $r5 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var2030 var955 (encodedPathSegments/627676127 var366)) ; Statement: $r4 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(define-const var1246 Int (var955_size/-959786421 var2030)) ; Statement: $i4 = interfaceinvoke $r4.<java.util.List: int size()>() 
(define-const var1232 Int (- var1246 1)) ; Statement: $i5 = $i4 - 1 
;(assert (var955_set/-1241329960 var883 var1232 (cast-from-String-to-var685 ""))) ; Statement: interfaceinvoke $r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i5, "") 

(declare-const var883!1 var955)
(declare-const var1232!1 Int)
(declare-const var1941 String)
(assert true) ; Non Conditional
(define-const var1338 Int var1531) ; Statement: i7 = i6 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i1 goto return 
(assert (not (>= var1338 var3381))) ; Negate: Cond: i7 >= i1  
(define-const var1865 Int (var55_delimiterOffset/1183305642 var249 "/\u005c" var1338 var3381)) ; Statement: i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r0, "/\\", i7, i1) 
 ; Statement: if i3 >= i1 goto $z2 = 0 
(assert (not (>= var1865 var3381))) ; Negate: Cond: i3 >= i1  
(define-const var2928 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
(define-const var899 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1)] 
(assert true) ; Non Conditional
(assert true)
;(assert (push/1526858787 var366 var249 var1338 var1865 var2928 (ite (= 1 1) true false))) ; Statement: specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1) 

(declare-const var366!1 var3319)
(declare-const var249!1 String)
(declare-const var1338!1 Int)
(declare-const var1865!1 Int)
(declare-const var2928!1 Bool)
(declare-const var3180 Int)
(define-const var1338!2 Int var1865!1) ; Statement: i7 = i3 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var899 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if i7 >= i1 goto return 
(assert (>= var1338!2 var3381)) ; Cond: i7 >= i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var955_size/-959786421=([java.util.List], int), var955_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-String-to-var685=([java.lang.String], java.lang.Object), var55_delimiterOffset/1183305642=([java.lang.String, java.lang.String, int, int], int), push/1526858787=([okhttp3.HttpUrl$Builder, java.lang.String, int, int, boolean, boolean], void)}
; {var3319=okhttp3.HttpUrl$Builder, var366=r1, var249=r0, var1748=null_type, var2340=i0, var3381=i1, var1531=i6, var2412=c2, var2409=$i8, var3246=$i9, var955=java.util.List, var883=$r5, var2030=$r4, var1246=$i4, var1232=$i5, var685=java.lang.Object, var1941="", var1338=i7, var55=okhttp3.internal.Util, var1865=i3, var2928=$z2, var899=$z1, var3180=1}
; {okhttp3.HttpUrl$Builder=var3319, r1=var366, r0=var249, null_type=var1748, i0=var2340, i1=var3381, i6=var1531, c2=var2412, $i8=var2409, $i9=var3246, java.util.List=var955, $r5=var883, $r4=var2030, $i4=var1246, $i5=var1232, java.lang.Object=var685, ""=var1941, i7=var1338, okhttp3.internal.Util=var55, i3=var1865, $z2=var2928, $z1=var899, 1=var3180}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i6 = i0;	if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i8 = (int) c2;	if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i9 = (int) c2;	if $i9 != 92 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r5 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r4 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i4 = interfaceinvoke $r4.<java.util.List: int size()>();	$i5 = $i4 - 1;	interfaceinvoke $r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i5, "");	i7 = i6;	if i7 >= i1 goto return;	i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r0, "/\\", i7, i1);	if i3 >= i1 goto $z2 = 0;	$z2 = 1;	$z1 = 1;	goto [?= specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1)];	specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1);	i7 = i3;	if $z1 == 0 goto (branch);	if i7 >= i1 goto return;	return
;block_num 11