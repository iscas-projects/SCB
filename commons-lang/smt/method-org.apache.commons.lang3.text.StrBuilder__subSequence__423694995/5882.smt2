(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var686 0)
(declare-sort var115 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var686) Int)
(declare-fun var115-init () var115)
(declare-fun <init>/-25822930 (var115 Int) void)
(declare-const null-var686 var686)
(declare-const null-Int Int)
(declare-const var105 var686) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var105 null-var686)))
(declare-const var379 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var379 null-Int)))
(declare-const var1866 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1866 null-Int)))
 ; Statement: if i0 >= 0 goto $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (>= var379 0)) ; Cond: i0 >= 0 
(define-const var2981 Int (size/1389889126 var105)) ; Statement: $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i1 <= $i2 goto (branch) 
(assert (not (<= var1866 var2981))) ; Negate: Cond: i1 <= $i2  
(define-const var1046 var115 var115-init) ; Statement: $r3 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/-25822930 var1046 var1866)) ; Statement: specialinvoke $r3.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i1) 

(declare-const var1046!1 var115)
(declare-const var1866!1 Int)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), var115-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var686=org.apache.commons.lang3.text.StrBuilder, var105=r0, var379=i0, var1866=i1, var2981=$i2, var115=java.lang.StringIndexOutOfBoundsException, var1046=$r3}
; {org.apache.commons.lang3.text.StrBuilder=var686, r0=var105, i0=var379, i1=var1866, $i2=var2981, java.lang.StringIndexOutOfBoundsException=var115, $r3=var1046}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	i1 := @parameter1: int;	if i0 >= 0 goto $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i1 <= $i2 goto (branch);	$r3 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r3.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i1);	throw $r3
;block_num 3