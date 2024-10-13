(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2838 0)
(declare-sort var2468 0)
(declare-sort var1949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sbuf/-2071271056 (var2838) String)
(declare-fun capacity/792304043 (String) Int)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun head/-2071271056 (var2838) var1949)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2838 var2838)
(declare-const null-var2468 var2468)
(declare-const null-var1949 var1949)
(declare-const var170 var2838) ; Statement: r0 := @this: org.apache.log4j.PatternLayout 
(assert (not (= var170 null-var2838)))
(declare-const var1427 var2468) ; Statement: r5 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var1427 null-var2468)))
(define-const var57 String (sbuf/-2071271056 var170)) ; Statement: $r1 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var1511 Int (capacity/792304043 var57)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuffer: int capacity()>() 
 ; Statement: if $i0 <= 1024 goto $r2 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> 
(assert (<= var1511 1024)) ; Cond: $i0 <= 1024 
(define-const var2741 String (sbuf/-2071271056 var170)) ; Statement: $r2 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (setLength/163251007 var2741 0)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2741!1 String)
(declare-const var2761 Int)
(assert true) ; Non Conditional
(define-const var3982 var1949 (head/-2071271056 var170)) ; Statement: r8 = r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternConverter head> 
(assert true) ; Non Conditional
 ; Statement: if r8 == null goto $r3 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> 
(assert (= var3982 null-var1949)) ; Cond: r8 == null 
(define-const var3437 String (sbuf/-2071271056 var170)) ; Statement: $r3 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var2980 String (toString/-222306083 var3437)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {sbuf/-2071271056=([org.apache.log4j.PatternLayout], java.lang.StringBuffer), capacity/792304043=([java.lang.StringBuffer], int), setLength/163251007=([java.lang.StringBuffer, int], void), head/-2071271056=([org.apache.log4j.PatternLayout], org.apache.log4j.helpers.PatternConverter), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2838=org.apache.log4j.PatternLayout, var170=r0, var2468=org.apache.log4j.spi.LoggingEvent, var1427=r5, var57=$r1, var1511=$i0, var2741=$r2, var2761=0, var1949=org.apache.log4j.helpers.PatternConverter, var3982=r8, var3437=$r3, var2980=$r4}
; {org.apache.log4j.PatternLayout=var2838, r0=var170, org.apache.log4j.spi.LoggingEvent=var2468, r5=var1427, $r1=var57, $i0=var1511, $r2=var2741, 0=var2761, org.apache.log4j.helpers.PatternConverter=var1949, r8=var3982, $r3=var3437, $r4=var2980}
;seq <java.lang.StringBuffer: int capacity()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: int capacity()>": 1,"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.PatternLayout;	r5 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$r1 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf>;	$i0 = virtualinvoke $r1.<java.lang.StringBuffer: int capacity()>();	if $i0 <= 1024 goto $r2 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf>;	$r2 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r2.<java.lang.StringBuffer: void setLength(int)>(0);	r8 = r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternConverter head>;	if r8 == null goto $r3 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf>;	$r3 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 5