(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1734 0)
(declare-sort var1496 0)
(declare-sort var3413 0)
(declare-sort var2706 0)
(declare-sort var946 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setFont/-1113720754 (var1734 var3413) void)
(declare-fun var946_getCenterY/2147456001 (var1734 Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1734 var1734)
(declare-const null-String String)
(declare-const null-var3413 var3413)
(declare-const null-var2706 var2706)
(declare-const null-Int Int)
(declare-const var1128 var1734) ; Statement: r0 := @parameter0: java.awt.Graphics 
(assert (not (= var1128 null-var1734)))
(declare-const var891 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var891 null-String)))
(declare-const var2794 var3413) ; Statement: r1 := @parameter2: java.awt.Font 
(assert (not (= var2794 null-var3413)))
(declare-const var635 var2706) ; Statement: r2 := @parameter3: java.awt.Color 
(assert (not (= var635 null-var2706)))
(declare-const var1344 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var1344 null-Int)))
(declare-const var3947 Int) ; Statement: i0 := @parameter5: int 
(assert (not (= var3947 null-Int)))
(define-const var2577 Bool false) ; Statement: $z0 = r0 instanceof java.awt.Graphics2D 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<java.awt.Graphics: void setFont(java.awt.Font)>(r1) 
(assert (= (ite var2577 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (setFont/-1113720754 var1128 var2794)) ; Statement: virtualinvoke r0.<java.awt.Graphics: void setFont(java.awt.Font)>(r1) 

(declare-const var1128!1 var1734)
(declare-const var2794!1 var3413)
(define-const var292 Int (var946_getCenterY/2147456001 var1128!1 var3947)) ; Statement: $i6 = staticinvoke <cn.hutool.core.img.GraphicsUtil: int getCenterY(java.awt.Graphics,int)>(r0, i0) 
 ; Statement: if null == r2 goto $i4 = virtualinvoke r3.<java.lang.String: int length()>() 
(assert (= null-var2706 var635)) ; Cond: null == r2 
(assert true)
(define-const var3615 Int (length/-134980193 var891)) ; Statement: $i4 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var2689 Int (div var1344 var3615)) ; Statement: $i5 = i1 / $i4 
(define-const var870 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= $i4 goto return r0 
(assert (>= var870 var3615)) ; Cond: i7 >= $i4 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {setFont/-1113720754=([java.awt.Graphics, java.awt.Font], void), var946_getCenterY/2147456001=([java.awt.Graphics, int], int), length/-134980193=([java.lang.String], int)}
; {var1734=java.awt.Graphics, var1128=r0, var891=r3, var1496=null_type, var3413=java.awt.Font, var2794=r1, var2706=java.awt.Color, var635=r2, var1344=i1, var3947=i0, var2577=$z0, var946=cn.hutool.core.img.GraphicsUtil, var292=$i6, var3615=$i4, var2689=$i5, var870=i7}
; {java.awt.Graphics=var1734, r0=var1128, r3=var891, null_type=var1496, java.awt.Font=var3413, r1=var2794, java.awt.Color=var2706, r2=var635, i1=var1344, i0=var3947, $z0=var2577, cn.hutool.core.img.GraphicsUtil=var946, $i6=var292, $i4=var3615, $i5=var2689, i7=var870}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.awt.Graphics;	r3 := @parameter1: java.lang.String;	r1 := @parameter2: java.awt.Font;	r2 := @parameter3: java.awt.Color;	i1 := @parameter4: int;	i0 := @parameter5: int;	$z0 = r0 instanceof java.awt.Graphics2D;	if $z0 == 0 goto virtualinvoke r0.<java.awt.Graphics: void setFont(java.awt.Font)>(r1);	virtualinvoke r0.<java.awt.Graphics: void setFont(java.awt.Font)>(r1);	$i6 = staticinvoke <cn.hutool.core.img.GraphicsUtil: int getCenterY(java.awt.Graphics,int)>(r0, i0);	if null == r2 goto $i4 = virtualinvoke r3.<java.lang.String: int length()>();	$i4 = virtualinvoke r3.<java.lang.String: int length()>();	$i5 = i1 / $i4;	i7 = 0;	if i7 >= $i4 goto return r0;	return r0
;block_num 5