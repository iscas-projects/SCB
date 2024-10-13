(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3180 0)
(declare-sort var238 0)
(declare-sort var2281 0)
(declare-sort var1045 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var238_getMarkers/1636966334 (var238) var1045)
(declare-fun var238_getKeyValuePairs/971535184 (var238) var1045)
(declare-const null-var3180 var3180)
(declare-const null-var238 var238)
(declare-const null-String String)
(declare-const null-var1045 var1045)
(declare-const var971 var3180) ; Statement: r14 := @this: org.slf4j.spi.DefaultLoggingEventBuilder 
(assert (not (= var971 null-var3180)))
(declare-const var3613 var238) ; Statement: r0 := @parameter0: org.slf4j.event.LoggingEvent 
(assert (not (= var3613 null-var238)))
(declare-const var3513 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3513 null-String)))
(define-const var1602 String null-String) ; Statement: r15 = null 
(define-const var261 var1045 (var238_getMarkers/1636966334 var3613)) ; Statement: $r1 = interfaceinvoke r0.<org.slf4j.event.LoggingEvent: java.util.List getMarkers()>() 
 ; Statement: if $r1 == null goto $r2 = interfaceinvoke r0.<org.slf4j.event.LoggingEvent: java.util.List getKeyValuePairs()>() 
(assert (= var261 null-var1045)) ; Cond: $r1 == null 
(define-const var3919 var1045 (var238_getKeyValuePairs/971535184 var3613)) ; Statement: $r2 = interfaceinvoke r0.<org.slf4j.event.LoggingEvent: java.util.List getKeyValuePairs()>() 
 ; Statement: if $r2 == null goto (branch) 
(assert (= var3919 null-var1045)) ; Cond: $r2 == null 
 ; Statement: if r15 == null goto return r3 
(assert (= var1602 null-String)) ; Cond: r15 == null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var238_getMarkers/1636966334=([org.slf4j.event.LoggingEvent], java.util.List), var238_getKeyValuePairs/971535184=([org.slf4j.event.LoggingEvent], java.util.List)}
; {var3180=org.slf4j.spi.DefaultLoggingEventBuilder, var971=r14, var238=org.slf4j.event.LoggingEvent, var3613=r0, var3513=r3, var2281=null_type, var1602=r15, var1045=java.util.List, var261=$r1, var3919=$r2}
; {org.slf4j.spi.DefaultLoggingEventBuilder=var3180, r14=var971, org.slf4j.event.LoggingEvent=var238, r0=var3613, r3=var3513, null_type=var2281, r15=var1602, java.util.List=var1045, $r1=var261, $r2=var3919}
;seq 
;cnt {}
;stmts r14 := @this: org.slf4j.spi.DefaultLoggingEventBuilder;	r0 := @parameter0: org.slf4j.event.LoggingEvent;	r3 := @parameter1: java.lang.String;	r15 = null;	$r1 = interfaceinvoke r0.<org.slf4j.event.LoggingEvent: java.util.List getMarkers()>();	if $r1 == null goto $r2 = interfaceinvoke r0.<org.slf4j.event.LoggingEvent: java.util.List getKeyValuePairs()>();	$r2 = interfaceinvoke r0.<org.slf4j.event.LoggingEvent: java.util.List getKeyValuePairs()>();	if $r2 == null goto (branch);	if r15 == null goto return r3;	return r3
;block_num 4