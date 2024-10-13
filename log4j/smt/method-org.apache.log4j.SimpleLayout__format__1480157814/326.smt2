(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3282 0)
(declare-sort var1963 0)
(declare-sort var192 0)
(declare-sort var1170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sbuf/1879170598 (var3282) String)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun getLevel/-1962581926 (var1963) var192)
(declare-fun toString/2069587822 (var1170) String)
(declare-fun cast-from-var192-to-var1170 (var192) var1170)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRenderedMessage/-847539433 (var1963) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3282 var3282)
(declare-const null-var1963 var1963)
(declare-const var3282-LINE_SEP String)
(declare-const var3426 var3282) ; Statement: r0 := @this: org.apache.log4j.SimpleLayout 
(assert (not (= var3426 null-var3282)))
(declare-const var1480 var1963) ; Statement: r2 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var1480 null-var1963)))
(define-const var2946 String (sbuf/1879170598 var3426)) ; Statement: $r1 = r0.<org.apache.log4j.SimpleLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (setLength/163251007 var2946 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2946!1 String)
(declare-const var1041 Int)
(define-const var675 String (sbuf/1879170598 var3426)) ; Statement: $r3 = r0.<org.apache.log4j.SimpleLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var543 var192 (getLevel/-1962581926 var1480)) ; Statement: $r4 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>() 
(assert true)
(define-const var120 String (toString/2069587822 (cast-from-var192-to-var1170 var543))) ; Statement: $r5 = virtualinvoke $r4.<org.apache.log4j.Level: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var675 var120)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var675!1 String)
(assert (str.prefixof var675 var675!1))
(define-const var2348 String (sbuf/1879170598 var3426)) ; Statement: $r6 = r0.<org.apache.log4j.SimpleLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var2348 " - ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" - ") 
(declare-const var2348!1 String)
(assert (str.prefixof var2348 var2348!1))
(define-const var3620 String (sbuf/1879170598 var3426)) ; Statement: $r7 = r0.<org.apache.log4j.SimpleLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var1598 String (getRenderedMessage/-847539433 var1480)) ; Statement: $r8 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: java.lang.String getRenderedMessage()>() 
(assert true)
;(assert (append/1560614132 var3620 var1598)) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8) 
(declare-const var3620!1 String)
(assert (str.prefixof var3620 var3620!1))
(define-const var345 String (sbuf/1879170598 var3426)) ; Statement: $r10 = r0.<org.apache.log4j.SimpleLayout: java.lang.StringBuffer sbuf> 
(define-const var304 String var3282-LINE_SEP) ; Statement: $r9 = <org.apache.log4j.SimpleLayout: java.lang.String LINE_SEP> 
(assert true)
;(assert (append/1560614132 var345 var304)) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9) 
(declare-const var345!1 String)
(assert (str.prefixof var345 var345!1))
(define-const var2870 String (sbuf/1879170598 var3426)) ; Statement: $r11 = r0.<org.apache.log4j.SimpleLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var2686 String (toString/-222306083 var2870)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {sbuf/1879170598=([org.apache.log4j.SimpleLayout], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), getLevel/-1962581926=([org.apache.log4j.spi.LoggingEvent], org.apache.log4j.Level), toString/2069587822=([org.apache.log4j.Priority], java.lang.String), cast-from-var192-to-var1170=([org.apache.log4j.Level], org.apache.log4j.Priority), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getRenderedMessage/-847539433=([org.apache.log4j.spi.LoggingEvent], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3282=org.apache.log4j.SimpleLayout, var3426=r0, var1963=org.apache.log4j.spi.LoggingEvent, var1480=r2, var2946=$r1, var1041=0, var675=$r3, var192=org.apache.log4j.Level, var543=$r4, var1170=org.apache.log4j.Priority, var120=$r5, var2348=$r6, var3620=$r7, var1598=$r8, var345=$r10, var304=$r9, var2870=$r11, var2686=$r12}
; {org.apache.log4j.SimpleLayout=var3282, r0=var3426, org.apache.log4j.spi.LoggingEvent=var1963, r2=var1480, $r1=var2946, 0=var1041, $r3=var675, org.apache.log4j.Level=var192, $r4=var543, org.apache.log4j.Priority=var1170, $r5=var120, $r6=var2348, $r7=var3620, $r8=var1598, $r10=var345, $r9=var304, $r11=var2870, $r12=var2686}
;seq <java.lang.StringBuffer: void setLength(int)>;	<org.apache.log4j.Priority: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.SimpleLayout;	r2 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$r1 = r0.<org.apache.log4j.SimpleLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<org.apache.log4j.SimpleLayout: java.lang.StringBuffer sbuf>;	$r4 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>();	$r5 = virtualinvoke $r4.<org.apache.log4j.Level: java.lang.String toString()>();	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r6 = r0.<org.apache.log4j.SimpleLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" - ");	$r7 = r0.<org.apache.log4j.SimpleLayout: java.lang.StringBuffer sbuf>;	$r8 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: java.lang.String getRenderedMessage()>();	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8);	$r10 = r0.<org.apache.log4j.SimpleLayout: java.lang.StringBuffer sbuf>;	$r9 = <org.apache.log4j.SimpleLayout: java.lang.String LINE_SEP>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9);	$r11 = r0.<org.apache.log4j.SimpleLayout: java.lang.StringBuffer sbuf>;	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>();	return $r12
;block_num 1