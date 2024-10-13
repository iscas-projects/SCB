(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3311 0)
(declare-sort var918 0)
(declare-sort var854 0)
(declare-sort var1461 0)
(declare-sort var1834 0)
(declare-sort var1567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/545532832 (var3311) String)
(declare-fun capacity/792304043 (String) Int)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLoggerName/-749232330 (var918) String)
(declare-fun var854_escapeTags/-1417155512 (String) String)
(declare-fun timeStamp/-1362166489 (var918) Int)
(declare-fun append/1447793227 (String Int) String)
(declare-fun getLevel/-1962581926 (var918) var1461)
(declare-fun String_valueOf/-333372740 (var1834) String)
(declare-fun cast-from-var1461-to-var1834 (var1461) var1834)
(declare-fun getThreadName/-1888294532 (var918) String)
(declare-fun getRenderedMessage/-847539433 (var918) String)
(declare-fun var854_appendEscapingCDATA/1565159389 (String String) void)
(declare-fun getNDC/-1049485476 (var918) String)
(declare-fun getThrowableStrRep/1512398015 (var918) (Array Int String))
(declare-fun locationInfo/545532832 (var3311) Bool)
(declare-fun properties/545532832 (var3311) Bool)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3311 var3311)
(declare-const null-var918 var918)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2609 var3311) ; Statement: r0 := @this: org.apache.log4j.xml.XMLLayout 
(assert (not (= var2609 null-var3311)))
(declare-const var2745 var918) ; Statement: r4 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var2745 null-var918)))
(define-const var3964 String (buf/545532832 var2609)) ; Statement: $r1 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var3725 Int (capacity/792304043 var3964)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuffer: int capacity()>() 
 ; Statement: if $i0 <= 2048 goto $r2 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert (not (<= var3725 2048))) ; Negate: Cond: $i0 <= 2048  
(define-const var681 String String-init) ; Statement: $r63 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var681 256)) ; Statement: specialinvoke $r63.<java.lang.StringBuffer: void <init>(int)>(256) 

(declare-const var681!1 String)
(declare-const var3468 Int)
(declare-const var2609!1 var3311)
(assert (not (= var2609!1 null-var3311)))
(assert (= (buf/545532832 var2609!1) var681!1)) ; Statement: r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> = $r63 
 ; Statement: goto [?= $r3 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>] 
(assert true) ; Non Conditional
(define-const var1579 String (buf/545532832 var2609!1)) ; Statement: $r3 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1579 "<log4j:event logger=\u0022")) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<log4j:event logger=\"") 
(declare-const var1579!1 String)
(assert (str.prefixof var1579 var1579!1))
(define-const var3054 String (buf/545532832 var2609!1)) ; Statement: $r5 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var2935 String (getLoggerName/-749232330 var2745)) ; Statement: $r6 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getLoggerName()>() 
(define-const var3870 String (var854_escapeTags/-1417155512 var2935)) ; Statement: $r7 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r6) 
(assert true)
;(assert (append/1560614132 var3054 var3870)) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var3054!1 String)
(assert (str.prefixof var3054 var3054!1))
(define-const var678 String (buf/545532832 var2609!1)) ; Statement: $r8 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var678 "\u0022 timestamp=\u0022")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" timestamp=\"") 
(declare-const var678!1 String)
(assert (str.prefixof var678 var678!1))
(define-const var3918 String (buf/545532832 var2609!1)) ; Statement: $r9 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(define-const var669 Int (timeStamp/-1362166489 var2745)) ; Statement: $l1 = r4.<org.apache.log4j.spi.LoggingEvent: long timeStamp> 
(assert true)
;(assert (append/1447793227 var3918 var669)) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>($l1) 

(declare-const var3918!1 String)
(declare-const var669!1 Int)
(define-const var3524 String (buf/545532832 var2609!1)) ; Statement: $r10 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3524 "\u0022 level=\u0022")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" level=\"") 
(declare-const var3524!1 String)
(assert (str.prefixof var3524 var3524!1))
(define-const var2900 String (buf/545532832 var2609!1)) ; Statement: $r11 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var667 var1461 (getLevel/-1962581926 var2745)) ; Statement: $r12 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>() 
(define-const var3236 String (String_valueOf/-333372740 (cast-from-var1461-to-var1834 var667))) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r12) 
(define-const var2580 String (var854_escapeTags/-1417155512 var3236)) ; Statement: $r14 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r13) 
(assert true)
;(assert (append/1560614132 var2900 var2580)) ; Statement: virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14) 
(declare-const var2900!1 String)
(assert (str.prefixof var2900 var2900!1))
(define-const var1681 String (buf/545532832 var2609!1)) ; Statement: $r15 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1681 "\u0022 thread=\u0022")) ; Statement: virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" thread=\"") 
(declare-const var1681!1 String)
(assert (str.prefixof var1681 var1681!1))
(define-const var2333 String (buf/545532832 var2609!1)) ; Statement: $r16 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var1531 String (getThreadName/-1888294532 var2745)) ; Statement: $r17 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getThreadName()>() 
(define-const var2847 String (var854_escapeTags/-1417155512 var1531)) ; Statement: $r18 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r17) 
(assert true)
;(assert (append/1560614132 var2333 var2847)) ; Statement: virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18) 
(declare-const var2333!1 String)
(assert (str.prefixof var2333 var2333!1))
(define-const var643 String (buf/545532832 var2609!1)) ; Statement: $r19 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var643 "\u0022>\r\n")) ; Statement: virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\">\r\n") 
(declare-const var643!1 String)
(assert (str.prefixof var643 var643!1))
(define-const var3078 String (buf/545532832 var2609!1)) ; Statement: $r20 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3078 "<log4j:message><![CDATA[")) ; Statement: virtualinvoke $r20.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<log4j:message><![CDATA[") 
(declare-const var3078!1 String)
(assert (str.prefixof var3078 var3078!1))
(define-const var2393 String (buf/545532832 var2609!1)) ; Statement: $r21 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var290 String (getRenderedMessage/-847539433 var2745)) ; Statement: $r22 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getRenderedMessage()>() 
;(assert (var854_appendEscapingCDATA/1565159389 var2393 var290)) ; Statement: staticinvoke <org.apache.log4j.helpers.Transform: void appendEscapingCDATA(java.lang.StringBuffer,java.lang.String)>($r21, $r22) 

(declare-const var2393!1 String)
(declare-const var290!1 String)
(define-const var2354 String (buf/545532832 var2609!1)) ; Statement: $r23 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2354 "]]></log4j:message>\r\n")) ; Statement: virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]]></log4j:message>\r\n") 
(declare-const var2354!1 String)
(assert (str.prefixof var2354 var2354!1))
(assert true)
(define-const var2548 String (getNDC/-1049485476 var2745)) ; Statement: $r64 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getNDC()>() 
 ; Statement: if $r64 == null goto $r62 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>() 
(assert (= var2548 null-String)) ; Cond: $r64 == null 
(assert true)
(define-const var2338 (Array Int String) (getThrowableStrRep/1512398015 var2745)) ; Statement: $r62 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>() 
 ; Statement: if $r62 == null goto $z0 = r0.<org.apache.log4j.xml.XMLLayout: boolean locationInfo> 
(assert (= var2338 null-__Array__Int__String__)) ; Cond: $r62 == null 
(define-const var2635 Bool (locationInfo/545532832 var2609!1)) ; Statement: $z0 = r0.<org.apache.log4j.xml.XMLLayout: boolean locationInfo> 
 ; Statement: if $z0 == 0 goto $z1 = r0.<org.apache.log4j.xml.XMLLayout: boolean properties> 
(assert (= (ite var2635 1 0) 0)) ; Cond: $z0 == 0 
(define-const var878 Bool (properties/545532832 var2609!1)) ; Statement: $z1 = r0.<org.apache.log4j.xml.XMLLayout: boolean properties> 
 ; Statement: if $z1 == 0 goto $r67 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert (= (ite var878 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1125 String (buf/545532832 var2609!1)) ; Statement: $r67 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1125 "</log4j:event>\r\n\r\n")) ; Statement: virtualinvoke $r67.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</log4j:event>\r\n\r\n") 
(declare-const var1125!1 String)
(assert (str.prefixof var1125 var1125!1))
(define-const var1853 String (buf/545532832 var2609!1)) ; Statement: $r68 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var2768 String (toString/-222306083 var1853)) ; Statement: $r69 = virtualinvoke $r68.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r69 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/545532832=([org.apache.log4j.xml.XMLLayout], java.lang.StringBuffer), capacity/792304043=([java.lang.StringBuffer], int), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLoggerName/-749232330=([org.apache.log4j.spi.LoggingEvent], java.lang.String), var854_escapeTags/-1417155512=([java.lang.String], java.lang.String), timeStamp/-1362166489=([org.apache.log4j.spi.LoggingEvent], long), append/1447793227=([java.lang.StringBuffer, long], java.lang.StringBuffer), getLevel/-1962581926=([org.apache.log4j.spi.LoggingEvent], org.apache.log4j.Level), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-var1461-to-var1834=([org.apache.log4j.Level], java.lang.Object), getThreadName/-1888294532=([org.apache.log4j.spi.LoggingEvent], java.lang.String), getRenderedMessage/-847539433=([org.apache.log4j.spi.LoggingEvent], java.lang.String), var854_appendEscapingCDATA/1565159389=([java.lang.StringBuffer, java.lang.String], void), getNDC/-1049485476=([org.apache.log4j.spi.LoggingEvent], java.lang.String), getThrowableStrRep/1512398015=([org.apache.log4j.spi.LoggingEvent], java.lang.String[]), locationInfo/545532832=([org.apache.log4j.xml.XMLLayout], boolean), properties/545532832=([org.apache.log4j.xml.XMLLayout], boolean), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3311=org.apache.log4j.xml.XMLLayout, var2609=r0, var918=org.apache.log4j.spi.LoggingEvent, var2745=r4, var3964=$r1, var3725=$i0, var681=$r63, var3468=256, var1579=$r3, var3054=$r5, var2935=$r6, var854=org.apache.log4j.helpers.Transform, var3870=$r7, var678=$r8, var3918=$r9, var669=$l1, var3524=$r10, var2900=$r11, var1461=org.apache.log4j.Level, var667=$r12, var1834=java.lang.Object, var3236=$r13, var2580=$r14, var1681=$r15, var2333=$r16, var1531=$r17, var2847=$r18, var643=$r19, var3078=$r20, var2393=$r21, var290=$r22, var2354=$r23, var2548=$r64, var1567=null_type, var2338=$r62, var2635=$z0, var878=$z1, var1125=$r67, var1853=$r68, var2768=$r69}
; {org.apache.log4j.xml.XMLLayout=var3311, r0=var2609, org.apache.log4j.spi.LoggingEvent=var918, r4=var2745, $r1=var3964, $i0=var3725, $r63=var681, 256=var3468, $r3=var1579, $r5=var3054, $r6=var2935, org.apache.log4j.helpers.Transform=var854, $r7=var3870, $r8=var678, $r9=var3918, $l1=var669, $r10=var3524, $r11=var2900, org.apache.log4j.Level=var1461, $r12=var667, java.lang.Object=var1834, $r13=var3236, $r14=var2580, $r15=var1681, $r16=var2333, $r17=var1531, $r18=var2847, $r19=var643, $r20=var3078, $r21=var2393, $r22=var290, $r23=var2354, $r64=var2548, null_type=var1567, $r62=var2338, $z0=var2635, $z1=var878, $r67=var1125, $r68=var1853, $r69=var2768}
;seq <java.lang.StringBuffer: int capacity()>;	<java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(long)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: int capacity()>": 1,"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 11,"<java.lang.StringBuffer: java.lang.StringBuffer append(long)>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.XMLLayout;	r4 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$r1 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$i0 = virtualinvoke $r1.<java.lang.StringBuffer: int capacity()>();	if $i0 <= 2048 goto $r2 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$r63 = new java.lang.StringBuffer;	specialinvoke $r63.<java.lang.StringBuffer: void <init>(int)>(256);	r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> = $r63;	goto [?= $r3 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>];	$r3 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<log4j:event logger=\"");	$r5 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$r6 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getLoggerName()>();	$r7 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r6);	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r8 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" timestamp=\"");	$r9 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$l1 = r4.<org.apache.log4j.spi.LoggingEvent: long timeStamp>;	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>($l1);	$r10 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" level=\"");	$r11 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$r12 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>();	$r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r12);	$r14 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r13);	virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14);	$r15 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" thread=\"");	$r16 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$r17 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getThreadName()>();	$r18 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r17);	virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18);	$r19 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\">\r\n");	$r20 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r20.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<log4j:message><![CDATA[");	$r21 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$r22 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getRenderedMessage()>();	staticinvoke <org.apache.log4j.helpers.Transform: void appendEscapingCDATA(java.lang.StringBuffer,java.lang.String)>($r21, $r22);	$r23 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]]></log4j:message>\r\n");	$r64 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String getNDC()>();	if $r64 == null goto $r62 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>();	$r62 = virtualinvoke r4.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>();	if $r62 == null goto $z0 = r0.<org.apache.log4j.xml.XMLLayout: boolean locationInfo>;	$z0 = r0.<org.apache.log4j.xml.XMLLayout: boolean locationInfo>;	if $z0 == 0 goto $z1 = r0.<org.apache.log4j.xml.XMLLayout: boolean properties>;	$z1 = r0.<org.apache.log4j.xml.XMLLayout: boolean properties>;	if $z1 == 0 goto $r67 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$r67 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	virtualinvoke $r67.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</log4j:event>\r\n\r\n");	$r68 = r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf>;	$r69 = virtualinvoke $r68.<java.lang.StringBuffer: java.lang.String toString()>();	return $r69
;block_num 7