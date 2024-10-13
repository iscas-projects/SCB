(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2287 0)
(declare-sort var3191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var2287) Int)
(declare-fun var3191-init () var3191)
(declare-fun <init>/-25822930 (var3191 Int) void)
(declare-const null-var2287 var2287)
(declare-const null-Int Int)
(declare-const var1144 var2287) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1144 null-var2287)))
(declare-const var156 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var156 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert (not (< var156 0))) ; Negate: Cond: i0 < 0  
(define-const var1092 Int (size/1389889126 var1144)) ; Statement: $i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i0 <= $i1 goto return 
(assert (not (<= var156 var1092))) ; Negate: Cond: i0 <= $i1  
(define-const var2574 var3191 var3191-init) ; Statement: $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/-25822930 var2574 var156)) ; Statement: specialinvoke $r0.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0) 

(declare-const var2574!1 var3191)
(declare-const var156!1 Int)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), var3191-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var2287=org.apache.commons.lang3.text.StrBuilder, var1144=r1, var156=i0, var1092=$i1, var3191=java.lang.StringIndexOutOfBoundsException, var2574=$r0}
; {org.apache.commons.lang3.text.StrBuilder=var2287, r1=var1144, i0=var156, $i1=var1092, java.lang.StringIndexOutOfBoundsException=var3191, $r0=var2574}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException;	$i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i0 <= $i1 goto return;	$r0 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r0.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0);	throw $r0
;block_num 3