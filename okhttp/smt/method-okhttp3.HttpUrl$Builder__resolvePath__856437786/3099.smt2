(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2173 0)
(declare-sort var889 0)
(declare-sort var1010 0)
(declare-sort var936 0)
(declare-sort var2518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var2173) var1010)
(declare-fun var1010_clear/2124191932 (var1010) void)
(declare-fun var1010_add/328494887 (var1010 var936) Bool)
(declare-fun cast-from-String-to-var936 (String) var936)
(declare-fun var2518_delimiterOffset/1183305642 (String String Int Int) Int)
(declare-fun push/1526858787 (var2173 String Int Int Bool Bool) void)
(declare-const null-var2173 var2173)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1274 var2173) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1274 null-var2173)))
(declare-const var1062 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1062 null-String)))
(declare-const var2718 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2718 null-Int)))
(declare-const var2699 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2699 null-Int)))
(define-const var1112 Int var2718) ; Statement: i6 = i0 
 ; Statement: if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(assert (not (= var2718 var2699))) ; Cond: i0 != i1 
(assert (and true (and (> (str.len var1062) var2718) (<= 0 var2718))))
(define-const var491 Int (charAt/698050440 var1062 var2718)) ; Statement: c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(define-const var2624 Int (cast-from-Int-to-Int var491)) ; Statement: $i8 = (int) c2 
 ; Statement: if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= var2624 47)) ; Cond: $i8 == 47 
(define-const var3711 var1010 (encodedPathSegments/627676127 var1274)) ; Statement: $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var1010_clear/2124191932 var3711)) ; Statement: interfaceinvoke $r2.<java.util.List: void clear()>() 

(declare-const var3711!1 var1010)
(define-const var2513 var1010 (encodedPathSegments/627676127 var1274)) ; Statement: $r3 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var1010_add/328494887 var2513 (cast-from-String-to-var936 ""))) ; Statement: interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>("") 

(declare-const var2513!1 var1010)
(declare-const var2593 String)
(define-const var1112!1 Int (+ var2718 1)) ; Statement: i6 = i0 + 1 
 ; Statement: goto [?= i7 = i6] 
(assert true) ; Non Conditional
(define-const var1319 Int var1112!1) ; Statement: i7 = i6 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i1 goto return 
(assert (not (>= var1319 var2699))) ; Negate: Cond: i7 >= i1  
(define-const var3569 Int (var2518_delimiterOffset/1183305642 var1062 "/\u005c" var1319 var2699)) ; Statement: i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r0, "/\\", i7, i1) 
 ; Statement: if i3 >= i1 goto $z2 = 0 
(assert (not (>= var3569 var2699))) ; Negate: Cond: i3 >= i1  
(define-const var3645 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
(define-const var189 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1)] 
(assert true) ; Non Conditional
(assert true)
;(assert (push/1526858787 var1274 var1062 var1319 var3569 var3645 (ite (= 1 1) true false))) ; Statement: specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1) 

(declare-const var1274!1 var2173)
(declare-const var1062!1 String)
(declare-const var1319!1 Int)
(declare-const var3569!1 Int)
(declare-const var3645!1 Bool)
(declare-const var1873 Int)
(define-const var1319!2 Int var3569!1) ; Statement: i7 = i3 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var189 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if i7 >= i1 goto return 
(assert (>= var1319!2 var2699)) ; Cond: i7 >= i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var1010_clear/2124191932=([java.util.List], void), var1010_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var936=([java.lang.String], java.lang.Object), var2518_delimiterOffset/1183305642=([java.lang.String, java.lang.String, int, int], int), push/1526858787=([okhttp3.HttpUrl$Builder, java.lang.String, int, int, boolean, boolean], void)}
; {var2173=okhttp3.HttpUrl$Builder, var1274=r1, var1062=r0, var889=null_type, var2718=i0, var2699=i1, var1112=i6, var491=c2, var2624=$i8, var1010=java.util.List, var3711=$r2, var2513=$r3, var936=java.lang.Object, var2593="", var1319=i7, var2518=okhttp3.internal.Util, var3569=i3, var3645=$z2, var189=$z1, var1873=1}
; {okhttp3.HttpUrl$Builder=var2173, r1=var1274, r0=var1062, null_type=var889, i0=var2718, i1=var2699, i6=var1112, c2=var491, $i8=var2624, java.util.List=var1010, $r2=var3711, $r3=var2513, java.lang.Object=var936, ""=var2593, i7=var1319, okhttp3.internal.Util=var2518, i3=var3569, $z2=var3645, $z1=var189, 1=var1873}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i6 = i0;	if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i8 = (int) c2;	if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r2.<java.util.List: void clear()>();	$r3 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>("");	i6 = i0 + 1;	goto [?= i7 = i6];	i7 = i6;	if i7 >= i1 goto return;	i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r0, "/\\", i7, i1);	if i3 >= i1 goto $z2 = 0;	$z2 = 1;	$z1 = 1;	goto [?= specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1)];	specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1);	i7 = i3;	if $z1 == 0 goto (branch);	if i7 >= i1 goto return;	return
;block_num 10