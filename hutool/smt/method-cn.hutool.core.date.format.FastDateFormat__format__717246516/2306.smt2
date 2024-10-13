(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var801 0)
(declare-sort var2604 0)
(declare-sort var276 0)
(declare-sort var1939 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun printer/-2028195775 (var801) var1939)
(declare-fun format/-1359813424 (var1939 var2604) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var801 var801)
(declare-const null-var2604 var2604)
(declare-const null-String String)
(declare-const null-var276 var276)
(declare-const var374 var801) ; Statement: r1 := @this: cn.hutool.core.date.format.FastDateFormat 
(assert (not (= var374 null-var801)))
(declare-const var2328 var2604) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2328 null-var2604)))
(declare-const var3819 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var3819 null-String)))
(declare-const var1302 var276) ; Statement: r6 := @parameter2: java.text.FieldPosition 
(assert (not (= var1302 null-var276)))
(define-const var3109 var1939 (printer/-2028195775 var374)) ; Statement: $r3 = r1.<cn.hutool.core.date.format.FastDateFormat: cn.hutool.core.date.format.FastDatePrinter printer> 
(assert true)
(define-const var2687 String (format/-1359813424 var3109 var2328)) ; Statement: $r4 = virtualinvoke $r3.<cn.hutool.core.date.format.FastDatePrinter: java.lang.String format(java.lang.Object)>(r2) 
(assert true)
(define-const var2631 String (append/1560614132 var3819 var2687)) ; Statement: $r5 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var3819!1 String)
(assert (str.prefixof var3819 var3819!1))
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {printer/-2028195775=([cn.hutool.core.date.format.FastDateFormat], cn.hutool.core.date.format.FastDatePrinter), format/-1359813424=([cn.hutool.core.date.format.FastDatePrinter, java.lang.Object], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var801=cn.hutool.core.date.format.FastDateFormat, var374=r1, var2604=java.lang.Object, var2328=r2, var3819=r0, var276=java.text.FieldPosition, var1302=r6, var1939=cn.hutool.core.date.format.FastDatePrinter, var3109=$r3, var2687=$r4, var2631=$r5}
; {cn.hutool.core.date.format.FastDateFormat=var801, r1=var374, java.lang.Object=var2604, r2=var2328, r0=var3819, java.text.FieldPosition=var276, r6=var1302, cn.hutool.core.date.format.FastDatePrinter=var1939, $r3=var3109, $r4=var2687, $r5=var2631}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: cn.hutool.core.date.format.FastDateFormat;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.StringBuffer;	r6 := @parameter2: java.text.FieldPosition;	$r3 = r1.<cn.hutool.core.date.format.FastDateFormat: cn.hutool.core.date.format.FastDatePrinter printer>;	$r4 = virtualinvoke $r3.<cn.hutool.core.date.format.FastDatePrinter: java.lang.String format(java.lang.Object)>(r2);	$r5 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	return $r5
;block_num 1