(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2113 0)
(declare-sort var681 0)
(declare-sort var2778 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun head/1528586138 (var2113) var2778)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2113 var2113)
(declare-const null-var681 var681)
(declare-const null-var2778 var2778)
(declare-const var2971 var2113) ; Statement: r1 := @this: org.apache.log4j.EnhancedPatternLayout 
(assert (not (= var2971 null-var2113)))
(declare-const var3063 var681) ; Statement: r3 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var3063 null-var681)))
(define-const var1673 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1673)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1673!1 String)
(define-const var1712 var2778 (head/1528586138 var2971)) ; Statement: r4 = r1.<org.apache.log4j.EnhancedPatternLayout: org.apache.log4j.helpers.PatternConverter head> 
(assert true) ; Non Conditional
 ; Statement: if r4 == null goto $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (= var1712 null-var2778)) ; Cond: r4 == null 
(assert true)
(define-const var706 String (toString/-222306083 var1673!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), head/1528586138=([org.apache.log4j.EnhancedPatternLayout], org.apache.log4j.helpers.PatternConverter), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2113=org.apache.log4j.EnhancedPatternLayout, var2971=r1, var681=org.apache.log4j.spi.LoggingEvent, var3063=r3, var1673=$r0, var2778=org.apache.log4j.helpers.PatternConverter, var1712=r4, var706=$r2}
; {org.apache.log4j.EnhancedPatternLayout=var2113, r1=var2971, org.apache.log4j.spi.LoggingEvent=var681, r3=var3063, $r0=var1673, org.apache.log4j.helpers.PatternConverter=var2778, r4=var1712, $r2=var706}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.EnhancedPatternLayout;	r3 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	r4 = r1.<org.apache.log4j.EnhancedPatternLayout: org.apache.log4j.helpers.PatternConverter head>;	if r4 == null goto $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 3