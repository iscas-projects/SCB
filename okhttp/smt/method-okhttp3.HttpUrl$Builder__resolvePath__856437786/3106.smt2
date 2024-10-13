(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2906 0)
(declare-sort var1523 0)
(declare-sort var3834 0)
(declare-sort var893 0)
(declare-sort var2513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var2906) var3834)
(declare-fun var3834_clear/2124191932 (var3834) void)
(declare-fun var3834_add/328494887 (var3834 var893) Bool)
(declare-fun cast-from-String-to-var893 (String) var893)
(declare-fun var2513_delimiterOffset/1183305642 (String String Int Int) Int)
(declare-fun push/1526858787 (var2906 String Int Int Bool Bool) void)
(declare-const null-var2906 var2906)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2568 var2906) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2568 null-var2906)))
(declare-const var996 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var996 null-String)))
(declare-const var3125 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3125 null-Int)))
(declare-const var3873 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3873 null-Int)))
(define-const var1902 Int var3125) ; Statement: i6 = i0 
 ; Statement: if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(assert (not (= var3125 var3873))) ; Cond: i0 != i1 
(assert (and true (and (> (str.len var996) var3125) (<= 0 var3125))))
(define-const var266 Int (charAt/698050440 var996 var3125)) ; Statement: c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(define-const var709 Int (cast-from-Int-to-Int var266)) ; Statement: $i8 = (int) c2 
 ; Statement: if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= var709 47)) ; Cond: $i8 == 47 
(define-const var1259 var3834 (encodedPathSegments/627676127 var2568)) ; Statement: $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var3834_clear/2124191932 var1259)) ; Statement: interfaceinvoke $r2.<java.util.List: void clear()>() 

(declare-const var1259!1 var3834)
(define-const var730 var3834 (encodedPathSegments/627676127 var2568)) ; Statement: $r3 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var3834_add/328494887 var730 (cast-from-String-to-var893 ""))) ; Statement: interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>("") 

(declare-const var730!1 var3834)
(declare-const var2494 String)
(define-const var1902!1 Int (+ var3125 1)) ; Statement: i6 = i0 + 1 
 ; Statement: goto [?= i7 = i6] 
(assert true) ; Non Conditional
(define-const var2627 Int var1902!1) ; Statement: i7 = i6 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i1 goto return 
(assert (not (>= var2627 var3873))) ; Negate: Cond: i7 >= i1  
(define-const var914 Int (var2513_delimiterOffset/1183305642 var996 "/\u005c" var2627 var3873)) ; Statement: i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r0, "/\\", i7, i1) 
 ; Statement: if i3 >= i1 goto $z2 = 0 
(assert (>= var914 var3873)) ; Cond: i3 >= i1 
(define-const var3763 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(define-const var1202 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (push/1526858787 var2568 var996 var2627 var914 var3763 (ite (= 1 1) true false))) ; Statement: specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1) 

(declare-const var2568!1 var2906)
(declare-const var996!1 String)
(declare-const var2627!1 Int)
(declare-const var914!1 Int)
(declare-const var3763!1 Bool)
(declare-const var3289 Int)
(define-const var2627!2 Int var914!1) ; Statement: i7 = i3 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var1202 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2627!3 Int (+ var914!1 1)) ; Statement: i7 = i3 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i1 goto return 
(assert (>= var2627!3 var3873)) ; Cond: i7 >= i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var3834_clear/2124191932=([java.util.List], void), var3834_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var893=([java.lang.String], java.lang.Object), var2513_delimiterOffset/1183305642=([java.lang.String, java.lang.String, int, int], int), push/1526858787=([okhttp3.HttpUrl$Builder, java.lang.String, int, int, boolean, boolean], void)}
; {var2906=okhttp3.HttpUrl$Builder, var2568=r1, var996=r0, var1523=null_type, var3125=i0, var3873=i1, var1902=i6, var266=c2, var709=$i8, var3834=java.util.List, var1259=$r2, var730=$r3, var893=java.lang.Object, var2494="", var2627=i7, var2513=okhttp3.internal.Util, var914=i3, var3763=$z2, var1202=$z1, var3289=1}
; {okhttp3.HttpUrl$Builder=var2906, r1=var2568, r0=var996, null_type=var1523, i0=var3125, i1=var3873, i6=var1902, c2=var266, $i8=var709, java.util.List=var3834, $r2=var1259, $r3=var730, java.lang.Object=var893, ""=var2494, i7=var2627, okhttp3.internal.Util=var2513, i3=var914, $z2=var3763, $z1=var1202, 1=var3289}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i6 = i0;	if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i8 = (int) c2;	if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r2.<java.util.List: void clear()>();	$r3 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>("");	i6 = i0 + 1;	goto [?= i7 = i6];	i7 = i6;	if i7 >= i1 goto return;	i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r0, "/\\", i7, i1);	if i3 >= i1 goto $z2 = 0;	$z2 = 0;	$z1 = 0;	specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1);	i7 = i3;	if $z1 == 0 goto (branch);	i7 = i3 + 1;	goto [?= (branch)];	if i7 >= i1 goto return;	return
;block_num 11