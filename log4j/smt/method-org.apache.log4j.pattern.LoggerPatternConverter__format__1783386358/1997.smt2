(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2388 0)
(declare-sort var3571 0)
(declare-sort var3313 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-1112840705 (String) Int)
(declare-fun getLoggerName/-749232330 (var3571) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun abbreviate/-308023179 (var3313 Int String) void)
(declare-fun cast-from-var2388-to-var3313 (var2388) var3313)
(declare-const null-var2388 var2388)
(declare-const null-var3571 var3571)
(declare-const null-String String)
(declare-const var2349 var2388) ; Statement: r3 := @this: org.apache.log4j.pattern.LoggerPatternConverter 
(assert (not (= var2349 null-var2388)))
(declare-const var542 var3571) ; Statement: r1 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var542 null-var3571)))
(declare-const var3390 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var3390 null-String)))
(assert true)
(define-const var1274 Int (length/-1112840705 var3390)) ; Statement: i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>() 
(assert true)
(define-const var1235 String (getLoggerName/-749232330 var542)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: java.lang.String getLoggerName()>() 
(assert true)
;(assert (append/1560614132 var3390 var1235)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3390!1 String)
(assert (str.prefixof var3390 var3390!1))
(assert true)
;(assert (abbreviate/-308023179 (cast-from-var2388-to-var3313 var2349) var1274 var3390!1)) ; Statement: virtualinvoke r3.<org.apache.log4j.pattern.LoggerPatternConverter: void abbreviate(int,java.lang.StringBuffer)>(i0, r0) 

(declare-const var2349!1 var2388)
(declare-const var1274!1 Int)
(declare-const var3390!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-1112840705=([java.lang.StringBuffer], int), getLoggerName/-749232330=([org.apache.log4j.spi.LoggingEvent], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), abbreviate/-308023179=([org.apache.log4j.pattern.NamePatternConverter, int, java.lang.StringBuffer], void), cast-from-var2388-to-var3313=([org.apache.log4j.pattern.LoggerPatternConverter], org.apache.log4j.pattern.NamePatternConverter)}
; {var2388=org.apache.log4j.pattern.LoggerPatternConverter, var2349=r3, var3571=org.apache.log4j.spi.LoggingEvent, var542=r1, var3390=r0, var1274=i0, var1235=$r2, var3313=org.apache.log4j.pattern.NamePatternConverter}
; {org.apache.log4j.pattern.LoggerPatternConverter=var2388, r3=var2349, org.apache.log4j.spi.LoggingEvent=var3571, r1=var542, r0=var3390, i0=var1274, $r2=var1235, org.apache.log4j.pattern.NamePatternConverter=var3313}
;seq <java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: int length()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.log4j.pattern.LoggerPatternConverter;	r1 := @parameter0: org.apache.log4j.spi.LoggingEvent;	r0 := @parameter1: java.lang.StringBuffer;	i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>();	$r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: java.lang.String getLoggerName()>();	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke r3.<org.apache.log4j.pattern.LoggerPatternConverter: void abbreviate(int,java.lang.StringBuffer)>(i0, r0);	return
;block_num 1