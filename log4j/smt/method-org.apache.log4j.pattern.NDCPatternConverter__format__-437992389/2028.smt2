(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1076 0)
(declare-sort var2417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNDC/-1049485476 (var2417) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1076 var1076)
(declare-const null-var2417 var2417)
(declare-const null-String String)
(declare-const var3977 var1076) ; Statement: r3 := @this: org.apache.log4j.pattern.NDCPatternConverter 
(assert (not (= var3977 null-var1076)))
(declare-const var3097 var2417) ; Statement: r1 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var3097 null-var2417)))
(declare-const var243 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var243 null-String)))
(assert true)
(define-const var2865 String (getNDC/-1049485476 var3097)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: java.lang.String getNDC()>() 
(assert true)
;(assert (append/1560614132 var243 var2865)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var243!1 String)
(assert (str.prefixof var243 var243!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getNDC/-1049485476=([org.apache.log4j.spi.LoggingEvent], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var1076=org.apache.log4j.pattern.NDCPatternConverter, var3977=r3, var2417=org.apache.log4j.spi.LoggingEvent, var3097=r1, var243=r0, var2865=$r2}
; {org.apache.log4j.pattern.NDCPatternConverter=var1076, r3=var3977, org.apache.log4j.spi.LoggingEvent=var2417, r1=var3097, r0=var243, $r2=var2865}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.log4j.pattern.NDCPatternConverter;	r1 := @parameter0: org.apache.log4j.spi.LoggingEvent;	r0 := @parameter1: java.lang.StringBuffer;	$r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: java.lang.String getNDC()>();	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	return
;block_num 1