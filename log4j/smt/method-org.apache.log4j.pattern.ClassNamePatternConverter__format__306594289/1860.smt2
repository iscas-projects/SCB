(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2501 0)
(declare-sort var1397 0)
(declare-sort var1995 0)
(declare-sort var95 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-1112840705 (String) Int)
(declare-fun getLocationInformation/-949603046 (var1397) var1995)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun abbreviate/-308023179 (var95 Int String) void)
(declare-fun cast-from-var2501-to-var95 (var2501) var95)
(declare-const null-var2501 var2501)
(declare-const null-var1397 var1397)
(declare-const null-String String)
(declare-const null-var1995 var1995)
(declare-const var3442 var2501) ; Statement: r4 := @this: org.apache.log4j.pattern.ClassNamePatternConverter 
(assert (not (= var3442 null-var2501)))
(declare-const var1252 var1397) ; Statement: r1 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var1252 null-var1397)))
(declare-const var991 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var991 null-String)))
(assert true)
(define-const var766 Int (length/-1112840705 var991)) ; Statement: i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>() 
(assert true)
(define-const var3205 var1995 (getLocationInformation/-949603046 var1252)) ; Statement: r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.spi.LocationInfo getLocationInformation()>() 
 ; Statement: if r2 != null goto $r3 = virtualinvoke r2.<org.apache.log4j.spi.LocationInfo: java.lang.String getClassName()>() 
(assert (not (not (= var3205 null-var1995)))) ; Negate: Cond: r2 != null  
(assert true)
;(assert (append/1560614132 var991 "?")) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("?") 
(declare-const var991!1 String)
(assert (str.prefixof var991 var991!1))
 ; Statement: goto [?= virtualinvoke r4.<org.apache.log4j.pattern.ClassNamePatternConverter: void abbreviate(int,java.lang.StringBuffer)>(i0, r0)] 
(assert true) ; Non Conditional
(assert true)
;(assert (abbreviate/-308023179 (cast-from-var2501-to-var95 var3442) var766 var991!1)) ; Statement: virtualinvoke r4.<org.apache.log4j.pattern.ClassNamePatternConverter: void abbreviate(int,java.lang.StringBuffer)>(i0, r0) 

(declare-const var3442!1 var2501)
(declare-const var766!1 Int)
(declare-const var991!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-1112840705=([java.lang.StringBuffer], int), getLocationInformation/-949603046=([org.apache.log4j.spi.LoggingEvent], org.apache.log4j.spi.LocationInfo), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), abbreviate/-308023179=([org.apache.log4j.pattern.NamePatternConverter, int, java.lang.StringBuffer], void), cast-from-var2501-to-var95=([org.apache.log4j.pattern.ClassNamePatternConverter], org.apache.log4j.pattern.NamePatternConverter)}
; {var2501=org.apache.log4j.pattern.ClassNamePatternConverter, var3442=r4, var1397=org.apache.log4j.spi.LoggingEvent, var1252=r1, var991=r0, var766=i0, var1995=org.apache.log4j.spi.LocationInfo, var3205=r2, var95=org.apache.log4j.pattern.NamePatternConverter}
; {org.apache.log4j.pattern.ClassNamePatternConverter=var2501, r4=var3442, org.apache.log4j.spi.LoggingEvent=var1397, r1=var1252, r0=var991, i0=var766, org.apache.log4j.spi.LocationInfo=var1995, r2=var3205, org.apache.log4j.pattern.NamePatternConverter=var95}
;seq <java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: int length()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r4 := @this: org.apache.log4j.pattern.ClassNamePatternConverter;	r1 := @parameter0: org.apache.log4j.spi.LoggingEvent;	r0 := @parameter1: java.lang.StringBuffer;	i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>();	r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.spi.LocationInfo getLocationInformation()>();	if r2 != null goto $r3 = virtualinvoke r2.<org.apache.log4j.spi.LocationInfo: java.lang.String getClassName()>();	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("?");	goto [?= virtualinvoke r4.<org.apache.log4j.pattern.ClassNamePatternConverter: void abbreviate(int,java.lang.StringBuffer)>(i0, r0)];	virtualinvoke r4.<org.apache.log4j.pattern.ClassNamePatternConverter: void abbreviate(int,java.lang.StringBuffer)>(i0, r0);	return
;block_num 3