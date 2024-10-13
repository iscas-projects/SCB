(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1013 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var1013) Int)
(declare-fun String-init () String)
(declare-fun buffer/1389889126 (var1013) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1013 var1013)
(declare-const null-Int Int)
(declare-const var1083 var1013) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1083 null-var1013)))
(declare-const var800 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var800 null-Int)))
 ; Statement: if i0 > 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (> var800 0)) ; Cond: i0 > 0 
(define-const var11 Int (size/1389889126 var1083)) ; Statement: $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i0 < $i1 goto $r1 = new java.lang.String 
(assert (not (< var800 var11))) ; Negate: Cond: i0 < $i1  
(define-const var3648 String String-init) ; Statement: $r3 = new java.lang.String 
(define-const var858 (Array Int Int) (buffer/1389889126 var1083)) ; Statement: $r4 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(define-const var50 Int (size/1389889126 var1083)) ; Statement: $i4 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert true)
;(assert (<init>/-253222812 var3648 var858 0 var50)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r4, 0, $i4) 

(declare-const var3648!1 String)
(declare-const var858!1 (Array Int Int))
(declare-const var2444 Int)
(declare-const var50!1 Int)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), String-init=([], java.lang.String), buffer/1389889126=([org.apache.commons.lang3.text.StrBuilder], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1013=org.apache.commons.lang3.text.StrBuilder, var1083=r0, var800=i0, var11=$i1, var3648=$r3, var858=$r4, var50=$i4, var2444=0}
; {org.apache.commons.lang3.text.StrBuilder=var1013, r0=var1083, i0=var800, $i1=var11, $r3=var3648, $r4=var858, $i4=var50, 0=var2444}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	if i0 > 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i0 < $i1 goto $r1 = new java.lang.String;	$r3 = new java.lang.String;	$r4 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	$i4 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r4, 0, $i4);	return $r3
;block_num 3