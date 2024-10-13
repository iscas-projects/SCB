(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var66 0)
(declare-sort var3410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3410-init () var3410)
(declare-fun <init>/-25822930 (var3410 Int) void)
(declare-const null-var66 var66)
(declare-const null-Int Int)
(declare-const var3519 var66) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var3519 null-var66)))
(declare-const var2829 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2829 null-Int)))
(declare-const var1153 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1153 null-Int)))
 ; Statement: if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (not (>= var2829 0))) ; Negate: Cond: i0 >= 0  
(define-const var245 var3410 var3410-init) ; Statement: $r2 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/-25822930 var245 var2829)) ; Statement: specialinvoke $r2.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0) 

(declare-const var245!1 var3410)
(declare-const var2829!1 Int)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3410-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var66=org.apache.commons.lang3.text.StrBuilder, var3519=r0, var2829=i0, var1153=i2, var3410=java.lang.StringIndexOutOfBoundsException, var245=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var66, r0=var3519, i0=var2829, i2=var1153, java.lang.StringIndexOutOfBoundsException=var3410, $r2=var245}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	i2 := @parameter1: int;	if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$r2 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r2.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0);	throw $r2
;block_num 2