(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1019 0)
(declare-sort var2439 0)
(declare-sort var3950 0)
(declare-sort var2173 0)
(declare-sort var2092 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var1019) var3950)
(declare-fun var3950_clear/2124191932 (var3950) void)
(declare-fun var3950_add/328494887 (var3950 var2173) Bool)
(declare-fun cast-from-String-to-var2173 (String) var2173)
(declare-fun var2092_delimiterOffset/1183305642 (String String Int Int) Int)
(declare-fun push/1526858787 (var1019 String Int Int Bool Bool) void)
(declare-const null-var1019 var1019)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1081 var1019) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1081 null-var1019)))
(declare-const var1666 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1666 null-String)))
(declare-const var1036 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1036 null-Int)))
(declare-const var2090 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2090 null-Int)))
(define-const var1085 Int var1036) ; Statement: i6 = i0 
 ; Statement: if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(assert (not (= var1036 var2090))) ; Cond: i0 != i1 
(assert (and true (and (> (str.len var1666) var1036) (<= 0 var1036))))
(define-const var3324 Int (charAt/698050440 var1666 var1036)) ; Statement: c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(define-const var3600 Int (cast-from-Int-to-Int var3324)) ; Statement: $i8 = (int) c2 
 ; Statement: if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= var3600 47)) ; Cond: $i8 == 47 
(define-const var769 var3950 (encodedPathSegments/627676127 var1081)) ; Statement: $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var3950_clear/2124191932 var769)) ; Statement: interfaceinvoke $r2.<java.util.List: void clear()>() 

(declare-const var769!1 var3950)
(define-const var3550 var3950 (encodedPathSegments/627676127 var1081)) ; Statement: $r3 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var3950_add/328494887 var3550 (cast-from-String-to-var2173 ""))) ; Statement: interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>("") 

(declare-const var3550!1 var3950)
(declare-const var3749 String)
(define-const var1085!1 Int (+ var1036 1)) ; Statement: i6 = i0 + 1 
 ; Statement: goto [?= i7 = i6] 
(assert true) ; Non Conditional
(define-const var3353 Int var1085!1) ; Statement: i7 = i6 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i1 goto return 
(assert (not (>= var3353 var2090))) ; Negate: Cond: i7 >= i1  
(define-const var2943 Int (var2092_delimiterOffset/1183305642 var1666 "/\u005c" var3353 var2090)) ; Statement: i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r0, "/\\", i7, i1) 
 ; Statement: if i3 >= i1 goto $z2 = 0 
(assert (>= var2943 var2090)) ; Cond: i3 >= i1 
(define-const var1826 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(define-const var2428 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (push/1526858787 var1081 var1666 var3353 var2943 var1826 (ite (= 1 1) true false))) ; Statement: specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1) 

(declare-const var1081!1 var1019)
(declare-const var1666!1 String)
(declare-const var3353!1 Int)
(declare-const var2943!1 Int)
(declare-const var1826!1 Bool)
(declare-const var487 Int)
(define-const var3353!2 Int var2943!1) ; Statement: i7 = i3 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var2428 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if i7 >= i1 goto return 
(assert (>= var3353!2 var2090)) ; Cond: i7 >= i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var3950_clear/2124191932=([java.util.List], void), var3950_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2173=([java.lang.String], java.lang.Object), var2092_delimiterOffset/1183305642=([java.lang.String, java.lang.String, int, int], int), push/1526858787=([okhttp3.HttpUrl$Builder, java.lang.String, int, int, boolean, boolean], void)}
; {var1019=okhttp3.HttpUrl$Builder, var1081=r1, var1666=r0, var2439=null_type, var1036=i0, var2090=i1, var1085=i6, var3324=c2, var3600=$i8, var3950=java.util.List, var769=$r2, var3550=$r3, var2173=java.lang.Object, var3749="", var3353=i7, var2092=okhttp3.internal.Util, var2943=i3, var1826=$z2, var2428=$z1, var487=1}
; {okhttp3.HttpUrl$Builder=var1019, r1=var1081, r0=var1666, null_type=var2439, i0=var1036, i1=var2090, i6=var1085, c2=var3324, $i8=var3600, java.util.List=var3950, $r2=var769, $r3=var3550, java.lang.Object=var2173, ""=var3749, i7=var3353, okhttp3.internal.Util=var2092, i3=var2943, $z2=var1826, $z1=var2428, 1=var487}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i6 = i0;	if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i8 = (int) c2;	if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r2.<java.util.List: void clear()>();	$r3 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>("");	i6 = i0 + 1;	goto [?= i7 = i6];	i7 = i6;	if i7 >= i1 goto return;	i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r0, "/\\", i7, i1);	if i3 >= i1 goto $z2 = 0;	$z2 = 0;	$z1 = 0;	specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1);	i7 = i3;	if $z1 == 0 goto (branch);	if i7 >= i1 goto return;	return
;block_num 10