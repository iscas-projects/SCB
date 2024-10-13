(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1538 0)
(declare-sort var3430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3430-init () var3430)
(declare-fun <init>/-25822930 (var3430 Int) void)
(declare-const null-var1538 var1538)
(declare-const null-Int Int)
(declare-const var1651 var1538) ; Statement: r1 := @this: cn.hutool.core.text.StrBuilder 
(assert (not (= var1651 null-var1538)))
(declare-const var185 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var185 null-Int)))
 ; Statement: if i3 >= 0 goto (branch) 
(assert (>= var185 0)) ; Cond: i3 >= 0 
 ; Statement: if i3 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert (< var185 0)) ; Cond: i3 < 0 
(define-const var1645 var3430 var3430-init) ; Statement: $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/-25822930 var1645 var185)) ; Statement: specialinvoke $r0.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i3) 

(declare-const var1645!1 var3430)
(declare-const var185!1 Int)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3430-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var1538=cn.hutool.core.text.StrBuilder, var1651=r1, var185=i3, var3430=java.lang.StringIndexOutOfBoundsException, var1645=$r0}
; {cn.hutool.core.text.StrBuilder=var1538, r1=var1651, i3=var185, java.lang.StringIndexOutOfBoundsException=var3430, $r0=var1645}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r1 := @this: cn.hutool.core.text.StrBuilder;	i3 := @parameter0: int;	if i3 >= 0 goto (branch);	if i3 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException;	$r0 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r0.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i3);	throw $r0
;block_num 3