(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1355 0)
(declare-sort var1028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/1569621634 (var1355) Int)
(declare-fun var1028-init () var1028)
(declare-fun <init>/275026640 (var1028 String) void)
(declare-const null-var1355 var1355)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3036 var1355) ; Statement: r0 := @this: cn.hutool.core.text.StrBuilder 
(assert (not (= var3036 null-var1355)))
(declare-const var1021 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var1021 null-Int)))
(declare-const var1115 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var1115 null-Int)))
(declare-const var2251 (Array Int Int)) ; Statement: r1 := @parameter2: char[] 
(assert (not (= var2251 null-__Array__Int__Int__)))
(declare-const var3691 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3691 null-Int)))
 ; Statement: if i3 >= 0 goto (branch) 
(assert (>= var1021 0)) ; Cond: i3 >= 0 
 ; Statement: if i4 >= 0 goto $i0 = r0.<cn.hutool.core.text.StrBuilder: int position> 
(assert (>= var1115 0)) ; Cond: i4 >= 0 
(define-const var3746 Int (position/1569621634 var3036)) ; Statement: $i0 = r0.<cn.hutool.core.text.StrBuilder: int position> 
 ; Statement: if i4 <= $i0 goto (branch) 
(assert (<= var1115 var3746)) ; Cond: i4 <= $i0 
 ; Statement: if i3 <= i4 goto $r2 = r0.<cn.hutool.core.text.StrBuilder: char[] value> 
(assert (not (<= var1021 var1115))) ; Negate: Cond: i3 <= i4  
(define-const var3858 var1028 var1028-init) ; Statement: $r3 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/275026640 var3858 "srcBegin > srcEnd")) ; Statement: specialinvoke $r3.<java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>("srcBegin > srcEnd") 

(declare-const var3858!1 var1028)
(declare-const var3104 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {position/1569621634=([cn.hutool.core.text.StrBuilder], int), var1028-init=([], java.lang.StringIndexOutOfBoundsException), <init>/275026640=([java.lang.StringIndexOutOfBoundsException, java.lang.String], void)}
; {var1355=cn.hutool.core.text.StrBuilder, var3036=r0, var1021=i3, var1115=i4, var2251=r1, var3691=i1, var3746=$i0, var1028=java.lang.StringIndexOutOfBoundsException, var3858=$r3, var3104="srcBegin > srcEnd"}
; {cn.hutool.core.text.StrBuilder=var1355, r0=var3036, i3=var1021, i4=var1115, r1=var2251, i1=var3691, $i0=var3746, java.lang.StringIndexOutOfBoundsException=var1028, $r3=var3858, "srcBegin > srcEnd"=var3104}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.core.text.StrBuilder;	i3 := @parameter0: int;	i4 := @parameter1: int;	r1 := @parameter2: char[];	i1 := @parameter3: int;	if i3 >= 0 goto (branch);	if i4 >= 0 goto $i0 = r0.<cn.hutool.core.text.StrBuilder: int position>;	$i0 = r0.<cn.hutool.core.text.StrBuilder: int position>;	if i4 <= $i0 goto (branch);	if i3 <= i4 goto $r2 = r0.<cn.hutool.core.text.StrBuilder: char[] value>;	$r3 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r3.<java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>("srcBegin > srcEnd");	throw $r3
;block_num 5