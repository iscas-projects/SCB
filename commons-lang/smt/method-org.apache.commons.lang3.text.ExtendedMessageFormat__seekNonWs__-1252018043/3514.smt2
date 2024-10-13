(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2279 0)
(declare-sort var3290 0)
(declare-sort var963 0)
(declare-sort var2477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var2477_splitMatcher/-2008615519 () var2477)
(declare-fun getIndex/-2136393185 (var963) Int)
(declare-fun isMatch/-942142227 (var2477 (Array Int Int) Int) Int)
(declare-fun setIndex/-453939609 (var963 Int) void)
(declare-const null-var2279 var2279)
(declare-const null-String String)
(declare-const null-var963 var963)
(declare-const var2199 var2279) ; Statement: r4 := @this: org.apache.commons.lang3.text.ExtendedMessageFormat 
(assert (not (= var2199 null-var2279)))
(declare-const var3200 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3200 null-String)))
(declare-const var1112 var963) ; Statement: r2 := @parameter1: java.text.ParsePosition 
(assert (not (= var1112 null-var963)))
(assert true)
(define-const var3257 (Array Int Int) (toCharArray/415275702 var3200)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(assert true) ; Non Conditional
(define-const var2723 var2477 var2477_splitMatcher/-2008615519) ; Statement: $r3 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher splitMatcher()>() 
(assert true)
(define-const var1208 Int (getIndex/-2136393185 var1112)) ; Statement: $i0 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>() 
(assert true)
(define-const var528 Int (isMatch/-942142227 var2723 var3257 var1208)) ; Statement: $i5 = virtualinvoke $r3.<org.apache.commons.lang3.text.StrMatcher: int isMatch(char[],int)>(r1, $i0) 
(assert true)
(define-const var3900 Int (getIndex/-2136393185 var1112)) ; Statement: $i1 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>() 
(define-const var3198 Int (+ var3900 var528)) ; Statement: $i2 = $i1 + $i5 
(assert true)
;(assert (setIndex/-453939609 var1112 var3198)) ; Statement: virtualinvoke r2.<java.text.ParsePosition: void setIndex(int)>($i2) 

(declare-const var1112!1 var963)
(declare-const var3198!1 Int)
 ; Statement: if $i5 <= 0 goto return 
(assert (<= var528 0)) ; Cond: $i5 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), var2477_splitMatcher/-2008615519=([], org.apache.commons.lang3.text.StrMatcher), getIndex/-2136393185=([java.text.ParsePosition], int), isMatch/-942142227=([org.apache.commons.lang3.text.StrMatcher, char[], int], int), setIndex/-453939609=([java.text.ParsePosition, int], void)}
; {var2279=org.apache.commons.lang3.text.ExtendedMessageFormat, var2199=r4, var3200=r0, var3290=null_type, var963=java.text.ParsePosition, var1112=r2, var3257=r1, var2477=org.apache.commons.lang3.text.StrMatcher, var2723=$r3, var1208=$i0, var528=$i5, var3900=$i1, var3198=$i2}
; {org.apache.commons.lang3.text.ExtendedMessageFormat=var2279, r4=var2199, r0=var3200, null_type=var3290, java.text.ParsePosition=var963, r2=var1112, r1=var3257, org.apache.commons.lang3.text.StrMatcher=var2477, $r3=var2723, $i0=var1208, $i5=var528, $i1=var3900, $i2=var3198}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r4 := @this: org.apache.commons.lang3.text.ExtendedMessageFormat;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.text.ParsePosition;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$r3 = staticinvoke <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher splitMatcher()>();	$i0 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$i5 = virtualinvoke $r3.<org.apache.commons.lang3.text.StrMatcher: int isMatch(char[],int)>(r1, $i0);	$i1 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$i2 = $i1 + $i5;	virtualinvoke r2.<java.text.ParsePosition: void setIndex(int)>($i2);	if $i5 <= 0 goto return;	return
;block_num 3