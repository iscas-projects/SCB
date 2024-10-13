(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var945 0)
(declare-sort var3347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3347-init () var3347)
(declare-fun <init>/-25822930 (var3347 Int) void)
(declare-const null-var945 var945)
(declare-const null-Int Int)
(declare-const var2393 var945) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2393 null-var945)))
(declare-const var2962 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2962 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert (< var2962 0)) ; Cond: i0 < 0 
(define-const var1531 var3347 var3347-init) ; Statement: $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/-25822930 var1531 var2962)) ; Statement: specialinvoke $r0.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0) 

(declare-const var1531!1 var3347)
(declare-const var2962!1 Int)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3347-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var945=org.apache.commons.lang3.text.StrBuilder, var2393=r1, var2962=i0, var3347=java.lang.StringIndexOutOfBoundsException, var1531=$r0}
; {org.apache.commons.lang3.text.StrBuilder=var945, r1=var2393, i0=var2962, java.lang.StringIndexOutOfBoundsException=var3347, $r0=var1531}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException;	$r0 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r0.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0);	throw $r0
;block_num 2