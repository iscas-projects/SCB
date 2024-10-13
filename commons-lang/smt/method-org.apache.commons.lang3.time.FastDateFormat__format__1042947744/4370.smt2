(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1036 0)
(declare-sort var1116 0)
(declare-sort var435 0)
(declare-sort var1136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun printer/-1347178147 (var1036) var1136)
(declare-fun format/-872951492 (var1136 var1116) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1036 var1036)
(declare-const null-var1116 var1116)
(declare-const null-String String)
(declare-const null-var435 var435)
(declare-const var247 var1036) ; Statement: r1 := @this: org.apache.commons.lang3.time.FastDateFormat 
(assert (not (= var247 null-var1036)))
(declare-const var1953 var1116) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1953 null-var1116)))
(declare-const var2967 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var2967 null-String)))
(declare-const var651 var435) ; Statement: r6 := @parameter2: java.text.FieldPosition 
(assert (not (= var651 null-var435)))
(define-const var3438 var1136 (printer/-1347178147 var247)) ; Statement: $r3 = r1.<org.apache.commons.lang3.time.FastDateFormat: org.apache.commons.lang3.time.FastDatePrinter printer> 
(assert true)
(define-const var2629 String (format/-872951492 var3438 var1953)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.commons.lang3.time.FastDatePrinter: java.lang.String format(java.lang.Object)>(r2) 
(assert true)
(define-const var3191 String (append/1560614132 var2967 var2629)) ; Statement: $r5 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var2967!1 String)
(assert (str.prefixof var2967 var2967!1))
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {printer/-1347178147=([org.apache.commons.lang3.time.FastDateFormat], org.apache.commons.lang3.time.FastDatePrinter), format/-872951492=([org.apache.commons.lang3.time.FastDatePrinter, java.lang.Object], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var1036=org.apache.commons.lang3.time.FastDateFormat, var247=r1, var1116=java.lang.Object, var1953=r2, var2967=r0, var435=java.text.FieldPosition, var651=r6, var1136=org.apache.commons.lang3.time.FastDatePrinter, var3438=$r3, var2629=$r4, var3191=$r5}
; {org.apache.commons.lang3.time.FastDateFormat=var1036, r1=var247, java.lang.Object=var1116, r2=var1953, r0=var2967, java.text.FieldPosition=var435, r6=var651, org.apache.commons.lang3.time.FastDatePrinter=var1136, $r3=var3438, $r4=var2629, $r5=var3191}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.time.FastDateFormat;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.StringBuffer;	r6 := @parameter2: java.text.FieldPosition;	$r3 = r1.<org.apache.commons.lang3.time.FastDateFormat: org.apache.commons.lang3.time.FastDatePrinter printer>;	$r4 = virtualinvoke $r3.<org.apache.commons.lang3.time.FastDatePrinter: java.lang.String format(java.lang.Object)>(r2);	$r5 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	return $r5
;block_num 1