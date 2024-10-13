(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var452 0)
(declare-sort var1631 0)
(declare-sort var3857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTime/1283854862 (var1631) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1023594617 (String (Array Int Int)) String)
(declare-fun append/1845021834 (String Int) String)
(declare-const null-var452 var452)
(declare-const null-var1631 var1631)
(declare-const null-String String)
(declare-const null-var3857 var3857)
(declare-const var452-previousTime Int)
(declare-const var452-previousTimeWithoutMillis (Array Int Int))
(declare-const var3312 var452) ; Statement: r1 := @this: org.apache.log4j.helpers.AbsoluteTimeDateFormat 
(assert (not (= var3312 null-var452)))
(declare-const var3274 var1631) ; Statement: r0 := @parameter0: java.util.Date 
(assert (not (= var3274 null-var1631)))
(declare-const var355 String) ; Statement: r3 := @parameter1: java.lang.StringBuffer 
(assert (not (= var355 null-String)))
(declare-const var2620 var3857) ; Statement: r10 := @parameter2: java.text.FieldPosition 
(assert (not (= var2620 null-var3857)))
(assert true)
(define-const var1658 Int (getTime/1283854862 var3274)) ; Statement: l0 = virtualinvoke r0.<java.util.Date: long getTime()>() 
(define-const var1012 Int (mod var1658 1000)) ; Statement: $l1 = l0 % 1000L 
(define-const var3913 Int (cast-from-Int-to-Int var1012)) ; Statement: i2 = (int) $l1 
(define-const var2360 Int (cast-from-Int-to-Int var3913)) ; Statement: $l3 = (long) i2 
(define-const var661 Int (- var1658 var2360)) ; Statement: $l5 = l0 - $l3 
(define-const var3048 Int var452-previousTime) ; Statement: $l4 = <org.apache.log4j.helpers.AbsoluteTimeDateFormat: long previousTime> 
(define-const var2412 Int (ite (> var661 var3048) 1 (ite (< var661 var3048) (- 1) 0))) ; Statement: $b6 = $l5 cmp $l4 
 ; Statement: if $b6 != 0 goto $r2 = r1.<org.apache.log4j.helpers.AbsoluteTimeDateFormat: java.util.Calendar calendar> 
(assert (not (not (= var2412 0)))) ; Negate: Cond: $b6 != 0  
(define-const var95 (Array Int Int) var452-previousTimeWithoutMillis) ; Statement: $r8 = <org.apache.log4j.helpers.AbsoluteTimeDateFormat: char[] previousTimeWithoutMillis> 
(define-const var1443 Int (select var95 0)) ; Statement: $c12 = $r8[0] 
 ; Statement: if $c12 != 0 goto $r9 = <org.apache.log4j.helpers.AbsoluteTimeDateFormat: char[] previousTimeWithoutMillis> 
(assert (not (= var1443 0))) ; Cond: $c12 != 0 
(define-const var1011 (Array Int Int) var452-previousTimeWithoutMillis) ; Statement: $r9 = <org.apache.log4j.helpers.AbsoluteTimeDateFormat: char[] previousTimeWithoutMillis> 
(assert true)
;(assert (append/-1023594617 var355 var1011)) ; Statement: virtualinvoke r3.<java.lang.StringBuffer: java.lang.StringBuffer append(char[])>($r9) 

(declare-const var355!1 String)
(declare-const var1011!1 (Array Int Int))
(assert true) ; Non Conditional
 ; Statement: if i2 >= 100 goto (branch) 
(assert (>= var3913 100)) ; Cond: i2 >= 100 
 ; Statement: if i2 >= 10 goto virtualinvoke r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i2) 
(assert (>= var3913 10)) ; Cond: i2 >= 10 
(assert true)
;(assert (append/1845021834 var355!1 var3913)) ; Statement: virtualinvoke r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i2) 

(declare-const var355!2 String)
(declare-const var3913!1 Int)
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getTime/1283854862=([java.util.Date], long), cast-from-Int-to-Int=([long], int), append/-1023594617=([java.lang.StringBuffer, char[]], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer)}
; {var452=org.apache.log4j.helpers.AbsoluteTimeDateFormat, var3312=r1, var1631=java.util.Date, var3274=r0, var355=r3, var3857=java.text.FieldPosition, var2620=r10, var1658=l0, var1012=$l1, var3913=i2, var2360=$l3, var661=$l5, var3048=$l4, var2412=$b6, var95=$r8, var1443=$c12, var1011=$r9}
; {org.apache.log4j.helpers.AbsoluteTimeDateFormat=var452, r1=var3312, java.util.Date=var1631, r0=var3274, r3=var355, java.text.FieldPosition=var3857, r10=var2620, l0=var1658, $l1=var1012, i2=var3913, $l3=var2360, $l5=var661, $l4=var3048, $b6=var2412, $r8=var95, $c12=var1443, $r9=var1011}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char[])>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char[])>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1}
;stmts r1 := @this: org.apache.log4j.helpers.AbsoluteTimeDateFormat;	r0 := @parameter0: java.util.Date;	r3 := @parameter1: java.lang.StringBuffer;	r10 := @parameter2: java.text.FieldPosition;	l0 = virtualinvoke r0.<java.util.Date: long getTime()>();	$l1 = l0 % 1000L;	i2 = (int) $l1;	$l3 = (long) i2;	$l5 = l0 - $l3;	$l4 = <org.apache.log4j.helpers.AbsoluteTimeDateFormat: long previousTime>;	$b6 = $l5 cmp $l4;	if $b6 != 0 goto $r2 = r1.<org.apache.log4j.helpers.AbsoluteTimeDateFormat: java.util.Calendar calendar>;	$r8 = <org.apache.log4j.helpers.AbsoluteTimeDateFormat: char[] previousTimeWithoutMillis>;	$c12 = $r8[0];	if $c12 != 0 goto $r9 = <org.apache.log4j.helpers.AbsoluteTimeDateFormat: char[] previousTimeWithoutMillis>;	$r9 = <org.apache.log4j.helpers.AbsoluteTimeDateFormat: char[] previousTimeWithoutMillis>;	virtualinvoke r3.<java.lang.StringBuffer: java.lang.StringBuffer append(char[])>($r9);	if i2 >= 100 goto (branch);	if i2 >= 10 goto virtualinvoke r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i2);	virtualinvoke r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i2);	return r3
;block_num 6