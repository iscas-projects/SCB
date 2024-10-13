(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2894 0)
(declare-sort var430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var430-init () var430)
(declare-fun <init>/-25822930 (var430 Int) void)
(declare-const null-var2894 var2894)
(declare-const null-Int Int)
(declare-const var1320 var2894) ; Statement: r0 := @this: cn.hutool.core.text.StrBuilder 
(assert (not (= var1320 null-var2894)))
(declare-const var2324 Int) ; Statement: i5 := @parameter0: int 
(assert (not (= var2324 null-Int)))
(declare-const var3278 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var3278 null-Int)))
 ; Statement: if i5 >= 0 goto (branch) 
(assert (>= var2324 0)) ; Cond: i5 >= 0 
 ; Statement: if i5 >= 0 goto specialinvoke r0.<cn.hutool.core.text.StrBuilder: void moveDataAfterIndex(int,int)>(i5, 1) 
(assert (not (>= var2324 0))) ; Negate: Cond: i5 >= 0  
(define-const var1578 var430 var430-init) ; Statement: $r2 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/-25822930 var1578 var2324)) ; Statement: specialinvoke $r2.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i5) 

(declare-const var1578!1 var430)
(declare-const var2324!1 Int)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var430-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var2894=cn.hutool.core.text.StrBuilder, var1320=r0, var2324=i5, var3278=c0, var430=java.lang.StringIndexOutOfBoundsException, var1578=$r2}
; {cn.hutool.core.text.StrBuilder=var2894, r0=var1320, i5=var2324, c0=var3278, java.lang.StringIndexOutOfBoundsException=var430, $r2=var1578}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r0 := @this: cn.hutool.core.text.StrBuilder;	i5 := @parameter0: int;	c0 := @parameter1: char;	if i5 >= 0 goto (branch);	if i5 >= 0 goto specialinvoke r0.<cn.hutool.core.text.StrBuilder: void moveDataAfterIndex(int,int)>(i5, 1);	$r2 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r2.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i5);	throw $r2
;block_num 3