(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var245 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var245) Int)
(declare-fun String-init () String)
(declare-fun buffer/1389889126 (var245) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var245 var245)
(declare-const null-Int Int)
(declare-const var2991 var245) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2991 null-var245)))
(declare-const var1622 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1622 null-Int)))
 ; Statement: if i0 > 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (> var1622 0)) ; Cond: i0 > 0 
(define-const var1766 Int (size/1389889126 var2991)) ; Statement: $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i0 < $i1 goto $r1 = new java.lang.String 
(assert (not (< var1622 var1766))) ; Negate: Cond: i0 < $i1  
(define-const var1133 String String-init) ; Statement: $r3 = new java.lang.String 
(define-const var1965 (Array Int Int) (buffer/1389889126 var2991)) ; Statement: $r4 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(define-const var2714 Int (size/1389889126 var2991)) ; Statement: $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert true)
;(assert (<init>/-253222812 var1133 var1965 0 var2714)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r4, 0, $i2) 

(declare-const var1133!1 String)
(declare-const var1965!1 (Array Int Int))
(declare-const var971 Int)
(declare-const var2714!1 Int)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), String-init=([], java.lang.String), buffer/1389889126=([org.apache.commons.lang3.text.StrBuilder], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var245=org.apache.commons.lang3.text.StrBuilder, var2991=r0, var1622=i0, var1766=$i1, var1133=$r3, var1965=$r4, var2714=$i2, var971=0}
; {org.apache.commons.lang3.text.StrBuilder=var245, r0=var2991, i0=var1622, $i1=var1766, $r3=var1133, $r4=var1965, $i2=var2714, 0=var971}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	if i0 > 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i0 < $i1 goto $r1 = new java.lang.String;	$r3 = new java.lang.String;	$r4 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	$i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r4, 0, $i2);	return $r3
;block_num 3