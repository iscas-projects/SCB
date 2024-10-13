(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var315 0)
(declare-sort var1806 0)
(declare-sort var3904 0)
(declare-sort var690 0)
(declare-sort var2900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIndex/-2136393185 (var2900) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun setErrorIndex/-1773443795 (var2900 Int) void)
(declare-const null-var315 var315)
(declare-const null-var1806 var1806)
(declare-const null-var3904 var3904)
(declare-const null-String String)
(declare-const null-var2900 var2900)
(declare-const null-Int Int)
(declare-const var383 var315) ; Statement: r4 := @this: org.apache.commons.lang3.time.FastDateParser$NumberStrategy 
(assert (not (= var383 null-var315)))
(declare-const var838 var1806) ; Statement: r5 := @parameter0: org.apache.commons.lang3.time.FastDateParser 
(assert (not (= var838 null-var1806)))
(declare-const var763 var3904) ; Statement: r3 := @parameter1: java.util.Calendar 
(assert (not (= var763 null-var3904)))
(declare-const var1048 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1048 null-String)))
(declare-const var2224 var2900) ; Statement: r0 := @parameter3: java.text.ParsePosition 
(assert (not (= var2224 null-var2900)))
(declare-const var1779 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var1779 null-Int)))
(assert true)
(define-const var2294 Int (getIndex/-2136393185 var2224)) ; Statement: i5 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
(define-const var3858 Int (length/-134980193 var1048)) ; Statement: i6 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto i8 = i5 + i0 
(assert (not (= var1779 0))) ; Cond: i0 != 0 
(define-const var2747 Int (+ var2294 var1779)) ; Statement: i8 = i5 + i0 
 ; Statement: if i6 <= i8 goto (branch) 
(assert (<= var3858 var2747)) ; Cond: i6 <= i8 
 ; Statement: if i5 >= i6 goto $i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert (>= var2294 var3858)) ; Cond: i5 >= i6 
(assert true)
(define-const var1139 Int (getIndex/-2136393185 var2224)) ; Statement: $i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
 ; Statement: if $i1 != i5 goto $i2 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert (not (not (= var1139 var2294)))) ; Negate: Cond: $i1 != i5  
(assert true)
;(assert (setErrorIndex/-1773443795 var2224 var2294)) ; Statement: virtualinvoke r0.<java.text.ParsePosition: void setErrorIndex(int)>(i5) 

(declare-const var2224!1 var2900)
(declare-const var2294!1 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getIndex/-2136393185=([java.text.ParsePosition], int), length/-134980193=([java.lang.String], int), setErrorIndex/-1773443795=([java.text.ParsePosition, int], void)}
; {var315=org.apache.commons.lang3.time.FastDateParser$NumberStrategy, var383=r4, var1806=org.apache.commons.lang3.time.FastDateParser, var838=r5, var3904=java.util.Calendar, var763=r3, var1048=r1, var690=null_type, var2900=java.text.ParsePosition, var2224=r0, var1779=i0, var2294=i5, var3858=i6, var2747=i8, var1139=$i1}
; {org.apache.commons.lang3.time.FastDateParser$NumberStrategy=var315, r4=var383, org.apache.commons.lang3.time.FastDateParser=var1806, r5=var838, java.util.Calendar=var3904, r3=var763, r1=var1048, null_type=var690, java.text.ParsePosition=var2900, r0=var2224, i0=var1779, i5=var2294, i6=var3858, i8=var2747, $i1=var1139}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: org.apache.commons.lang3.time.FastDateParser$NumberStrategy;	r5 := @parameter0: org.apache.commons.lang3.time.FastDateParser;	r3 := @parameter1: java.util.Calendar;	r1 := @parameter2: java.lang.String;	r0 := @parameter3: java.text.ParsePosition;	i0 := @parameter4: int;	i5 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	i6 = virtualinvoke r1.<java.lang.String: int length()>();	if i0 != 0 goto i8 = i5 + i0;	i8 = i5 + i0;	if i6 <= i8 goto (branch);	if i5 >= i6 goto $i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	$i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	if $i1 != i5 goto $i2 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	virtualinvoke r0.<java.text.ParsePosition: void setErrorIndex(int)>(i5);	return 0
;block_num 5