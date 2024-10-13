(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var763 0)
(declare-sort var123 0)
(declare-sort var2498 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTime/1283854862 (var123) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1023594617 (String (Array Int Int)) String)
(declare-fun append/1845021834 (String Int) String)
(declare-const null-var763 var763)
(declare-const null-var123 var123)
(declare-const null-String String)
(declare-const null-var2498 var2498)
(declare-const var763-lastTime Int)
(declare-const var763-lastTimeString (Array Int Int))
(declare-const var244 var763) ; Statement: r1 := @this: org.apache.log4j.helpers.ISO8601DateFormat 
(assert (not (= var244 null-var763)))
(declare-const var2048 var123) ; Statement: r0 := @parameter0: java.util.Date 
(assert (not (= var2048 null-var123)))
(declare-const var3855 String) ; Statement: r3 := @parameter1: java.lang.StringBuffer 
(assert (not (= var3855 null-String)))
(declare-const var1358 var2498) ; Statement: r12 := @parameter2: java.text.FieldPosition 
(assert (not (= var1358 null-var2498)))
(assert true)
(define-const var234 Int (getTime/1283854862 var2048)) ; Statement: l0 = virtualinvoke r0.<java.util.Date: long getTime()>() 
(define-const var576 Int (mod var234 1000)) ; Statement: $l1 = l0 % 1000L 
(define-const var1851 Int (cast-from-Int-to-Int var576)) ; Statement: i2 = (int) $l1 
(define-const var2986 Int (cast-from-Int-to-Int var1851)) ; Statement: $l3 = (long) i2 
(define-const var2017 Int (- var234 var2986)) ; Statement: $l5 = l0 - $l3 
(define-const var366 Int var763-lastTime) ; Statement: $l4 = <org.apache.log4j.helpers.ISO8601DateFormat: long lastTime> 
(define-const var2005 Int (ite (> var2017 var366) 1 (ite (< var2017 var366) (- 1) 0))) ; Statement: $b6 = $l5 cmp $l4 
 ; Statement: if $b6 != 0 goto $r2 = r1.<org.apache.log4j.helpers.ISO8601DateFormat: java.util.Calendar calendar> 
(assert (not (not (= var2005 0)))) ; Negate: Cond: $b6 != 0  
(define-const var1819 (Array Int Int) var763-lastTimeString) ; Statement: $r10 = <org.apache.log4j.helpers.ISO8601DateFormat: char[] lastTimeString> 
(define-const var3186 Int (select var1819 0)) ; Statement: $c14 = $r10[0] 
 ; Statement: if $c14 != 0 goto $r11 = <org.apache.log4j.helpers.ISO8601DateFormat: char[] lastTimeString> 
(assert (not (= var3186 0))) ; Cond: $c14 != 0 
(define-const var1673 (Array Int Int) var763-lastTimeString) ; Statement: $r11 = <org.apache.log4j.helpers.ISO8601DateFormat: char[] lastTimeString> 
(assert true)
;(assert (append/-1023594617 var3855 var1673)) ; Statement: virtualinvoke r3.<java.lang.StringBuffer: java.lang.StringBuffer append(char[])>($r11) 

(declare-const var3855!1 String)
(declare-const var1673!1 (Array Int Int))
(assert true) ; Non Conditional
 ; Statement: if i2 >= 100 goto (branch) 
(assert (>= var1851 100)) ; Cond: i2 >= 100 
 ; Statement: if i2 >= 10 goto virtualinvoke r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i2) 
(assert (>= var1851 10)) ; Cond: i2 >= 10 
(assert true)
;(assert (append/1845021834 var3855!1 var1851)) ; Statement: virtualinvoke r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i2) 

(declare-const var3855!2 String)
(declare-const var1851!1 Int)
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getTime/1283854862=([java.util.Date], long), cast-from-Int-to-Int=([long], int), append/-1023594617=([java.lang.StringBuffer, char[]], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer)}
; {var763=org.apache.log4j.helpers.ISO8601DateFormat, var244=r1, var123=java.util.Date, var2048=r0, var3855=r3, var2498=java.text.FieldPosition, var1358=r12, var234=l0, var576=$l1, var1851=i2, var2986=$l3, var2017=$l5, var366=$l4, var2005=$b6, var1819=$r10, var3186=$c14, var1673=$r11}
; {org.apache.log4j.helpers.ISO8601DateFormat=var763, r1=var244, java.util.Date=var123, r0=var2048, r3=var3855, java.text.FieldPosition=var2498, r12=var1358, l0=var234, $l1=var576, i2=var1851, $l3=var2986, $l5=var2017, $l4=var366, $b6=var2005, $r10=var1819, $c14=var3186, $r11=var1673}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char[])>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char[])>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1}
;stmts r1 := @this: org.apache.log4j.helpers.ISO8601DateFormat;	r0 := @parameter0: java.util.Date;	r3 := @parameter1: java.lang.StringBuffer;	r12 := @parameter2: java.text.FieldPosition;	l0 = virtualinvoke r0.<java.util.Date: long getTime()>();	$l1 = l0 % 1000L;	i2 = (int) $l1;	$l3 = (long) i2;	$l5 = l0 - $l3;	$l4 = <org.apache.log4j.helpers.ISO8601DateFormat: long lastTime>;	$b6 = $l5 cmp $l4;	if $b6 != 0 goto $r2 = r1.<org.apache.log4j.helpers.ISO8601DateFormat: java.util.Calendar calendar>;	$r10 = <org.apache.log4j.helpers.ISO8601DateFormat: char[] lastTimeString>;	$c14 = $r10[0];	if $c14 != 0 goto $r11 = <org.apache.log4j.helpers.ISO8601DateFormat: char[] lastTimeString>;	$r11 = <org.apache.log4j.helpers.ISO8601DateFormat: char[] lastTimeString>;	virtualinvoke r3.<java.lang.StringBuffer: java.lang.StringBuffer append(char[])>($r11);	if i2 >= 100 goto (branch);	if i2 >= 10 goto virtualinvoke r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i2);	virtualinvoke r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i2);	return r3
;block_num 6