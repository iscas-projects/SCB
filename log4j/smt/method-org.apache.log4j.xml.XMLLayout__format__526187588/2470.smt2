(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3897 0)
(declare-sort var1017 0)
(declare-sort var2130 0)
(declare-sort var3508 0)
(declare-sort var2768 0)
(declare-sort var3343 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/545532832 (var3897) String)
(declare-fun capacity/792304043 (String) Int)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLoggerName/-749232330 (var1017) String)
(declare-fun var2130_escapeTags/-1417155512 (String) String)
(declare-fun timeStamp/-1362166489 (var1017) Int)
(declare-fun append/1447793227 (String Int) String)
(declare-fun getLevel/-1962581926 (var1017) var3508)
(declare-fun String_valueOf/-333372740 (var2768) String)
(declare-fun cast-from-var3508-to-var2768 (var3508) var2768)
(declare-fun getThreadName/-1888294532 (var1017) String)
(declare-fun getRenderedMessage/-847539433 (var1017) String)
(declare-fun var2130_appendEscapingCDATA/1565159389 (String String) void)
(declare-fun getNDC/-1049485476 (var1017) String)
(declare-fun getThrowableStrRep/1512398015 (var1017) (Array Int String))
(declare-fun locationInfo/545532832 (var3897) Bool)
(declare-fun properties/545532832 (var3897) Bool)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3897 var3897)
(declare-const null-var1017 var1017)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3747 var3897) ; Statement: r0 := @this: org.apache.log4j.xml.XMLLayout 
(assert (not (= var3747 null-var3897)))
(declare-const var1351 var1017) ; Statement: r4 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var1351 null-var1017)))
(define-const var3885 String (buf/545532832 var3747)) ; Statement: $r1 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var1778 Int (capacity/792304043 var3885)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuffer: int capacity()>() 
 ; Statement: if $i0 <= 2048 goto $r2 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert (<= var1778 2048)) ; Cond: $i0 <= 2048 
(define-const var1665 String (buf/545532832 var3747)) ; Statement: $r2 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1665 0)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1665!1 String)
(declare-const var2147 Int)
(assert true) ; Non Conditional
(define-const var2061 String (buf/545532832 var3747)) ; Statement: $r3 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2061 "<log4j:event logger=\u0022")) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<log4j:event logger=\"") 
(declare-const var2061!1 String)
(assert (str.prefixof var2061 var2061!1))
(define-const var2281 String (buf/545532832 var3747)) ; Statement: $r5 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var2104 String (getLoggerName/-749232330 var1351)) ; Statement: $r6 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getLoggerName()>() 
(define-const var994 String (var2130_escapeTags/-1417155512 var2104)) ; Statement: $r7 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r6) 
(assert true)
;(assert (append/1560614132 var2281 var994)) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var2281!1 String)
(assert (str.prefixof var2281 var2281!1))
(define-const var2315 String (buf/545532832 var3747)) ; Statement: $r8 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2315 "\u0022 timestamp=\u0022")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" timestamp=\"") 
(declare-const var2315!1 String)
(assert (str.prefixof var2315 var2315!1))
(define-const var1403 String (buf/545532832 var3747)) ; Statement: $r9 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(define-const var2749 Int (timeStamp/-1362166489 var1351)) ; Statement: $l1 = r4.<org.apache.log4j.spi.LoggingEvent: long timeStamp> 
(assert true)
;(assert (append/1447793227 var1403 var2749)) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>($l1) 

(declare-const var1403!1 String)
(declare-const var2749!1 Int)
(define-const var1253 String (buf/545532832 var3747)) ; Statement: $r10 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1253 "\u0022 level=\u0022")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" level=\"") 
(declare-const var1253!1 String)
(assert (str.prefixof var1253 var1253!1))
(define-const var2492 String (buf/545532832 var3747)) ; Statement: $r11 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var1379 var3508 (getLevel/-1962581926 var1351)) ; Statement: $r12 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>() 
(define-const var2811 String (String_valueOf/-333372740 (cast-from-var3508-to-var2768 var1379))) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r12) 
(define-const var1917 String (var2130_escapeTags/-1417155512 var2811)) ; Statement: $r14 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r13) 
(assert true)
;(assert (append/1560614132 var2492 var1917)) ; Statement: virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14) 
(declare-const var2492!1 String)
(assert (str.prefixof var2492 var2492!1))
(define-const var2307 String (buf/545532832 var3747)) ; Statement: $r15 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2307 "\u0022 thread=\u0022")) ; Statement: virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" thread=\"") 
(declare-const var2307!1 String)
(assert (str.prefixof var2307 var2307!1))
(define-const var1820 String (buf/545532832 var3747)) ; Statement: $r16 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var3460 String (getThreadName/-1888294532 var1351)) ; Statement: $r17 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getThreadName()>() 
(define-const var3658 String (var2130_escapeTags/-1417155512 var3460)) ; Statement: $r18 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r17) 
(assert true)
;(assert (append/1560614132 var1820 var3658)) ; Statement: virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18) 
(declare-const var1820!1 String)
(assert (str.prefixof var1820 var1820!1))
(define-const var3699 String (buf/545532832 var3747)) ; Statement: $r19 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3699 "\u0022>\r\n")) ; Statement: virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\">\r\n") 
(declare-const var3699!1 String)
(assert (str.prefixof var3699 var3699!1))
(define-const var3106 String (buf/545532832 var3747)) ; Statement: $r20 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3106 "<log4j:message><![CDATA[")) ; Statement: virtualinvoke $r20.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<log4j:message><![CDATA[") 
(declare-const var3106!1 String)
(assert (str.prefixof var3106 var3106!1))
(define-const var3533 String (buf/545532832 var3747)) ; Statement: $r21 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var3890 String (getRenderedMessage/-847539433 var1351)) ; Statement: $r22 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getRenderedMessage()>() 
;(assert (var2130_appendEscapingCDATA/1565159389 var3533 var3890)) ; Statement: staticinvoke <org.apache.log4j.helpers.Transform: void appendEscapingCDATA(java.lang.StringBuffer,java.lang.String)>($r21, $r22) 

(declare-const var3533!1 String)
(declare-const var3890!1 String)
(define-const var1565 String (buf/545532832 var3747)) ; Statement: $r23 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1565 "]]></log4j:message>\r\n")) ; Statement: virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]]></log4j:message>\r\n") 
(declare-const var1565!1 String)
(assert (str.prefixof var1565 var1565!1))
(assert true)
(define-const var3510 String (getNDC/-1049485476 var1351)) ; Statement: $r64 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getNDC()>() 
 ; Statement: if $r64 == null goto $r62 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>() 
(assert (= var3510 null-String)) ; Cond: $r64 == null 
(assert true)
(define-const var2732 (Array Int String) (getThrowableStrRep/1512398015 var1351)) ; Statement: $r62 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>() 
 ; Statement: if $r62 == null goto $z0 = r0.<org.apache.log4j.xml.XMLLayout: boolean locationInfo> 
(assert (= var2732 null-__Array__Int__String__)) ; Cond: $r62 == null 
(define-const var2731 Bool (locationInfo/545532832 var3747)) ; Statement: $z0 = r0.<org.apache.log4j.xml.XMLLayout: boolean locationInfo> 
 ; Statement: if $z0 == 0 goto $z1 = r0.<org.apache.log4j.xml.XMLLayout: boolean properties> 
(assert (= (ite var2731 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3454 Bool (properties/545532832 var3747)) ; Statement: $z1 = r0.<org.apache.log4j.xml.XMLLayout: boolean properties> 
 ; Statement: if $z1 == 0 goto $r67 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert (= (ite var3454 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3726 String (buf/545532832 var3747)) ; Statement: $r67 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3726 "</log4j:event>\r\n\r\n")) ; Statement: virtualinvoke $r67.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</log4j:event>\r\n\r\n") 
(declare-const var3726!1 String)
(assert (str.prefixof var3726 var3726!1))
(define-const var966 String (buf/545532832 var3747)) ; Statement: $r68 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var1402 String (toString/-222306083 var966)) ; Statement: $r69 = virtualinvoke $r68.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r69 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/545532832=([org.apache.log4j.xml.XMLLayout], java.lang.StringBuffer), capacity/792304043=([java.lang.StringBuffer], int), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLoggerName/-749232330=([org.apache.log4j.spi.LoggingEvent], java.lang.String), var2130_escapeTags/-1417155512=([java.lang.String], java.lang.String), timeStamp/-1362166489=([org.apache.log4j.spi.LoggingEvent], long), append/1447793227=([java.lang.StringBuffer, long], java.lang.StringBuffer), getLevel/-1962581926=([org.apache.log4j.spi.LoggingEvent], org.apache.log4j.Level), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-var3508-to-var2768=([org.apache.log4j.Level], java.lang.Object), getThreadName/-1888294532=([org.apache.log4j.spi.LoggingEvent], java.lang.String), getRenderedMessage/-847539433=([org.apache.log4j.spi.LoggingEvent], java.lang.String), var2130_appendEscapingCDATA/1565159389=([java.lang.StringBuffer, java.lang.String], void), getNDC/-1049485476=([org.apache.log4j.spi.LoggingEvent], java.lang.String), getThrowableStrRep/1512398015=([org.apache.log4j.spi.LoggingEvent], java.lang.String[]), locationInfo/545532832=([org.apache.log4j.xml.XMLLayout], boolean), properties/545532832=([org.apache.log4j.xml.XMLLayout], boolean), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3897=org.apache.log4j.xml.XMLLayout, var3747=r0, var1017=org.apache.log4j.spi.LoggingEvent, var1351=r4, var3885=$r1, var1778=$i0, var1665=$r2, var2147=0, var2061=$r3, var2281=$r5, var2104=$r6, var2130=org.apache.log4j.helpers.Transform, var994=$r7, var2315=$r8, var1403=$r9, var2749=$l1, var1253=$r10, var2492=$r11, var3508=org.apache.log4j.Level, var1379=$r12, var2768=java.lang.Object, var2811=$r13, var1917=$r14, var2307=$r15, var1820=$r16, var3460=$r17, var3658=$r18, var3699=$r19, var3106=$r20, var3533=$r21, var3890=$r22, var1565=$r23, var3510=$r64, var3343=null_type, var2732=$r62, var2731=$z0, var3454=$z1, var3726=$r67, var966=$r68, var1402=$r69}
; {org.apache.log4j.xml.XMLLayout=var3897, r0=var3747, org.apache.log4j.spi.LoggingEvent=var1017, r4=var1351, $r1=var3885, $i0=var1778, $r2=var1665, 0=var2147, $r3=var2061, $r5=var2281, $r6=var2104, org.apache.log4j.helpers.Transform=var2130, $r7=var994, $r8=var2315, $r9=var1403, $l1=var2749, $r10=var1253, $r11=var2492, org.apache.log4j.Level=var3508, $r12=var1379, java.lang.Object=var2768, $r13=var2811, $r14=var1917, $r15=var2307, $r16=var1820, $r17=var3460, $r18=var3658, $r19=var3699, $r20=var3106, $r21=var3533, $r22=var3890, $r23=var1565, $r64=var3510, null_type=var3343, $r62=var2732, $z0=var2731, $z1=var3454, $r67=var3726, $r68=var966, $r69=var1402}
;seq <java.lang.StringBuffer: int capacity()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(long)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: int capacity()>": 1,"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 11,"<java.lang.StringBuffer: java.lang.StringBuffer append(long)>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.XMLLayout;	r4 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$r1 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$i0 = virtualinvoke $r1.<java.lang.StringBuffer: int capacity()>();	if $i0 <= 2048 goto $r2 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$r2 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r2.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<log4j:event logger=\"");	$r5 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$r6 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getLoggerName()>();	$r7 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r6);	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r8 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" timestamp=\"");	$r9 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$l1 = r4.<org.apache.log4j.spi.LoggingEvent: long timeStamp>;	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>($l1);	$r10 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" level=\"");	$r11 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$r12 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>();	$r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r12);	$r14 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r13);	virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14);	$r15 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" thread=\"");	$r16 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$r17 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getThreadName()>();	$r18 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r17);	virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18);	$r19 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\">\r\n");	$r20 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r20.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<log4j:message><![CDATA[");	$r21 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$r22 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getRenderedMessage()>();	staticinvoke <org.apache.log4j.helpers.Transform: void appendEscapingCDATA(java.lang.StringBuffer,java.lang.String)>($r21, $r22);	$r23 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]]></log4j:message>\r\n");	$r64 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getNDC()>();	if $r64 == null goto $r62 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>();	$r62 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>();	if $r62 == null goto $z0 = r0.<org.apache.log4j.xml.XMLLayout: boolean locationInfo>;	$z0 = r0.<org.apache.log4j.xml.XMLLayout: boolean locationInfo>;	if $z0 == 0 goto $z1 = r0.<org.apache.log4j.xml.XMLLayout: boolean properties>;	$z1 = r0.<org.apache.log4j.xml.XMLLayout: boolean properties>;	if $z1 == 0 goto $r67 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$r67 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r67.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</log4j:event>\r\n\r\n");	$r68 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$r69 = virtualinvoke $r68.<java.lang.StringBuffer: java.lang.String toString()>();	return $r69
;block_num 7