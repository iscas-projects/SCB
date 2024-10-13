(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3468 0)
(declare-sort var1957 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun moveDataAfterIndex/-1526420232 (var3468 Int Int) void)
(declare-fun value/1569621634 (var3468) (Array Int Int))
(declare-fun position/1569621634 (var3468) Int)
(declare-fun var1957_max/1360571700 (Int Int) Int)
(declare-const null-var3468 var3468)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var498 var3468) ; Statement: r0 := @this: cn.hutool.core.text.StrBuilder 
(assert (not (= var498 null-var3468)))
(declare-const var2278 Int) ; Statement: i5 := @parameter0: int 
(assert (not (= var2278 null-Int)))
(declare-const var3537 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var3537 null-Int)))
 ; Statement: if i5 >= 0 goto (branch) 
(assert (>= var2278 0)) ; Cond: i5 >= 0 
 ; Statement: if i5 >= 0 goto specialinvoke r0.<cn.hutool.core.text.StrBuilder: void moveDataAfterIndex(int,int)>(i5, 1) 
(assert (>= var2278 0)) ; Cond: i5 >= 0 
(assert true)
;(assert (moveDataAfterIndex/-1526420232 var498 var2278 1)) ; Statement: specialinvoke r0.<cn.hutool.core.text.StrBuilder: void moveDataAfterIndex(int,int)>(i5, 1) 

(declare-const var498!1 var3468)
(declare-const var2278!1 Int)
(declare-const var2961 Int)
(define-const var2043 (Array Int Int) (value/1569621634 var498!1)) ; Statement: $r1 = r0.<cn.hutool.core.text.StrBuilder: char[] value> 
(declare-const var2043!1 (Array Int Int))
(assert (not (= var2043!1 null-__Array__Int__Int__)))
(assert (= (select var2043!1 var2278!1) var3537)) ; Statement: $r1[i5] = c0 
(define-const var3747 Int (position/1569621634 var498!1)) ; Statement: $i1 = r0.<cn.hutool.core.text.StrBuilder: int position> 
(define-const var3315 Int (var1957_max/1360571700 var3747 var2278!1)) ; Statement: $i2 = staticinvoke <java.lang.Math: int max(int,int)>($i1, i5) 
(define-const var2188 Int (+ var3315 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var498!2 var3468)
(assert (not (= var498!2 null-var3468)))
(assert (= (position/1569621634 var498!2) var2188)) ; Statement: r0.<cn.hutool.core.text.StrBuilder: int position> = $i3 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {moveDataAfterIndex/-1526420232=([cn.hutool.core.text.StrBuilder, int, int], void), value/1569621634=([cn.hutool.core.text.StrBuilder], char[]), position/1569621634=([cn.hutool.core.text.StrBuilder], int), var1957_max/1360571700=([int, int], int)}
; {var3468=cn.hutool.core.text.StrBuilder, var498=r0, var2278=i5, var3537=c0, var2961=1, var2043=$r1, var3747=$i1, var1957=java.lang.Math, var3315=$i2, var2188=$i3}
; {cn.hutool.core.text.StrBuilder=var3468, r0=var498, i5=var2278, c0=var3537, 1=var2961, $r1=var2043, $i1=var3747, java.lang.Math=var1957, $i2=var3315, $i3=var2188}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.core.text.StrBuilder;	i5 := @parameter0: int;	c0 := @parameter1: char;	if i5 >= 0 goto (branch);	if i5 >= 0 goto specialinvoke r0.<cn.hutool.core.text.StrBuilder: void moveDataAfterIndex(int,int)>(i5, 1);	specialinvoke r0.<cn.hutool.core.text.StrBuilder: void moveDataAfterIndex(int,int)>(i5, 1);	$r1 = r0.<cn.hutool.core.text.StrBuilder: char[] value>;	$r1[i5] = c0;	$i1 = r0.<cn.hutool.core.text.StrBuilder: int position>;	$i2 = staticinvoke <java.lang.Math: int max(int,int)>($i1, i5);	$i3 = $i2 + 1;	r0.<cn.hutool.core.text.StrBuilder: int position> = $i3;	return r0
;block_num 3