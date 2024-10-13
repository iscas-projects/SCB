(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3468 0)
(declare-sort var2637 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2637-init () var2637)
(declare-fun <init>/-25822930 (var2637 Int) void)
(declare-const null-var3468 var3468)
(declare-const null-Int Int)
(declare-const var2433 var3468) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2433 null-var3468)))
(declare-const var3768 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3768 null-Int)))
 ; Statement: if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (not (>= var3768 0))) ; Negate: Cond: i0 >= 0  
(define-const var1317 var2637 var2637-init) ; Statement: $r2 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/-25822930 var1317 var3768)) ; Statement: specialinvoke $r2.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0) 

(declare-const var1317!1 var2637)
(declare-const var3768!1 Int)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2637-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var3468=org.apache.commons.lang3.text.StrBuilder, var2433=r0, var3768=i0, var2637=java.lang.StringIndexOutOfBoundsException, var1317=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var3468, r0=var2433, i0=var3768, java.lang.StringIndexOutOfBoundsException=var2637, $r2=var1317}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$r2 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r2.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0);	throw $r2
;block_num 2