(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1890 0)
(declare-sort var3926 0)
(declare-sort var2474 0)
(declare-sort var2460 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun key/458878388 (var1890) String)
(declare-fun getMDC/1581378960 (var3926 String) var2460)
(declare-fun toString/-522406933 (var2460) String)
(declare-const null-var1890 var1890)
(declare-const null-var3926 var3926)
(declare-const null-String String)
(declare-const null-var2460 var2460)
(declare-const var2479 var1890) ; Statement: r0 := @this: org.apache.log4j.helpers.PatternParser$MDCPatternConverter 
(assert (not (= var2479 null-var1890)))
(declare-const var3289 var3926) ; Statement: r2 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var3289 null-var3926)))
(define-const var2500 String (key/458878388 var2479)) ; Statement: $r1 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key> 
(assert (not (= var2500 null-String))) ; Cond: $r1 != null 
(define-const var1066 String (key/458878388 var2479)) ; Statement: $r3 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key> 
(assert true)
(define-const var3991 var2460 (getMDC/1581378960 var3289 var1066)) ; Statement: r13 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: java.lang.Object getMDC(java.lang.String)>($r3) 
 ; Statement: if r13 != null goto $r4 = virtualinvoke r13.<java.lang.Object: java.lang.String toString()>() 
(assert (not (= var3991 null-var2460))) ; Cond: r13 != null 
(assert true)
(define-const var196 String (toString/-522406933 var3991)) ; Statement: $r4 = virtualinvoke r13.<java.lang.Object: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {key/458878388=([org.apache.log4j.helpers.PatternParser$MDCPatternConverter], java.lang.String), getMDC/1581378960=([org.apache.log4j.spi.LoggingEvent, java.lang.String], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String)}
; {var1890=org.apache.log4j.helpers.PatternParser$MDCPatternConverter, var2479=r0, var3926=org.apache.log4j.spi.LoggingEvent, var3289=r2, var2500=$r1, var2474=null_type, var1066=$r3, var2460=java.lang.Object, var3991=r13, var196=$r4}
; {org.apache.log4j.helpers.PatternParser$MDCPatternConverter=var1890, r0=var2479, org.apache.log4j.spi.LoggingEvent=var3926, r2=var3289, $r1=var2500, null_type=var2474, $r3=var1066, java.lang.Object=var2460, r13=var3991, $r4=var196}
;seq <java.lang.Object: java.lang.String toString()>
;cnt {}
;stmts r0 := @this: org.apache.log4j.helpers.PatternParser$MDCPatternConverter;	r2 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$r1 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key>;	if $r1 != null goto $r3 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key>;	$r3 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key>;	r13 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: java.lang.Object getMDC(java.lang.String)>($r3);	if r13 != null goto $r4 = virtualinvoke r13.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke r13.<java.lang.Object: java.lang.String toString()>();	return $r4
;block_num 3