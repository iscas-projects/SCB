(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var222 0)
(declare-sort var3204 0)
(declare-sort var813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTime/1283854862 (var3204) Int)
(declare-fun startTime/2099353489 (var222) Int)
(declare-fun append/1447793227 (String Int) String)
(declare-const null-var222 var222)
(declare-const null-var3204 var3204)
(declare-const null-String String)
(declare-const null-var813 var813)
(declare-const var2606 var222) ; Statement: r2 := @this: org.apache.log4j.helpers.RelativeTimeDateFormat 
(assert (not (= var2606 null-var222)))
(declare-const var3895 var3204) ; Statement: r1 := @parameter0: java.util.Date 
(assert (not (= var3895 null-var3204)))
(declare-const var1489 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var1489 null-String)))
(declare-const var2511 var813) ; Statement: r4 := @parameter2: java.text.FieldPosition 
(assert (not (= var2511 null-var813)))
(assert true)
(define-const var3530 Int (getTime/1283854862 var3895)) ; Statement: $l1 = virtualinvoke r1.<java.util.Date: long getTime()>() 
(define-const var2599 Int (startTime/2099353489 var2606)) ; Statement: $l0 = r2.<org.apache.log4j.helpers.RelativeTimeDateFormat: long startTime> 
(define-const var3053 Int (- var3530 var2599)) ; Statement: $l2 = $l1 - $l0 
(assert true)
(define-const var1095 String (append/1447793227 var1489 var3053)) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>($l2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getTime/1283854862=([java.util.Date], long), startTime/2099353489=([org.apache.log4j.helpers.RelativeTimeDateFormat], long), append/1447793227=([java.lang.StringBuffer, long], java.lang.StringBuffer)}
; {var222=org.apache.log4j.helpers.RelativeTimeDateFormat, var2606=r2, var3204=java.util.Date, var3895=r1, var1489=r0, var813=java.text.FieldPosition, var2511=r4, var3530=$l1, var2599=$l0, var3053=$l2, var1095=$r3}
; {org.apache.log4j.helpers.RelativeTimeDateFormat=var222, r2=var2606, java.util.Date=var3204, r1=var3895, r0=var1489, java.text.FieldPosition=var813, r4=var2511, $l1=var3530, $l0=var2599, $l2=var3053, $r3=var1095}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(long)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(long)>": 1}
;stmts r2 := @this: org.apache.log4j.helpers.RelativeTimeDateFormat;	r1 := @parameter0: java.util.Date;	r0 := @parameter1: java.lang.StringBuffer;	r4 := @parameter2: java.text.FieldPosition;	$l1 = virtualinvoke r1.<java.util.Date: long getTime()>();	$l0 = r2.<org.apache.log4j.helpers.RelativeTimeDateFormat: long startTime>;	$l2 = $l1 - $l0;	$r3 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>($l2);	return $r3
;block_num 1