(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var65 0)
(declare-sort var1388 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-360784002 (var65) Int)
(declare-fun var1388-init () var1388)
(declare-fun <init>/-25822930 (var1388 Int) void)
(declare-const null-var65 var65)
(declare-const null-Int Int)
(declare-const var2288 var65) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2288 null-var65)))
(declare-const var2751 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2751 null-Int)))
(declare-const var3615 Int) ; Statement: c2 := @parameter1: char 
(assert (not (= var3615 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert (not (< var2751 0))) ; Negate: Cond: i0 < 0  
(assert true)
(define-const var546 Int (length/-360784002 var2288)) ; Statement: $i1 = virtualinvoke r1.<org.apache.commons.lang3.text.StrBuilder: int length()>() 
 ; Statement: if i0 < $i1 goto $r2 = r1.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(assert (not (< var2751 var546))) ; Negate: Cond: i0 < $i1  
(define-const var987 var1388 var1388-init) ; Statement: $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/-25822930 var987 var2751)) ; Statement: specialinvoke $r0.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0) 

(declare-const var987!1 var1388)
(declare-const var2751!1 Int)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-360784002=([org.apache.commons.lang3.text.StrBuilder], int), var1388-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var65=org.apache.commons.lang3.text.StrBuilder, var2288=r1, var2751=i0, var3615=c2, var546=$i1, var1388=java.lang.StringIndexOutOfBoundsException, var987=$r0}
; {org.apache.commons.lang3.text.StrBuilder=var65, r1=var2288, i0=var2751, c2=var3615, $i1=var546, java.lang.StringIndexOutOfBoundsException=var1388, $r0=var987}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	c2 := @parameter1: char;	if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException;	$i1 = virtualinvoke r1.<org.apache.commons.lang3.text.StrBuilder: int length()>();	if i0 < $i1 goto $r2 = r1.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	$r0 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r0.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0);	throw $r0
;block_num 3