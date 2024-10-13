(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var453 0)
(declare-sort var534 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun format/-1299619451 (var453 String var534) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var453 var453)
(declare-const null-var534 var534)
(declare-const var524 var453) ; Statement: r1 := @this: org.apache.log4j.pattern.BridgePatternConverter 
(assert (not (= var524 null-var453)))
(declare-const var3871 var534) ; Statement: r2 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var3871 null-var534)))
(define-const var2098 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2098)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2098!1 String)
(assert true)
;(assert (format/-1299619451 var524 var2098!1 var3871)) ; Statement: virtualinvoke r1.<org.apache.log4j.pattern.BridgePatternConverter: void format(java.lang.StringBuffer,org.apache.log4j.spi.LoggingEvent)>($r0, r2) 

(declare-const var524!1 var453)
(declare-const var2098!2 String)
(declare-const var3871!1 var534)
(assert true)
(define-const var1113 String (toString/-222306083 var2098!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), format/-1299619451=([org.apache.log4j.pattern.BridgePatternConverter, java.lang.StringBuffer, org.apache.log4j.spi.LoggingEvent], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var453=org.apache.log4j.pattern.BridgePatternConverter, var524=r1, var534=org.apache.log4j.spi.LoggingEvent, var3871=r2, var2098=$r0, var1113=$r3}
; {org.apache.log4j.pattern.BridgePatternConverter=var453, r1=var524, org.apache.log4j.spi.LoggingEvent=var534, r2=var3871, $r0=var2098, $r3=var1113}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.pattern.BridgePatternConverter;	r2 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	virtualinvoke r1.<org.apache.log4j.pattern.BridgePatternConverter: void format(java.lang.StringBuffer,org.apache.log4j.spi.LoggingEvent)>($r0, r2);	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r3
;block_num 1