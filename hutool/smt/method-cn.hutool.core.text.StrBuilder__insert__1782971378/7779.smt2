(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var137 0)
(declare-sort var2483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2483-init () var2483)
(declare-fun <init>/-25822930 (var2483 Int) void)
(declare-const null-var137 var137)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1264 var137) ; Statement: r0 := @this: cn.hutool.core.text.StrBuilder 
(assert (not (= var1264 null-var137)))
(declare-const var1926 Int) ; Statement: i4 := @parameter0: int 
(assert (not (= var1926 null-Int)))
(declare-const var2216 String) ; Statement: r11 := @parameter1: java.lang.CharSequence 
(assert (not (= var2216 null-String)))
 ; Statement: if i4 >= 0 goto (branch) 
(assert (>= var1926 0)) ; Cond: i4 >= 0 
 ; Statement: if i4 >= 0 goto (branch) 
(assert (not (>= var1926 0))) ; Negate: Cond: i4 >= 0  
(define-const var3271 var2483 var2483-init) ; Statement: $r10 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/-25822930 var3271 var1926)) ; Statement: specialinvoke $r10.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i4) 

(declare-const var3271!1 var2483)
(declare-const var1926!1 Int)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2483-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var137=cn.hutool.core.text.StrBuilder, var1264=r0, var1926=i4, var2216=r11, var2483=java.lang.StringIndexOutOfBoundsException, var3271=$r10}
; {cn.hutool.core.text.StrBuilder=var137, r0=var1264, i4=var1926, r11=var2216, java.lang.StringIndexOutOfBoundsException=var2483, $r10=var3271}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r0 := @this: cn.hutool.core.text.StrBuilder;	i4 := @parameter0: int;	r11 := @parameter1: java.lang.CharSequence;	if i4 >= 0 goto (branch);	if i4 >= 0 goto (branch);	$r10 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r10.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i4);	throw $r10
;block_num 3