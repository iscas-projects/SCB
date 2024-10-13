(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2356 0)
(declare-sort var2476 0)
(declare-sort var2312 0)
(declare-sort var2833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-1112840705 (String) Int)
(declare-fun getLocationInformation/-949603046 (var2476) var2312)
(declare-fun getClassName/1259193710 (var2312) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun abbreviate/-308023179 (var2833 Int String) void)
(declare-fun cast-from-var2356-to-var2833 (var2356) var2833)
(declare-const null-var2356 var2356)
(declare-const null-var2476 var2476)
(declare-const null-String String)
(declare-const null-var2312 var2312)
(declare-const var3380 var2356) ; Statement: r4 := @this: org.apache.log4j.pattern.ClassNamePatternConverter 
(assert (not (= var3380 null-var2356)))
(declare-const var947 var2476) ; Statement: r1 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var947 null-var2476)))
(declare-const var1058 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var1058 null-String)))
(assert true)
(define-const var1084 Int (length/-1112840705 var1058)) ; Statement: i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>() 
(assert true)
(define-const var3965 var2312 (getLocationInformation/-949603046 var947)) ; Statement: r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.spi.LocationInfo getLocationInformation()>() 
 ; Statement: if r2 != null goto $r3 = virtualinvoke r2.<org.apache.log4j.spi.LocationInfo: java.lang.String getClassName()>() 
(assert (not (= var3965 null-var2312))) ; Cond: r2 != null 
(assert true)
(define-const var3100 String (getClassName/1259193710 var3965)) ; Statement: $r3 = virtualinvoke r2.<org.apache.log4j.spi.LocationInfo: java.lang.String getClassName()>() 
(assert true)
;(assert (append/1560614132 var1058 var3100)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var1058!1 String)
(assert (str.prefixof var1058 var1058!1))
(assert true) ; Non Conditional
(assert true)
;(assert (abbreviate/-308023179 (cast-from-var2356-to-var2833 var3380) var1084 var1058!1)) ; Statement: virtualinvoke r4.<org.apache.log4j.pattern.ClassNamePatternConverter: void abbreviate(int,java.lang.StringBuffer)>(i0, r0) 

(declare-const var3380!1 var2356)
(declare-const var1084!1 Int)
(declare-const var1058!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-1112840705=([java.lang.StringBuffer], int), getLocationInformation/-949603046=([org.apache.log4j.spi.LoggingEvent], org.apache.log4j.spi.LocationInfo), getClassName/1259193710=([org.apache.log4j.spi.LocationInfo], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), abbreviate/-308023179=([org.apache.log4j.pattern.NamePatternConverter, int, java.lang.StringBuffer], void), cast-from-var2356-to-var2833=([org.apache.log4j.pattern.ClassNamePatternConverter], org.apache.log4j.pattern.NamePatternConverter)}
; {var2356=org.apache.log4j.pattern.ClassNamePatternConverter, var3380=r4, var2476=org.apache.log4j.spi.LoggingEvent, var947=r1, var1058=r0, var1084=i0, var2312=org.apache.log4j.spi.LocationInfo, var3965=r2, var3100=$r3, var2833=org.apache.log4j.pattern.NamePatternConverter}
; {org.apache.log4j.pattern.ClassNamePatternConverter=var2356, r4=var3380, org.apache.log4j.spi.LoggingEvent=var2476, r1=var947, r0=var1058, i0=var1084, org.apache.log4j.spi.LocationInfo=var2312, r2=var3965, $r3=var3100, org.apache.log4j.pattern.NamePatternConverter=var2833}
;seq <java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: int length()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r4 := @this: org.apache.log4j.pattern.ClassNamePatternConverter;	r1 := @parameter0: org.apache.log4j.spi.LoggingEvent;	r0 := @parameter1: java.lang.StringBuffer;	i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>();	r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.spi.LocationInfo getLocationInformation()>();	if r2 != null goto $r3 = virtualinvoke r2.<org.apache.log4j.spi.LocationInfo: java.lang.String getClassName()>();	$r3 = virtualinvoke r2.<org.apache.log4j.spi.LocationInfo: java.lang.String getClassName()>();	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	virtualinvoke r4.<org.apache.log4j.pattern.ClassNamePatternConverter: void abbreviate(int,java.lang.StringBuffer)>(i0, r0);	return
;block_num 3