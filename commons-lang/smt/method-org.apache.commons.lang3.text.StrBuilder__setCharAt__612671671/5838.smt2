(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1950 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-360784002 (var1950) Int)
(declare-fun buffer/1389889126 (var1950) (Array Int Int))
(declare-const null-var1950 var1950)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1711 var1950) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1711 null-var1950)))
(declare-const var3540 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3540 null-Int)))
(declare-const var1931 Int) ; Statement: c2 := @parameter1: char 
(assert (not (= var1931 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert (not (< var3540 0))) ; Negate: Cond: i0 < 0  
(assert true)
(define-const var3866 Int (length/-360784002 var1711)) ; Statement: $i1 = virtualinvoke r1.<org.apache.commons.lang3.text.StrBuilder: int length()>() 
 ; Statement: if i0 < $i1 goto $r2 = r1.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(assert (< var3540 var3866)) ; Cond: i0 < $i1 
(define-const var1462 (Array Int Int) (buffer/1389889126 var1711)) ; Statement: $r2 = r1.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(declare-const var1462!1 (Array Int Int))
(assert (not (= var1462!1 null-__Array__Int__Int__)))
(assert (= (select var1462!1 var3540) var1931)) ; Statement: $r2[i0] = c2 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-360784002=([org.apache.commons.lang3.text.StrBuilder], int), buffer/1389889126=([org.apache.commons.lang3.text.StrBuilder], char[])}
; {var1950=org.apache.commons.lang3.text.StrBuilder, var1711=r1, var3540=i0, var1931=c2, var3866=$i1, var1462=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var1950, r1=var1711, i0=var3540, c2=var1931, $i1=var3866, $r2=var1462}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	c2 := @parameter1: char;	if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException;	$i1 = virtualinvoke r1.<org.apache.commons.lang3.text.StrBuilder: int length()>();	if i0 < $i1 goto $r2 = r1.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	$r2 = r1.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	$r2[i0] = c2;	return r1
;block_num 3