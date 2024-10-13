(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2087 0)
(declare-sort var3941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3941-init () var3941)
(declare-fun <init>/-25822930 (var3941 Int) void)
(declare-const null-var2087 var2087)
(declare-const null-Int Int)
(declare-const var625 var2087) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var625 null-var2087)))
(declare-const var3131 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3131 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert (< var3131 0)) ; Cond: i0 < 0 
(define-const var2097 var3941 var3941-init) ; Statement: $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/-25822930 var2097 var3131)) ; Statement: specialinvoke $r0.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0) 

(declare-const var2097!1 var3941)
(declare-const var3131!1 Int)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3941-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var2087=org.apache.commons.lang3.text.StrBuilder, var625=r1, var3131=i0, var3941=java.lang.StringIndexOutOfBoundsException, var2097=$r0}
; {org.apache.commons.lang3.text.StrBuilder=var2087, r1=var625, i0=var3131, java.lang.StringIndexOutOfBoundsException=var3941, $r0=var2097}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException;	$r0 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r0.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0);	throw $r0
;block_num 2