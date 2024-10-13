(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2213 0)
(declare-sort var1913 0)
(declare-sort var3290 0)
(declare-sort var791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1913_getMarkers/1636966334 (var1913) var791)
(declare-fun var1913_getKeyValuePairs/971535184 (var1913) var791)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2213 var2213)
(declare-const null-var1913 var1913)
(declare-const null-String String)
(declare-const null-var791 var791)
(declare-const var1293 var2213) ; Statement: r14 := @this: org.slf4j.spi.DefaultLoggingEventBuilder 
(assert (not (= var1293 null-var2213)))
(declare-const var2225 var1913) ; Statement: r0 := @parameter0: org.slf4j.event.LoggingEvent 
(assert (not (= var2225 null-var1913)))
(declare-const var366 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var366 null-String)))
(define-const var1138 String null-String) ; Statement: r15 = null 
(define-const var1005 var791 (var1913_getMarkers/1636966334 var2225)) ; Statement: $r1 = interfaceinvoke r0.<org.slf4j.event.LoggingEvent: java.util.List getMarkers()>() 
 ; Statement: if $r1 == null goto $r2 = interfaceinvoke r0.<org.slf4j.event.LoggingEvent: java.util.List getKeyValuePairs()>() 
(assert (= var1005 null-var791)) ; Cond: $r1 == null 
(define-const var2040 var791 (var1913_getKeyValuePairs/971535184 var2225)) ; Statement: $r2 = interfaceinvoke r0.<org.slf4j.event.LoggingEvent: java.util.List getKeyValuePairs()>() 
 ; Statement: if $r2 == null goto (branch) 
(assert (= var2040 null-var791)) ; Cond: $r2 == null 
 ; Statement: if r15 == null goto return r3 
(assert (not (= var1138 null-String))) ; Negate: Cond: r15 == null  
(assert true)
;(assert (append/672562846 var1138 var366)) ; Statement: virtualinvoke r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1138!1 String)
(assert (= var1138!1 (str.++ var1138 var366)))
(assert true)
(define-const var771 String (toString/-2075883882 var1138!1)) ; Statement: $r4 = virtualinvoke r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1913_getMarkers/1636966334=([org.slf4j.event.LoggingEvent], java.util.List), var1913_getKeyValuePairs/971535184=([org.slf4j.event.LoggingEvent], java.util.List), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2213=org.slf4j.spi.DefaultLoggingEventBuilder, var1293=r14, var1913=org.slf4j.event.LoggingEvent, var2225=r0, var366=r3, var3290=null_type, var1138=r15, var791=java.util.List, var1005=$r1, var2040=$r2, var771=$r4}
; {org.slf4j.spi.DefaultLoggingEventBuilder=var2213, r14=var1293, org.slf4j.event.LoggingEvent=var1913, r0=var2225, r3=var366, null_type=var3290, r15=var1138, java.util.List=var791, $r1=var1005, $r2=var2040, $r4=var771}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r14 := @this: org.slf4j.spi.DefaultLoggingEventBuilder;	r0 := @parameter0: org.slf4j.event.LoggingEvent;	r3 := @parameter1: java.lang.String;	r15 = null;	$r1 = interfaceinvoke r0.<org.slf4j.event.LoggingEvent: java.util.List getMarkers()>();	if $r1 == null goto $r2 = interfaceinvoke r0.<org.slf4j.event.LoggingEvent: java.util.List getKeyValuePairs()>();	$r2 = interfaceinvoke r0.<org.slf4j.event.LoggingEvent: java.util.List getKeyValuePairs()>();	if $r2 == null goto (branch);	if r15 == null goto return r3;	virtualinvoke r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r4 = virtualinvoke r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4