(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2637 0)
(declare-sort var3906 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3906_checkFromToIndex/-949241738 (Int Int Int) Int)
(declare-const null-var2637 var2637)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var966 var2637) ; Statement: r0 := @this: org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl 
(assert (not (= var966 null-var2637)))
(declare-const var2453 String) ; Statement: r16 := @parameter0: java.lang.CharSequence 
(assert (not (= var2453 null-String)))
(declare-const var1534 Int) ; Statement: i22 := @parameter1: int 
(assert (not (= var1534 null-Int)))
(declare-const var2954 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2954 null-Int)))
 ; Statement: if r16 != null goto $i1 = interfaceinvoke r16.<java.lang.CharSequence: int length()>() 
(assert (not (= var2453 null-String))) ; Cond: r16 != null 
(define-const var381 Int (String_length/-667254855 var2453)) ; Statement: $i1 = interfaceinvoke r16.<java.lang.CharSequence: int length()>() 
;(assert (var3906_checkFromToIndex/-949241738 var1534 var2954 var381)) ; Statement: staticinvoke <java.util.Objects: int checkFromToIndex(int,int,int)>(i22, i0, $i1) 

(declare-const var1534!1 Int)
(declare-const var2954!1 Int)
(declare-const var381!1 Int)
(define-const var1875 Int (- var2954!1 var1534!1)) ; Statement: $i21 = i0 - i22 
 ; Statement: if $i21 != 0 goto $i2 = r0.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> 
(assert (not (not (= var1875 0)))) ; Negate: Cond: $i21 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var3906_checkFromToIndex/-949241738=([int, int, int], int)}
; {var2637=org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl, var966=r0, var2453=r16, var1534=i22, var2954=i0, var381=$i1, var3906=java.util.Objects, var1875=$i21}
; {org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl=var2637, r0=var966, r16=var2453, i22=var1534, i0=var2954, $i1=var381, java.util.Objects=var3906, $i21=var1875}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl;	r16 := @parameter0: java.lang.CharSequence;	i22 := @parameter1: int;	i0 := @parameter2: int;	if r16 != null goto $i1 = interfaceinvoke r16.<java.lang.CharSequence: int length()>();	$i1 = interfaceinvoke r16.<java.lang.CharSequence: int length()>();	staticinvoke <java.util.Objects: int checkFromToIndex(int,int,int)>(i22, i0, $i1);	$i21 = i0 - i22;	if $i21 != 0 goto $i2 = r0.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength>;	return r0
;block_num 3