(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var460 0)
(declare-sort var2778 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2778-init () var2778)
(declare-fun <init>/-25822930 (var2778 Int) void)
(declare-const null-var460 var460)
(declare-const null-Int Int)
(declare-const var2694 var460) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2694 null-var460)))
(declare-const var3423 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3423 null-Int)))
(declare-const var20 Int) ; Statement: c2 := @parameter1: char 
(assert (not (= var20 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert (< var3423 0)) ; Cond: i0 < 0 
(define-const var1387 var2778 var2778-init) ; Statement: $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/-25822930 var1387 var3423)) ; Statement: specialinvoke $r0.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0) 

(declare-const var1387!1 var2778)
(declare-const var3423!1 Int)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2778-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var460=org.apache.commons.lang3.text.StrBuilder, var2694=r1, var3423=i0, var20=c2, var2778=java.lang.StringIndexOutOfBoundsException, var1387=$r0}
; {org.apache.commons.lang3.text.StrBuilder=var460, r1=var2694, i0=var3423, c2=var20, java.lang.StringIndexOutOfBoundsException=var2778, $r0=var1387}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	c2 := @parameter1: char;	if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException;	$r0 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r0.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0);	throw $r0
;block_num 2