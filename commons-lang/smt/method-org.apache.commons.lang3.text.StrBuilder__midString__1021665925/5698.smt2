(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var1896) Int)
(declare-fun String-init () String)
(declare-fun buffer/1389889126 (var1896) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1896 var1896)
(declare-const null-Int Int)
(declare-const var1087 var1896) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1087 null-var1896)))
(declare-const var1366 Int) ; Statement: i6 := @parameter0: int 
(assert (not (= var1366 null-Int)))
(declare-const var847 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var847 null-Int)))
 ; Statement: if i6 >= 0 goto (branch) 
(assert (>= var1366 0)) ; Cond: i6 >= 0 
 ; Statement: if i0 <= 0 goto return "" 
(assert (not (<= var847 0))) ; Negate: Cond: i0 <= 0  
(define-const var1459 Int (size/1389889126 var1087)) ; Statement: $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i6 < $i1 goto $i3 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (< var1366 var1459)) ; Cond: i6 < $i1 
(define-const var645 Int (size/1389889126 var1087)) ; Statement: $i3 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(define-const var3570 Int (+ var1366 var847)) ; Statement: $i2 = i6 + i0 
 ; Statement: if $i3 > $i2 goto $r1 = new java.lang.String 
(assert (> var645 var3570)) ; Cond: $i3 > $i2 
(define-const var1819 String String-init) ; Statement: $r1 = new java.lang.String 
(define-const var3047 (Array Int Int) (buffer/1389889126 var1087)) ; Statement: $r2 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(assert true)
;(assert (<init>/-253222812 var1819 var3047 var1366 var847)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>($r2, i6, i0) 

(declare-const var1819!1 String)
(declare-const var3047!1 (Array Int Int))
(declare-const var1366!1 Int)
(declare-const var847!1 Int)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), String-init=([], java.lang.String), buffer/1389889126=([org.apache.commons.lang3.text.StrBuilder], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1896=org.apache.commons.lang3.text.StrBuilder, var1087=r0, var1366=i6, var847=i0, var1459=$i1, var645=$i3, var3570=$i2, var1819=$r1, var3047=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var1896, r0=var1087, i6=var1366, i0=var847, $i1=var1459, $i3=var645, $i2=var3570, $r1=var1819, $r2=var3047}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i6 := @parameter0: int;	i0 := @parameter1: int;	if i6 >= 0 goto (branch);	if i0 <= 0 goto return "";	$i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i6 < $i1 goto $i3 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i3 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i2 = i6 + i0;	if $i3 > $i2 goto $r1 = new java.lang.String;	$r1 = new java.lang.String;	$r2 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>($r2, i6, i0);	return $r1
;block_num 5