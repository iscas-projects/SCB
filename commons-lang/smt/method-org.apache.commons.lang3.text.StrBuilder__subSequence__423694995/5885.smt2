(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3734 0)
(declare-sort var3732 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var3734) Int)
(declare-fun var3732-init () var3732)
(declare-fun <init>/-25822930 (var3732 Int) void)
(declare-const null-var3734 var3734)
(declare-const null-Int Int)
(declare-const var994 var3734) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var994 null-var3734)))
(declare-const var3958 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3958 null-Int)))
(declare-const var278 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var278 null-Int)))
 ; Statement: if i0 >= 0 goto $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (>= var3958 0)) ; Cond: i0 >= 0 
(define-const var1980 Int (size/1389889126 var994)) ; Statement: $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i1 <= $i2 goto (branch) 
(assert (<= var278 var1980)) ; Cond: i1 <= $i2 
 ; Statement: if i0 <= i1 goto $r1 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: java.lang.String substring(int,int)>(i0, i1) 
(assert (not (<= var3958 var278))) ; Negate: Cond: i0 <= i1  
(define-const var3544 var3732 var3732-init) ; Statement: $r2 = new java.lang.StringIndexOutOfBoundsException 
(define-const var173 Int (- var278 var3958)) ; Statement: $i3 = i1 - i0 
(assert true)
;(assert (<init>/-25822930 var3544 var173)) ; Statement: specialinvoke $r2.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>($i3) 

(declare-const var3544!1 var3732)
(declare-const var173!1 Int)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), var3732-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var3734=org.apache.commons.lang3.text.StrBuilder, var994=r0, var3958=i0, var278=i1, var1980=$i2, var3732=java.lang.StringIndexOutOfBoundsException, var3544=$r2, var173=$i3}
; {org.apache.commons.lang3.text.StrBuilder=var3734, r0=var994, i0=var3958, i1=var278, $i2=var1980, java.lang.StringIndexOutOfBoundsException=var3732, $r2=var3544, $i3=var173}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	i1 := @parameter1: int;	if i0 >= 0 goto $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i1 <= $i2 goto (branch);	if i0 <= i1 goto $r1 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: java.lang.String substring(int,int)>(i0, i1);	$r2 = new java.lang.StringIndexOutOfBoundsException;	$i3 = i1 - i0;	specialinvoke $r2.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>($i3);	throw $r2
;block_num 4