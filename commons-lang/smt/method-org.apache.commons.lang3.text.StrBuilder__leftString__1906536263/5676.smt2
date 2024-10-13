(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var3170) Int)
(declare-fun String-init () String)
(declare-fun buffer/1389889126 (var3170) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3170 var3170)
(declare-const null-Int Int)
(declare-const var3763 var3170) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var3763 null-var3170)))
(declare-const var2289 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2289 null-Int)))
 ; Statement: if i0 > 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (> var2289 0)) ; Cond: i0 > 0 
(define-const var95 Int (size/1389889126 var3763)) ; Statement: $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i0 < $i1 goto $r1 = new java.lang.String 
(assert (< var2289 var95)) ; Cond: i0 < $i1 
(define-const var924 String String-init) ; Statement: $r1 = new java.lang.String 
(define-const var3712 (Array Int Int) (buffer/1389889126 var3763)) ; Statement: $r2 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(assert true)
;(assert (<init>/-253222812 var924 var3712 0 var2289)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>($r2, 0, i0) 

(declare-const var924!1 String)
(declare-const var3712!1 (Array Int Int))
(declare-const var2560 Int)
(declare-const var2289!1 Int)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), String-init=([], java.lang.String), buffer/1389889126=([org.apache.commons.lang3.text.StrBuilder], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3170=org.apache.commons.lang3.text.StrBuilder, var3763=r0, var2289=i0, var95=$i1, var924=$r1, var3712=$r2, var2560=0}
; {org.apache.commons.lang3.text.StrBuilder=var3170, r0=var3763, i0=var2289, $i1=var95, $r1=var924, $r2=var3712, 0=var2560}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	if i0 > 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i0 < $i1 goto $r1 = new java.lang.String;	$r1 = new java.lang.String;	$r2 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>($r2, 0, i0);	return $r1
;block_num 3