(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3037 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var3037) Int)
(declare-fun String-init () String)
(declare-fun buffer/1389889126 (var3037) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3037 var3037)
(declare-const null-Int Int)
(declare-const var1575 var3037) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1575 null-var3037)))
(declare-const var3125 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3125 null-Int)))
 ; Statement: if i0 > 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (> var3125 0)) ; Cond: i0 > 0 
(define-const var2088 Int (size/1389889126 var1575)) ; Statement: $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i0 < $i1 goto $r1 = new java.lang.String 
(assert (< var3125 var2088)) ; Cond: i0 < $i1 
(define-const var3142 String String-init) ; Statement: $r1 = new java.lang.String 
(define-const var3686 (Array Int Int) (buffer/1389889126 var1575)) ; Statement: $r2 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(define-const var1693 Int (size/1389889126 var1575)) ; Statement: $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(define-const var501 Int (- var1693 var3125)) ; Statement: $i3 = $i2 - i0 
(assert true)
;(assert (<init>/-253222812 var3142 var3686 var501 var3125)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>($r2, $i3, i0) 

(declare-const var3142!1 String)
(declare-const var3686!1 (Array Int Int))
(declare-const var501!1 Int)
(declare-const var3125!1 Int)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), String-init=([], java.lang.String), buffer/1389889126=([org.apache.commons.lang3.text.StrBuilder], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3037=org.apache.commons.lang3.text.StrBuilder, var1575=r0, var3125=i0, var2088=$i1, var3142=$r1, var3686=$r2, var1693=$i2, var501=$i3}
; {org.apache.commons.lang3.text.StrBuilder=var3037, r0=var1575, i0=var3125, $i1=var2088, $r1=var3142, $r2=var3686, $i2=var1693, $i3=var501}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	if i0 > 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i0 < $i1 goto $r1 = new java.lang.String;	$r1 = new java.lang.String;	$r2 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	$i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i3 = $i2 - i0;	specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>($r2, $i3, i0);	return $r1
;block_num 3