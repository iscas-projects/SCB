(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2485 0)
(declare-sort var1189 0)
(declare-sort var1603 0)
(declare-sort var2785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun key/458878388 (var2485) String)
(declare-fun String-init () String)
(declare-fun <init>/2110755883 (String String) void)
(declare-fun getProperties/-814019927 (var1189) var2785)
(declare-fun var2785_size/-1594421051 (var2785) Int)
(declare-fun append/1183289509 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2485 var2485)
(declare-const null-var1189 var1189)
(declare-const null-String String)
(declare-const var2553 var2485) ; Statement: r0 := @this: org.apache.log4j.helpers.PatternParser$MDCPatternConverter 
(assert (not (= var2553 null-var2485)))
(declare-const var3050 var1189) ; Statement: r2 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var3050 null-var1189)))
(define-const var2511 String (key/458878388 var2553)) ; Statement: $r1 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key> 
(assert (not (not (= var2511 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var564 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/2110755883 var564 "{")) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>(java.lang.String)>("{") 

(declare-const var564!1 String)
(declare-const var1446 String)
(assert true)
(define-const var3814 var2785 (getProperties/-814019927 var3050)) ; Statement: r6 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: java.util.Map getProperties()>() 
(define-const var1563 Int (var2785_size/-1594421051 var3814)) ; Statement: $i0 = interfaceinvoke r6.<java.util.Map: int size()>() 
 ; Statement: if $i0 <= 0 goto virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(125) 
(assert (<= var1563 0)) ; Cond: $i0 <= 0 
(assert true)
;(assert (append/1183289509 var564!1 125)) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(125) 

(declare-const var564!2 String)
(declare-const var1101 Int)
(assert true)
(define-const var1444 String (toString/-222306083 var564!2)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {key/458878388=([org.apache.log4j.helpers.PatternParser$MDCPatternConverter], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/2110755883=([java.lang.StringBuffer, java.lang.String], void), getProperties/-814019927=([org.apache.log4j.spi.LoggingEvent], java.util.Map), var2785_size/-1594421051=([java.util.Map], int), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2485=org.apache.log4j.helpers.PatternParser$MDCPatternConverter, var2553=r0, var1189=org.apache.log4j.spi.LoggingEvent, var3050=r2, var2511=$r1, var1603=null_type, var564=$r5, var1446="{", var2785=java.util.Map, var3814=r6, var1563=$i0, var1101=125, var1444=$r7}
; {org.apache.log4j.helpers.PatternParser$MDCPatternConverter=var2485, r0=var2553, org.apache.log4j.spi.LoggingEvent=var1189, r2=var3050, $r1=var2511, null_type=var1603, $r5=var564, "{"=var1446, java.util.Map=var2785, r6=var3814, $i0=var1563, 125=var1101, $r7=var1444}
;seq <java.lang.StringBuffer: void <init>(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.helpers.PatternParser$MDCPatternConverter;	r2 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$r1 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key>;	if $r1 != null goto $r3 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key>;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>(java.lang.String)>("{");	r6 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: java.util.Map getProperties()>();	$i0 = interfaceinvoke r6.<java.util.Map: int size()>();	if $i0 <= 0 goto virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(125);	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(125);	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	return $r7
;block_num 3