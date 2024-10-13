(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1568 0)
(declare-sort var3990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3990-init () var3990)
(declare-fun <init>/-25822930 (var3990 Int) void)
(declare-const null-var1568 var1568)
(declare-const null-Int Int)
(declare-const var3053 var1568) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var3053 null-var1568)))
(declare-const var3332 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3332 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert (< var3332 0)) ; Cond: i0 < 0 
(define-const var3654 var3990 var3990-init) ; Statement: $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/-25822930 var3654 var3332)) ; Statement: specialinvoke $r0.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0) 

(declare-const var3654!1 var3990)
(declare-const var3332!1 Int)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3990-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var1568=org.apache.commons.lang3.text.StrBuilder, var3053=r1, var3332=i0, var3990=java.lang.StringIndexOutOfBoundsException, var3654=$r0}
; {org.apache.commons.lang3.text.StrBuilder=var1568, r1=var3053, i0=var3332, java.lang.StringIndexOutOfBoundsException=var3990, $r0=var3654}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException;	$r0 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r0.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0);	throw $r0
;block_num 2