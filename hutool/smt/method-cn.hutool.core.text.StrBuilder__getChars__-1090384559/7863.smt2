(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2218 0)
(declare-sort var564 0)
(declare-sort var1382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/1569621634 (var2218) (Array Int Int))
(declare-fun var564_arraycopy/-325913181 (var1382 Int var1382 Int Int) void)
(declare-fun cast-from-__Array__Int__Int__-to-var1382 ((Array Int Int)) var1382)
(declare-const null-var2218 var2218)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2996 var2218) ; Statement: r0 := @this: cn.hutool.core.text.StrBuilder 
(assert (not (= var2996 null-var2218)))
(declare-const var3501 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var3501 null-Int)))
(declare-const var3026 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var3026 null-Int)))
(declare-const var1016 (Array Int Int)) ; Statement: r1 := @parameter2: char[] 
(assert (not (= var1016 null-__Array__Int__Int__)))
(declare-const var1028 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1028 null-Int)))
 ; Statement: if i3 >= 0 goto (branch) 
(assert (>= var3501 0)) ; Cond: i3 >= 0 
 ; Statement: if i4 >= 0 goto $i0 = r0.<cn.hutool.core.text.StrBuilder: int position> 
(assert (not (>= var3026 0))) ; Negate: Cond: i4 >= 0  
(define-const var3026!1 Int 0) ; Statement: i4 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i3 <= i4 goto $r2 = r0.<cn.hutool.core.text.StrBuilder: char[] value> 
(assert (<= var3501 var3026!1)) ; Cond: i3 <= i4 
(define-const var468 (Array Int Int) (value/1569621634 var2996)) ; Statement: $r2 = r0.<cn.hutool.core.text.StrBuilder: char[] value> 
(define-const var34 Int (- var3026!1 var3501)) ; Statement: $i2 = i4 - i3 
;(assert (var564_arraycopy/-325913181 (cast-from-__Array__Int__Int__-to-var1382 var468) var3501 (cast-from-__Array__Int__Int__-to-var1382 var1016) var1028 var34)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r2, i3, r1, i1, $i2) 

(declare-const var468!1 (Array Int Int))
(declare-const var3501!1 Int)
(declare-const var1016!1 (Array Int Int))
(declare-const var1028!1 Int)
(declare-const var34!1 Int)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {value/1569621634=([cn.hutool.core.text.StrBuilder], char[]), var564_arraycopy/-325913181=([java.lang.Object, int, java.lang.Object, int, int], void), cast-from-__Array__Int__Int__-to-var1382=([char[]], java.lang.Object)}
; {var2218=cn.hutool.core.text.StrBuilder, var2996=r0, var3501=i3, var3026=i4, var1016=r1, var1028=i1, var468=$r2, var34=$i2, var564=java.lang.System, var1382=java.lang.Object}
; {cn.hutool.core.text.StrBuilder=var2218, r0=var2996, i3=var3501, i4=var3026, r1=var1016, i1=var1028, $r2=var468, $i2=var34, java.lang.System=var564, java.lang.Object=var1382}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.core.text.StrBuilder;	i3 := @parameter0: int;	i4 := @parameter1: int;	r1 := @parameter2: char[];	i1 := @parameter3: int;	if i3 >= 0 goto (branch);	if i4 >= 0 goto $i0 = r0.<cn.hutool.core.text.StrBuilder: int position>;	i4 = 0;	goto [?= (branch)];	if i3 <= i4 goto $r2 = r0.<cn.hutool.core.text.StrBuilder: char[] value>;	$r2 = r0.<cn.hutool.core.text.StrBuilder: char[] value>;	$i2 = i4 - i3;	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r2, i3, r1, i1, $i2);	return r0
;block_num 5