(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1829 0)
(declare-sort var996 0)
(declare-sort var1470 0)
(declare-sort var3679 0)
(declare-sort var2351 0)
(declare-sort var2481 0)
(declare-sort var2207 0)
(declare-sort var1645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sbuf/1197757375 (var1829) String)
(declare-fun capacity/792304043 (String) Int)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun timeStamp/-1362166489 (var996) Int)
(declare-fun var996_getStartTime/897536465 () Int)
(declare-fun append/1447793227 (String Int) String)
(declare-fun getThreadName/-1888294532 (var996) String)
(declare-fun var3679_escapeTags/-1417155512 (String) String)
(declare-fun getLevel/-1962581926 (var996) var2351)
(declare-fun equals/887593953 (var2481 var2207) Bool)
(declare-fun cast-from-var2351-to-var2481 (var2351) var2481)
(declare-fun cast-from-var2351-to-var2207 (var2351) var2207)
(declare-fun String_valueOf/-333372740 (var2207) String)
(declare-fun getLoggerName/-749232330 (var996) String)
(declare-fun locationInfo/1197757375 (var1829) Bool)
(declare-fun getRenderedMessage/-847539433 (var996) String)
(declare-fun getNDC/-1049485476 (var996) String)
(declare-fun getThrowableStrRep/1512398015 (var996) (Array Int String))
(declare-const null-var1829 var1829)
(declare-const null-var996 var996)
(declare-const var1470-LINE_SEP String)
(declare-const var2351-DEBUG var2351)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3292 var1829) ; Statement: r0 := @this: org.apache.log4j.HTMLLayout 
(assert (not (= var3292 null-var1829)))
(declare-const var2551 var996) ; Statement: r12 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var2551 null-var996)))
(define-const var1973 String (sbuf/1197757375 var3292)) ; Statement: $r1 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var2076 Int (capacity/792304043 var1973)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuffer: int capacity()>() 
 ; Statement: if $i0 <= 1024 goto $r2 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert (not (<= var2076 1024))) ; Negate: Cond: $i0 <= 1024  
(define-const var142 String String-init) ; Statement: $r110 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var142 256)) ; Statement: specialinvoke $r110.<java.lang.StringBuffer: void <init>(int)>(256) 

(declare-const var142!1 String)
(declare-const var1790 Int)
(declare-const var3292!1 var1829)
(assert (not (= var3292!1 null-var1829)))
(assert (= (sbuf/1197757375 var3292!1) var142!1)) ; Statement: r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> = $r110 
 ; Statement: goto [?= $r4 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>] 
(assert true) ; Non Conditional
(define-const var2823 String (sbuf/1197757375 var3292!1)) ; Statement: $r4 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var2848 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2848)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2848!1 String)
(define-const var390 String var1470-LINE_SEP) ; Statement: $r5 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var572 String (append/1560614132 var2848!1 var390)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var2848!2 String)
(assert (str.prefixof var2848!1 var2848!2))
(assert true)
(define-const var2549 String (append/1560614132 var572 "<tr>")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<tr>") 
(declare-const var572!1 String)
(assert (str.prefixof var572 var572!1))
(define-const var2182 String var1470-LINE_SEP) ; Statement: $r7 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var1165 String (append/1560614132 var2549 var2182)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var2549!1 String)
(assert (str.prefixof var2549 var2549!1))
(assert true)
(define-const var2513 String (toString/-222306083 var1165)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var2823 var2513)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r10) 
(declare-const var2823!1 String)
(assert (str.prefixof var2823 var2823!1))
(define-const var2006 String (sbuf/1197757375 var3292!1)) ; Statement: $r11 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var2006 "<td>")) ; Statement: virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td>") 
(declare-const var2006!1 String)
(assert (str.prefixof var2006 var2006!1))
(define-const var42 String (sbuf/1197757375 var3292!1)) ; Statement: $r13 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var1026 Int (timeStamp/-1362166489 var2551)) ; Statement: $l1 = r12.<org.apache.log4j.spi.LoggingEvent: long timeStamp> 
(define-const var2379 Int var996_getStartTime/897536465) ; Statement: $l2 = staticinvoke <org.apache.log4j.spi.LoggingEvent: long getStartTime()>() 
(define-const var3168 Int (- var1026 var2379)) ; Statement: $l3 = $l1 - $l2 
(assert true)
;(assert (append/1447793227 var42 var3168)) ; Statement: virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>($l3) 

(declare-const var42!1 String)
(declare-const var3168!1 Int)
(define-const var2 String (sbuf/1197757375 var3292!1)) ; Statement: $r15 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var2929 String String-init) ; Statement: $r14 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2929)) ; Statement: specialinvoke $r14.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2929!1 String)
(assert true)
(define-const var1616 String (append/1560614132 var2929!1 "</td>")) ; Statement: $r17 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>") 
(declare-const var2929!2 String)
(assert (str.prefixof var2929!1 var2929!2))
(define-const var2954 String var1470-LINE_SEP) ; Statement: $r16 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var3333 String (append/1560614132 var1616 var2954)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r16) 
(declare-const var1616!1 String)
(assert (str.prefixof var1616 var1616!1))
(assert true)
(define-const var1510 String (toString/-222306083 var3333)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var2 var1510)) ; Statement: virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r19) 
(declare-const var2!1 String)
(assert (str.prefixof var2 var2!1))
(assert true)
(define-const var3758 String (getThreadName/-1888294532 var2551)) ; Statement: $r20 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getThreadName()>() 
(define-const var2904 String (var3679_escapeTags/-1417155512 var3758)) ; Statement: $r111 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r20) 
(define-const var1221 String (sbuf/1197757375 var3292!1)) ; Statement: $r22 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var1623 String String-init) ; Statement: $r21 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1623)) ; Statement: specialinvoke $r21.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1623!1 String)
(assert true)
(define-const var3699 String (append/1560614132 var1623!1 "<td title=\u0022")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"") 
(declare-const var1623!2 String)
(assert (str.prefixof var1623!1 var1623!2))
(assert true)
(define-const var2715 String (append/1560614132 var3699 var2904)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r111) 
(declare-const var3699!1 String)
(assert (str.prefixof var3699 var3699!1))
(assert true)
(define-const var3414 String (append/1560614132 var2715 " thread\u0022>")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" thread\">") 
(declare-const var2715!1 String)
(assert (str.prefixof var2715 var2715!1))
(assert true)
(define-const var1378 String (toString/-222306083 var3414)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var1221 var1378)) ; Statement: virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26) 
(declare-const var1221!1 String)
(assert (str.prefixof var1221 var1221!1))
(define-const var2408 String (sbuf/1197757375 var3292!1)) ; Statement: $r27 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var2408 var2904)) ; Statement: virtualinvoke $r27.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r111) 
(declare-const var2408!1 String)
(assert (str.prefixof var2408 var2408!1))
(define-const var2808 String (sbuf/1197757375 var3292!1)) ; Statement: $r29 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var1488 String String-init) ; Statement: $r28 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1488)) ; Statement: specialinvoke $r28.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1488!1 String)
(assert true)
(define-const var2401 String (append/1560614132 var1488!1 "</td>")) ; Statement: $r31 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>") 
(declare-const var1488!2 String)
(assert (str.prefixof var1488!1 var1488!2))
(define-const var2208 String var1470-LINE_SEP) ; Statement: $r30 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var524 String (append/1560614132 var2401 var2208)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30) 
(declare-const var2401!1 String)
(assert (str.prefixof var2401 var2401!1))
(assert true)
(define-const var666 String (toString/-222306083 var524)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var2808 var666)) ; Statement: virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r33) 
(declare-const var2808!1 String)
(assert (str.prefixof var2808 var2808!1))
(define-const var3061 String (sbuf/1197757375 var3292!1)) ; Statement: $r34 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var3061 "<td title=\u0022Level\u0022>")) ; Statement: virtualinvoke $r34.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"Level\">") 
(declare-const var3061!1 String)
(assert (str.prefixof var3061 var3061!1))
(assert true)
(define-const var3896 var2351 (getLevel/-1962581926 var2551)) ; Statement: $r36 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>() 
(define-const var3249 var2351 var2351-DEBUG) ; Statement: $r35 = <org.apache.log4j.Level: org.apache.log4j.Level DEBUG> 
(assert true)
(define-const var412 Bool (equals/887593953 (cast-from-var2351-to-var2481 var3896) (cast-from-var2351-to-var2207 var3249))) ; Statement: $z0 = virtualinvoke $r36.<org.apache.log4j.Level: boolean equals(java.lang.Object)>($r35) 
 ; Statement: if $z0 == 0 goto $r38 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>() 
(assert (not (= (ite var412 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3622 String (sbuf/1197757375 var3292!1)) ; Statement: $r104 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var3622 "<font color=\u0022#339933\u0022>")) ; Statement: virtualinvoke $r104.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<font color=\"#339933\">") 
(declare-const var3622!1 String)
(assert (str.prefixof var3622 var3622!1))
(define-const var1541 String (sbuf/1197757375 var3292!1)) ; Statement: $r105 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var217 var2351 (getLevel/-1962581926 var2551)) ; Statement: $r106 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>() 
(define-const var3694 String (String_valueOf/-333372740 (cast-from-var2351-to-var2207 var217))) ; Statement: $r107 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r106) 
(define-const var3811 String (var3679_escapeTags/-1417155512 var3694)) ; Statement: $r108 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r107) 
(assert true)
;(assert (append/1560614132 var1541 var3811)) ; Statement: virtualinvoke $r105.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r108) 
(declare-const var1541!1 String)
(assert (str.prefixof var1541 var1541!1))
(define-const var3452 String (sbuf/1197757375 var3292!1)) ; Statement: $r109 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var3452 "</font>")) ; Statement: virtualinvoke $r109.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</font>") 
(declare-const var3452!1 String)
(assert (str.prefixof var3452 var3452!1))
 ; Statement: goto [?= $r112 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>] 
(assert true) ; Non Conditional
(define-const var110 String (sbuf/1197757375 var3292!1)) ; Statement: $r112 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var1833 String String-init) ; Statement: $r113 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1833)) ; Statement: specialinvoke $r113.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1833!1 String)
(assert true)
(define-const var1825 String (append/1560614132 var1833!1 "</td>")) ; Statement: $r114 = virtualinvoke $r113.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>") 
(declare-const var1833!2 String)
(assert (str.prefixof var1833!1 var1833!2))
(define-const var1375 String var1470-LINE_SEP) ; Statement: $r115 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var1926 String (append/1560614132 var1825 var1375)) ; Statement: $r116 = virtualinvoke $r114.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r115) 
(declare-const var1825!1 String)
(assert (str.prefixof var1825 var1825!1))
(assert true)
(define-const var3512 String (toString/-222306083 var1926)) ; Statement: $r117 = virtualinvoke $r116.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var110 var3512)) ; Statement: virtualinvoke $r112.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r117) 
(declare-const var110!1 String)
(assert (str.prefixof var110 var110!1))
(assert true)
(define-const var536 String (getLoggerName/-749232330 var2551)) ; Statement: $r118 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getLoggerName()>() 
(define-const var175 String (var3679_escapeTags/-1417155512 var536)) ; Statement: $r119 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r118) 
(define-const var144 String (sbuf/1197757375 var3292!1)) ; Statement: $r120 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var3998 String String-init) ; Statement: $r121 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3998)) ; Statement: specialinvoke $r121.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3998!1 String)
(assert true)
(define-const var1011 String (append/1560614132 var3998!1 "<td title=\u0022")) ; Statement: $r122 = virtualinvoke $r121.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"") 
(declare-const var3998!2 String)
(assert (str.prefixof var3998!1 var3998!2))
(assert true)
(define-const var3770 String (append/1560614132 var1011 var175)) ; Statement: $r123 = virtualinvoke $r122.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r119) 
(declare-const var1011!1 String)
(assert (str.prefixof var1011 var1011!1))
(assert true)
(define-const var2874 String (append/1560614132 var3770 " category\u0022>")) ; Statement: $r124 = virtualinvoke $r123.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" category\">") 
(declare-const var3770!1 String)
(assert (str.prefixof var3770 var3770!1))
(assert true)
(define-const var3704 String (toString/-222306083 var2874)) ; Statement: $r125 = virtualinvoke $r124.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var144 var3704)) ; Statement: virtualinvoke $r120.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r125) 
(declare-const var144!1 String)
(assert (str.prefixof var144 var144!1))
(define-const var3227 String (sbuf/1197757375 var3292!1)) ; Statement: $r126 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var3227 var175)) ; Statement: virtualinvoke $r126.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r119) 
(declare-const var3227!1 String)
(assert (str.prefixof var3227 var3227!1))
(define-const var2274 String (sbuf/1197757375 var3292!1)) ; Statement: $r127 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var697 String String-init) ; Statement: $r128 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var697)) ; Statement: specialinvoke $r128.<java.lang.StringBuffer: void <init>()>() 

(declare-const var697!1 String)
(assert true)
(define-const var3556 String (append/1560614132 var697!1 "</td>")) ; Statement: $r129 = virtualinvoke $r128.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>") 
(declare-const var697!2 String)
(assert (str.prefixof var697!1 var697!2))
(define-const var1480 String var1470-LINE_SEP) ; Statement: $r130 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var1935 String (append/1560614132 var3556 var1480)) ; Statement: $r131 = virtualinvoke $r129.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r130) 
(declare-const var3556!1 String)
(assert (str.prefixof var3556 var3556!1))
(assert true)
(define-const var2237 String (toString/-222306083 var1935)) ; Statement: $r132 = virtualinvoke $r131.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var2274 var2237)) ; Statement: virtualinvoke $r127.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r132) 
(declare-const var2274!1 String)
(assert (str.prefixof var2274 var2274!1))
(define-const var1838 Bool (locationInfo/1197757375 var3292!1)) ; Statement: $z2 = r0.<org.apache.log4j.HTMLLayout: boolean locationInfo> 
 ; Statement: if $z2 == 0 goto $r43 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert (= (ite var1838 1 0) 0)) ; Cond: $z2 == 0 
(define-const var251 String (sbuf/1197757375 var3292!1)) ; Statement: $r43 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var251 "<td title=\u0022Message\u0022>")) ; Statement: virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"Message\">") 
(declare-const var251!1 String)
(assert (str.prefixof var251 var251!1))
(define-const var3534 String (sbuf/1197757375 var3292!1)) ; Statement: $r44 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var566 String (getRenderedMessage/-847539433 var2551)) ; Statement: $r45 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getRenderedMessage()>() 
(define-const var1447 String (var3679_escapeTags/-1417155512 var566)) ; Statement: $r46 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r45) 
(assert true)
;(assert (append/1560614132 var3534 var1447)) ; Statement: virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r46) 
(declare-const var3534!1 String)
(assert (str.prefixof var3534 var3534!1))
(define-const var2036 String (sbuf/1197757375 var3292!1)) ; Statement: $r48 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var1980 String String-init) ; Statement: $r47 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1980)) ; Statement: specialinvoke $r47.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1980!1 String)
(assert true)
(define-const var2618 String (append/1560614132 var1980!1 "</td>")) ; Statement: $r50 = virtualinvoke $r47.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>") 
(declare-const var1980!2 String)
(assert (str.prefixof var1980!1 var1980!2))
(define-const var1717 String var1470-LINE_SEP) ; Statement: $r49 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var3787 String (append/1560614132 var2618 var1717)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r49) 
(declare-const var2618!1 String)
(assert (str.prefixof var2618 var2618!1))
(assert true)
(define-const var2937 String (toString/-222306083 var3787)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var2036 var2937)) ; Statement: virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r52) 
(declare-const var2036!1 String)
(assert (str.prefixof var2036 var2036!1))
(define-const var1155 String (sbuf/1197757375 var3292!1)) ; Statement: $r54 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var1533 String String-init) ; Statement: $r53 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1533)) ; Statement: specialinvoke $r53.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1533!1 String)
(assert true)
(define-const var267 String (append/1560614132 var1533!1 "</tr>")) ; Statement: $r56 = virtualinvoke $r53.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</tr>") 
(declare-const var1533!2 String)
(assert (str.prefixof var1533!1 var1533!2))
(define-const var1201 String var1470-LINE_SEP) ; Statement: $r55 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var2859 String (append/1560614132 var267 var1201)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r55) 
(declare-const var267!1 String)
(assert (str.prefixof var267 var267!1))
(assert true)
(define-const var3988 String (toString/-222306083 var2859)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var1155 var3988)) ; Statement: virtualinvoke $r54.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r58) 
(declare-const var1155!1 String)
(assert (str.prefixof var1155 var1155!1))
(assert true)
(define-const var2976 String (getNDC/-1049485476 var2551)) ; Statement: $r59 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getNDC()>() 
 ; Statement: if $r59 == null goto $r84 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>() 
(assert (= var2976 null-String)) ; Cond: $r59 == null 
(assert true)
(define-const var2485 (Array Int String) (getThrowableStrRep/1512398015 var2551)) ; Statement: $r84 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>() 
 ; Statement: if $r84 == null goto $r60 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert (= var2485 null-__Array__Int__String__)) ; Cond: $r84 == null 
(define-const var640 String (sbuf/1197757375 var3292!1)) ; Statement: $r60 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var2587 String (toString/-222306083 var640)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r61 
(check-sat)
(get-model)
(get-unsat-core)
; {sbuf/1197757375=([org.apache.log4j.HTMLLayout], java.lang.StringBuffer), capacity/792304043=([java.lang.StringBuffer], int), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), timeStamp/-1362166489=([org.apache.log4j.spi.LoggingEvent], long), var996_getStartTime/897536465=([], long), append/1447793227=([java.lang.StringBuffer, long], java.lang.StringBuffer), getThreadName/-1888294532=([org.apache.log4j.spi.LoggingEvent], java.lang.String), var3679_escapeTags/-1417155512=([java.lang.String], java.lang.String), getLevel/-1962581926=([org.apache.log4j.spi.LoggingEvent], org.apache.log4j.Level), equals/887593953=([org.apache.log4j.Priority, java.lang.Object], boolean), cast-from-var2351-to-var2481=([org.apache.log4j.Level], org.apache.log4j.Priority), cast-from-var2351-to-var2207=([org.apache.log4j.Level], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), getLoggerName/-749232330=([org.apache.log4j.spi.LoggingEvent], java.lang.String), locationInfo/1197757375=([org.apache.log4j.HTMLLayout], boolean), getRenderedMessage/-847539433=([org.apache.log4j.spi.LoggingEvent], java.lang.String), getNDC/-1049485476=([org.apache.log4j.spi.LoggingEvent], java.lang.String), getThrowableStrRep/1512398015=([org.apache.log4j.spi.LoggingEvent], java.lang.String[])}
; {var1829=org.apache.log4j.HTMLLayout, var3292=r0, var996=org.apache.log4j.spi.LoggingEvent, var2551=r12, var1973=$r1, var2076=$i0, var142=$r110, var1790=256, var2823=$r4, var2848=$r3, var1470=org.apache.log4j.Layout, var390=$r5, var572=$r6, var2549=$r8, var2182=$r7, var1165=$r9, var2513=$r10, var2006=$r11, var42=$r13, var1026=$l1, var2379=$l2, var3168=$l3, var2=$r15, var2929=$r14, var1616=$r17, var2954=$r16, var3333=$r18, var1510=$r19, var3758=$r20, var3679=org.apache.log4j.helpers.Transform, var2904=$r111, var1221=$r22, var1623=$r21, var3699=$r23, var2715=$r24, var3414=$r25, var1378=$r26, var2408=$r27, var2808=$r29, var1488=$r28, var2401=$r31, var2208=$r30, var524=$r32, var666=$r33, var3061=$r34, var2351=org.apache.log4j.Level, var3896=$r36, var3249=$r35, var2481=org.apache.log4j.Priority, var2207=java.lang.Object, var412=$z0, var3622=$r104, var1541=$r105, var217=$r106, var3694=$r107, var3811=$r108, var3452=$r109, var110=$r112, var1833=$r113, var1825=$r114, var1375=$r115, var1926=$r116, var3512=$r117, var536=$r118, var175=$r119, var144=$r120, var3998=$r121, var1011=$r122, var3770=$r123, var2874=$r124, var3704=$r125, var3227=$r126, var2274=$r127, var697=$r128, var3556=$r129, var1480=$r130, var1935=$r131, var2237=$r132, var1838=$z2, var251=$r43, var3534=$r44, var566=$r45, var1447=$r46, var2036=$r48, var1980=$r47, var2618=$r50, var1717=$r49, var3787=$r51, var2937=$r52, var1155=$r54, var1533=$r53, var267=$r56, var1201=$r55, var2859=$r57, var3988=$r58, var2976=$r59, var1645=null_type, var2485=$r84, var640=$r60, var2587=$r61}
; {org.apache.log4j.HTMLLayout=var1829, r0=var3292, org.apache.log4j.spi.LoggingEvent=var996, r12=var2551, $r1=var1973, $i0=var2076, $r110=var142, 256=var1790, $r4=var2823, $r3=var2848, org.apache.log4j.Layout=var1470, $r5=var390, $r6=var572, $r8=var2549, $r7=var2182, $r9=var1165, $r10=var2513, $r11=var2006, $r13=var42, $l1=var1026, $l2=var2379, $l3=var3168, $r15=var2, $r14=var2929, $r17=var1616, $r16=var2954, $r18=var3333, $r19=var1510, $r20=var3758, org.apache.log4j.helpers.Transform=var3679, $r111=var2904, $r22=var1221, $r21=var1623, $r23=var3699, $r24=var2715, $r25=var3414, $r26=var1378, $r27=var2408, $r29=var2808, $r28=var1488, $r31=var2401, $r30=var2208, $r32=var524, $r33=var666, $r34=var3061, org.apache.log4j.Level=var2351, $r36=var3896, $r35=var3249, org.apache.log4j.Priority=var2481, java.lang.Object=var2207, $z0=var412, $r104=var3622, $r105=var1541, $r106=var217, $r107=var3694, $r108=var3811, $r109=var3452, $r112=var110, $r113=var1833, $r114=var1825, $r115=var1375, $r116=var1926, $r117=var3512, $r118=var536, $r119=var175, $r120=var144, $r121=var3998, $r122=var1011, $r123=var3770, $r124=var2874, $r125=var3704, $r126=var3227, $r127=var2274, $r128=var697, $r129=var3556, $r130=var1480, $r131=var1935, $r132=var2237, $z2=var1838, $r43=var251, $r44=var3534, $r45=var566, $r46=var1447, $r48=var2036, $r47=var1980, $r50=var2618, $r49=var1717, $r51=var3787, $r52=var2937, $r54=var1155, $r53=var1533, $r56=var267, $r55=var1201, $r57=var2859, $r58=var3988, $r59=var2976, null_type=var1645, $r84=var2485, $r60=var640, $r61=var2587}
;seq <java.lang.StringBuffer: int capacity()>;	<java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(long)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: int capacity()>": 1,"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: void <init>()>": 9,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 39,"<java.lang.StringBuffer: java.lang.String toString()>": 10,"<java.lang.StringBuffer: java.lang.StringBuffer append(long)>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.log4j.HTMLLayout;	r12 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$r1 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$i0 = virtualinvoke $r1.<java.lang.StringBuffer: int capacity()>();	if $i0 <= 1024 goto $r2 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r110 = new java.lang.StringBuffer;	specialinvoke $r110.<java.lang.StringBuffer: void <init>(int)>(256);	r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> = $r110;	goto [?= $r4 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>];	$r4 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	$r5 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<tr>");	$r7 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r10);	$r11 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td>");	$r13 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$l1 = r12.<org.apache.log4j.spi.LoggingEvent: long timeStamp>;	$l2 = staticinvoke <org.apache.log4j.spi.LoggingEvent: long getStartTime()>();	$l3 = $l1 - $l2;	virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>($l3);	$r15 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r14 = new java.lang.StringBuffer;	specialinvoke $r14.<java.lang.StringBuffer: void <init>()>();	$r17 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>");	$r16 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r19);	$r20 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getThreadName()>();	$r111 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r20);	$r22 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r21 = new java.lang.StringBuffer;	specialinvoke $r21.<java.lang.StringBuffer: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"");	$r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r111);	$r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" thread\">");	$r26 = virtualinvoke $r25.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26);	$r27 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r27.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r111);	$r29 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r28 = new java.lang.StringBuffer;	specialinvoke $r28.<java.lang.StringBuffer: void <init>()>();	$r31 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>");	$r30 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r33);	$r34 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r34.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"Level\">");	$r36 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>();	$r35 = <org.apache.log4j.Level: org.apache.log4j.Level DEBUG>;	$z0 = virtualinvoke $r36.<org.apache.log4j.Level: boolean equals(java.lang.Object)>($r35);	if $z0 == 0 goto $r38 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>();	$r104 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r104.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<font color=\"#339933\">");	$r105 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r106 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>();	$r107 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r106);	$r108 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r107);	virtualinvoke $r105.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r108);	$r109 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r109.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</font>");	goto [?= $r112 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>];	$r112 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r113 = new java.lang.StringBuffer;	specialinvoke $r113.<java.lang.StringBuffer: void <init>()>();	$r114 = virtualinvoke $r113.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>");	$r115 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r116 = virtualinvoke $r114.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r115);	$r117 = virtualinvoke $r116.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r112.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r117);	$r118 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getLoggerName()>();	$r119 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r118);	$r120 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r121 = new java.lang.StringBuffer;	specialinvoke $r121.<java.lang.StringBuffer: void <init>()>();	$r122 = virtualinvoke $r121.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"");	$r123 = virtualinvoke $r122.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r119);	$r124 = virtualinvoke $r123.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" category\">");	$r125 = virtualinvoke $r124.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r120.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r125);	$r126 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r126.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r119);	$r127 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r128 = new java.lang.StringBuffer;	specialinvoke $r128.<java.lang.StringBuffer: void <init>()>();	$r129 = virtualinvoke $r128.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>");	$r130 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r131 = virtualinvoke $r129.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r130);	$r132 = virtualinvoke $r131.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r127.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r132);	$z2 = r0.<org.apache.log4j.HTMLLayout: boolean locationInfo>;	if $z2 == 0 goto $r43 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r43 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"Message\">");	$r44 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r45 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getRenderedMessage()>();	$r46 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r45);	virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r46);	$r48 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r47 = new java.lang.StringBuffer;	specialinvoke $r47.<java.lang.StringBuffer: void <init>()>();	$r50 = virtualinvoke $r47.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>");	$r49 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r49);	$r52 = virtualinvoke $r51.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r52);	$r54 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r53 = new java.lang.StringBuffer;	specialinvoke $r53.<java.lang.StringBuffer: void <init>()>();	$r56 = virtualinvoke $r53.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</tr>");	$r55 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r57 = virtualinvoke $r56.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r55);	$r58 = virtualinvoke $r57.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r54.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r58);	$r59 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getNDC()>();	if $r59 == null goto $r84 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>();	$r84 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>();	if $r84 == null goto $r60 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r60 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r61 = virtualinvoke $r60.<java.lang.StringBuffer: java.lang.String toString()>();	return $r61
;block_num 8