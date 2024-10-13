(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1330 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var1330) Int)
(declare-fun String-init () String)
(declare-fun buffer/1389889126 (var1330) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1330 var1330)
(declare-const null-Int Int)
(declare-const var3749 var1330) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var3749 null-var1330)))
(declare-const var2959 Int) ; Statement: i6 := @parameter0: int 
(assert (not (= var2959 null-Int)))
(declare-const var860 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var860 null-Int)))
 ; Statement: if i6 >= 0 goto (branch) 
(assert (>= var2959 0)) ; Cond: i6 >= 0 
 ; Statement: if i0 <= 0 goto return "" 
(assert (not (<= var860 0))) ; Negate: Cond: i0 <= 0  
(define-const var2401 Int (size/1389889126 var3749)) ; Statement: $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i6 < $i1 goto $i3 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (< var2959 var2401)) ; Cond: i6 < $i1 
(define-const var3477 Int (size/1389889126 var3749)) ; Statement: $i3 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(define-const var3392 Int (+ var2959 var860)) ; Statement: $i2 = i6 + i0 
 ; Statement: if $i3 > $i2 goto $r1 = new java.lang.String 
(assert (not (> var3477 var3392))) ; Negate: Cond: $i3 > $i2  
(define-const var2329 String String-init) ; Statement: $r3 = new java.lang.String 
(define-const var1316 (Array Int Int) (buffer/1389889126 var3749)) ; Statement: $r4 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(define-const var1509 Int (size/1389889126 var3749)) ; Statement: $i4 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(define-const var756 Int (- var1509 var2959)) ; Statement: $i5 = $i4 - i6 
(assert true)
;(assert (<init>/-253222812 var2329 var1316 var2959 var756)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r4, i6, $i5) 

(declare-const var2329!1 String)
(declare-const var1316!1 (Array Int Int))
(declare-const var2959!1 Int)
(declare-const var756!1 Int)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), String-init=([], java.lang.String), buffer/1389889126=([org.apache.commons.lang3.text.StrBuilder], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1330=org.apache.commons.lang3.text.StrBuilder, var3749=r0, var2959=i6, var860=i0, var2401=$i1, var3477=$i3, var3392=$i2, var2329=$r3, var1316=$r4, var1509=$i4, var756=$i5}
; {org.apache.commons.lang3.text.StrBuilder=var1330, r0=var3749, i6=var2959, i0=var860, $i1=var2401, $i3=var3477, $i2=var3392, $r3=var2329, $r4=var1316, $i4=var1509, $i5=var756}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i6 := @parameter0: int;	i0 := @parameter1: int;	if i6 >= 0 goto (branch);	if i0 <= 0 goto return "";	$i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i6 < $i1 goto $i3 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i3 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i2 = i6 + i0;	if $i3 > $i2 goto $r1 = new java.lang.String;	$r3 = new java.lang.String;	$r4 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	$i4 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i5 = $i4 - i6;	specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r4, i6, $i5);	return $r3
;block_num 5