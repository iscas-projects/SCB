(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3177 0)
(declare-sort var2022 0)
(declare-sort var662 0)
(declare-sort var3846 0)
(declare-sort var3462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var3177) var662)
(declare-fun var662_clear/2124191932 (var662) void)
(declare-fun var662_add/328494887 (var662 var3846) Bool)
(declare-fun cast-from-String-to-var3846 (String) var3846)
(declare-fun var3462_delimiterOffset/1183305642 (String String Int Int) Int)
(declare-fun push/1526858787 (var3177 String Int Int Bool Bool) void)
(declare-const null-var3177 var3177)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var766 var3177) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var766 null-var3177)))
(declare-const var519 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var519 null-String)))
(declare-const var2101 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2101 null-Int)))
(declare-const var2835 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2835 null-Int)))
(define-const var1201 Int var2101) ; Statement: i6 = i0 
 ; Statement: if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(assert (not (= var2101 var2835))) ; Cond: i0 != i1 
(assert (and true (and (> (str.len var519) var2101) (<= 0 var2101))))
(define-const var1753 Int (charAt/698050440 var519 var2101)) ; Statement: c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(define-const var3248 Int (cast-from-Int-to-Int var1753)) ; Statement: $i8 = (int) c2 
 ; Statement: if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (= var3248 47)) ; Cond: $i8 == 47 
(define-const var2099 var662 (encodedPathSegments/627676127 var766)) ; Statement: $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var662_clear/2124191932 var2099)) ; Statement: interfaceinvoke $r2.<java.util.List: void clear()>() 

(declare-const var2099!1 var662)
(define-const var3825 var662 (encodedPathSegments/627676127 var766)) ; Statement: $r3 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var662_add/328494887 var3825 (cast-from-String-to-var3846 ""))) ; Statement: interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>("") 

(declare-const var3825!1 var662)
(declare-const var1875 String)
(define-const var1201!1 Int (+ var2101 1)) ; Statement: i6 = i0 + 1 
 ; Statement: goto [?= i7 = i6] 
(assert true) ; Non Conditional
(define-const var2894 Int var1201!1) ; Statement: i7 = i6 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i1 goto return 
(assert (not (>= var2894 var2835))) ; Negate: Cond: i7 >= i1  
(define-const var3173 Int (var3462_delimiterOffset/1183305642 var519 "/\u005c" var2894 var2835)) ; Statement: i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r0, "/\\", i7, i1) 
 ; Statement: if i3 >= i1 goto $z2 = 0 
(assert (not (>= var3173 var2835))) ; Negate: Cond: i3 >= i1  
(define-const var23 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
(define-const var3685 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1)] 
(assert true) ; Non Conditional
(assert true)
;(assert (push/1526858787 var766 var519 var2894 var3173 var23 (ite (= 1 1) true false))) ; Statement: specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1) 

(declare-const var766!1 var3177)
(declare-const var519!1 String)
(declare-const var2894!1 Int)
(declare-const var3173!1 Int)
(declare-const var23!1 Bool)
(declare-const var1367 Int)
(define-const var2894!2 Int var3173!1) ; Statement: i7 = i3 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var3685 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2894!3 Int (+ var3173!1 1)) ; Statement: i7 = i3 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i1 goto return 
(assert (>= var2894!3 var2835)) ; Cond: i7 >= i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var662_clear/2124191932=([java.util.List], void), var662_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3846=([java.lang.String], java.lang.Object), var3462_delimiterOffset/1183305642=([java.lang.String, java.lang.String, int, int], int), push/1526858787=([okhttp3.HttpUrl$Builder, java.lang.String, int, int, boolean, boolean], void)}
; {var3177=okhttp3.HttpUrl$Builder, var766=r1, var519=r0, var2022=null_type, var2101=i0, var2835=i1, var1201=i6, var1753=c2, var3248=$i8, var662=java.util.List, var2099=$r2, var3825=$r3, var3846=java.lang.Object, var1875="", var2894=i7, var3462=okhttp3.internal.Util, var3173=i3, var23=$z2, var3685=$z1, var1367=1}
; {okhttp3.HttpUrl$Builder=var3177, r1=var766, r0=var519, null_type=var2022, i0=var2101, i1=var2835, i6=var1201, c2=var1753, $i8=var3248, java.util.List=var662, $r2=var2099, $r3=var3825, java.lang.Object=var3846, ""=var1875, i7=var2894, okhttp3.internal.Util=var3462, i3=var3173, $z2=var23, $z1=var3685, 1=var1367}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i6 = i0;	if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i8 = (int) c2;	if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r2.<java.util.List: void clear()>();	$r3 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>("");	i6 = i0 + 1;	goto [?= i7 = i6];	i7 = i6;	if i7 >= i1 goto return;	i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r0, "/\\", i7, i1);	if i3 >= i1 goto $z2 = 0;	$z2 = 1;	$z1 = 1;	goto [?= specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1)];	specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1);	i7 = i3;	if $z1 == 0 goto (branch);	i7 = i3 + 1;	goto [?= (branch)];	if i7 >= i1 goto return;	return
;block_num 11