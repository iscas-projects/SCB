(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3920 0)
(declare-sort var1439 0)
(declare-sort var1928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/1569621634 (var3920) Int)
(declare-fun value/1569621634 (var3920) (Array Int Int))
(declare-fun var1439_arraycopy/-325913181 (var1928 Int var1928 Int Int) void)
(declare-fun cast-from-__Array__Int__Int__-to-var1928 ((Array Int Int)) var1928)
(declare-const null-var3920 var3920)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var214 var3920) ; Statement: r0 := @this: cn.hutool.core.text.StrBuilder 
(assert (not (= var214 null-var3920)))
(declare-const var3092 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var3092 null-Int)))
(declare-const var510 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var510 null-Int)))
(declare-const var444 (Array Int Int)) ; Statement: r1 := @parameter2: char[] 
(assert (not (= var444 null-__Array__Int__Int__)))
(declare-const var2092 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var2092 null-Int)))
 ; Statement: if i3 >= 0 goto (branch) 
(assert (>= var3092 0)) ; Cond: i3 >= 0 
 ; Statement: if i4 >= 0 goto $i0 = r0.<cn.hutool.core.text.StrBuilder: int position> 
(assert (>= var510 0)) ; Cond: i4 >= 0 
(define-const var1344 Int (position/1569621634 var214)) ; Statement: $i0 = r0.<cn.hutool.core.text.StrBuilder: int position> 
 ; Statement: if i4 <= $i0 goto (branch) 
(assert (<= var510 var1344)) ; Cond: i4 <= $i0 
 ; Statement: if i3 <= i4 goto $r2 = r0.<cn.hutool.core.text.StrBuilder: char[] value> 
(assert (<= var3092 var510)) ; Cond: i3 <= i4 
(define-const var1970 (Array Int Int) (value/1569621634 var214)) ; Statement: $r2 = r0.<cn.hutool.core.text.StrBuilder: char[] value> 
(define-const var175 Int (- var510 var3092)) ; Statement: $i2 = i4 - i3 
;(assert (var1439_arraycopy/-325913181 (cast-from-__Array__Int__Int__-to-var1928 var1970) var3092 (cast-from-__Array__Int__Int__-to-var1928 var444) var2092 var175)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r2, i3, r1, i1, $i2) 

(declare-const var1970!1 (Array Int Int))
(declare-const var3092!1 Int)
(declare-const var444!1 (Array Int Int))
(declare-const var2092!1 Int)
(declare-const var175!1 Int)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {position/1569621634=([cn.hutool.core.text.StrBuilder], int), value/1569621634=([cn.hutool.core.text.StrBuilder], char[]), var1439_arraycopy/-325913181=([java.lang.Object, int, java.lang.Object, int, int], void), cast-from-__Array__Int__Int__-to-var1928=([char[]], java.lang.Object)}
; {var3920=cn.hutool.core.text.StrBuilder, var214=r0, var3092=i3, var510=i4, var444=r1, var2092=i1, var1344=$i0, var1970=$r2, var175=$i2, var1439=java.lang.System, var1928=java.lang.Object}
; {cn.hutool.core.text.StrBuilder=var3920, r0=var214, i3=var3092, i4=var510, r1=var444, i1=var2092, $i0=var1344, $r2=var1970, $i2=var175, java.lang.System=var1439, java.lang.Object=var1928}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.core.text.StrBuilder;	i3 := @parameter0: int;	i4 := @parameter1: int;	r1 := @parameter2: char[];	i1 := @parameter3: int;	if i3 >= 0 goto (branch);	if i4 >= 0 goto $i0 = r0.<cn.hutool.core.text.StrBuilder: int position>;	$i0 = r0.<cn.hutool.core.text.StrBuilder: int position>;	if i4 <= $i0 goto (branch);	if i3 <= i4 goto $r2 = r0.<cn.hutool.core.text.StrBuilder: char[] value>;	$r2 = r0.<cn.hutool.core.text.StrBuilder: char[] value>;	$i2 = i4 - i3;	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r2, i3, r1, i1, $i2);	return r0
;block_num 5