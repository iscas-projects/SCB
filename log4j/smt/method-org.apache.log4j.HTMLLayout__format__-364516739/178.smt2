(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1055 0)
(declare-sort var358 0)
(declare-sort var909 0)
(declare-sort var1090 0)
(declare-sort var2792 0)
(declare-sort var1506 0)
(declare-sort var1926 0)
(declare-sort var903 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sbuf/1197757375 (var1055) String)
(declare-fun capacity/792304043 (String) Int)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun timeStamp/-1362166489 (var358) Int)
(declare-fun var358_getStartTime/897536465 () Int)
(declare-fun append/1447793227 (String Int) String)
(declare-fun getThreadName/-1888294532 (var358) String)
(declare-fun var1090_escapeTags/-1417155512 (String) String)
(declare-fun getLevel/-1962581926 (var358) var2792)
(declare-fun equals/887593953 (var1506 var1926) Bool)
(declare-fun cast-from-var2792-to-var1506 (var2792) var1506)
(declare-fun cast-from-var2792-to-var1926 (var2792) var1926)
(declare-fun String_valueOf/-333372740 (var1926) String)
(declare-fun getLoggerName/-749232330 (var358) String)
(declare-fun locationInfo/1197757375 (var1055) Bool)
(declare-fun getRenderedMessage/-847539433 (var358) String)
(declare-fun getNDC/-1049485476 (var358) String)
(declare-fun getThrowableStrRep/1512398015 (var358) (Array Int String))
(declare-const null-var1055 var1055)
(declare-const null-var358 var358)
(declare-const var909-LINE_SEP String)
(declare-const var2792-DEBUG var2792)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3066 var1055) ; Statement: r0 := @this: org.apache.log4j.HTMLLayout 
(assert (not (= var3066 null-var1055)))
(declare-const var2163 var358) ; Statement: r12 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var2163 null-var358)))
(define-const var2929 String (sbuf/1197757375 var3066)) ; Statement: $r1 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var420 Int (capacity/792304043 var2929)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuffer: int capacity()>() 
 ; Statement: if $i0 <= 1024 goto $r2 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert (<= var420 1024)) ; Cond: $i0 <= 1024 
(define-const var3224 String (sbuf/1197757375 var3066)) ; Statement: $r2 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (setLength/163251007 var3224 0)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3224!1 String)
(declare-const var3396 Int)
(assert true) ; Non Conditional
(define-const var3949 String (sbuf/1197757375 var3066)) ; Statement: $r4 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var1273 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1273)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1273!1 String)
(define-const var1676 String var909-LINE_SEP) ; Statement: $r5 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var2326 String (append/1560614132 var1273!1 var1676)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var1273!2 String)
(assert (str.prefixof var1273!1 var1273!2))
(assert true)
(define-const var3956 String (append/1560614132 var2326 "<tr>")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<tr>") 
(declare-const var2326!1 String)
(assert (str.prefixof var2326 var2326!1))
(define-const var3937 String var909-LINE_SEP) ; Statement: $r7 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var227 String (append/1560614132 var3956 var3937)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var3956!1 String)
(assert (str.prefixof var3956 var3956!1))
(assert true)
(define-const var1667 String (toString/-222306083 var227)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var3949 var1667)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r10) 
(declare-const var3949!1 String)
(assert (str.prefixof var3949 var3949!1))
(define-const var499 String (sbuf/1197757375 var3066)) ; Statement: $r11 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var499 "<td>")) ; Statement: virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td>") 
(declare-const var499!1 String)
(assert (str.prefixof var499 var499!1))
(define-const var2811 String (sbuf/1197757375 var3066)) ; Statement: $r13 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var376 Int (timeStamp/-1362166489 var2163)) ; Statement: $l1 = r12.<org.apache.log4j.spi.LoggingEvent: long timeStamp> 
(define-const var1143 Int var358_getStartTime/897536465) ; Statement: $l2 = staticinvoke <org.apache.log4j.spi.LoggingEvent: long getStartTime()>() 
(define-const var3064 Int (- var376 var1143)) ; Statement: $l3 = $l1 - $l2 
(assert true)
;(assert (append/1447793227 var2811 var3064)) ; Statement: virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>($l3) 

(declare-const var2811!1 String)
(declare-const var3064!1 Int)
(define-const var1034 String (sbuf/1197757375 var3066)) ; Statement: $r15 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var1721 String String-init) ; Statement: $r14 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1721)) ; Statement: specialinvoke $r14.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1721!1 String)
(assert true)
(define-const var409 String (append/1560614132 var1721!1 "</td>")) ; Statement: $r17 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>") 
(declare-const var1721!2 String)
(assert (str.prefixof var1721!1 var1721!2))
(define-const var2577 String var909-LINE_SEP) ; Statement: $r16 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var3097 String (append/1560614132 var409 var2577)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r16) 
(declare-const var409!1 String)
(assert (str.prefixof var409 var409!1))
(assert true)
(define-const var2804 String (toString/-222306083 var3097)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var1034 var2804)) ; Statement: virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r19) 
(declare-const var1034!1 String)
(assert (str.prefixof var1034 var1034!1))
(assert true)
(define-const var891 String (getThreadName/-1888294532 var2163)) ; Statement: $r20 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getThreadName()>() 
(define-const var444 String (var1090_escapeTags/-1417155512 var891)) ; Statement: $r111 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r20) 
(define-const var2280 String (sbuf/1197757375 var3066)) ; Statement: $r22 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var2161 String String-init) ; Statement: $r21 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2161)) ; Statement: specialinvoke $r21.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2161!1 String)
(assert true)
(define-const var3884 String (append/1560614132 var2161!1 "<td title=\u0022")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"") 
(declare-const var2161!2 String)
(assert (str.prefixof var2161!1 var2161!2))
(assert true)
(define-const var655 String (append/1560614132 var3884 var444)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r111) 
(declare-const var3884!1 String)
(assert (str.prefixof var3884 var3884!1))
(assert true)
(define-const var695 String (append/1560614132 var655 " thread\u0022>")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" thread\">") 
(declare-const var655!1 String)
(assert (str.prefixof var655 var655!1))
(assert true)
(define-const var415 String (toString/-222306083 var695)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var2280 var415)) ; Statement: virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26) 
(declare-const var2280!1 String)
(assert (str.prefixof var2280 var2280!1))
(define-const var2024 String (sbuf/1197757375 var3066)) ; Statement: $r27 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var2024 var444)) ; Statement: virtualinvoke $r27.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r111) 
(declare-const var2024!1 String)
(assert (str.prefixof var2024 var2024!1))
(define-const var370 String (sbuf/1197757375 var3066)) ; Statement: $r29 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var1188 String String-init) ; Statement: $r28 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1188)) ; Statement: specialinvoke $r28.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1188!1 String)
(assert true)
(define-const var3389 String (append/1560614132 var1188!1 "</td>")) ; Statement: $r31 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>") 
(declare-const var1188!2 String)
(assert (str.prefixof var1188!1 var1188!2))
(define-const var851 String var909-LINE_SEP) ; Statement: $r30 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var2945 String (append/1560614132 var3389 var851)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30) 
(declare-const var3389!1 String)
(assert (str.prefixof var3389 var3389!1))
(assert true)
(define-const var3802 String (toString/-222306083 var2945)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var370 var3802)) ; Statement: virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r33) 
(declare-const var370!1 String)
(assert (str.prefixof var370 var370!1))
(define-const var2616 String (sbuf/1197757375 var3066)) ; Statement: $r34 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var2616 "<td title=\u0022Level\u0022>")) ; Statement: virtualinvoke $r34.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"Level\">") 
(declare-const var2616!1 String)
(assert (str.prefixof var2616 var2616!1))
(assert true)
(define-const var3380 var2792 (getLevel/-1962581926 var2163)) ; Statement: $r36 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>() 
(define-const var2528 var2792 var2792-DEBUG) ; Statement: $r35 = <org.apache.log4j.Level: org.apache.log4j.Level DEBUG> 
(assert true)
(define-const var1751 Bool (equals/887593953 (cast-from-var2792-to-var1506 var3380) (cast-from-var2792-to-var1926 var2528))) ; Statement: $z0 = virtualinvoke $r36.<org.apache.log4j.Level: boolean equals(java.lang.Object)>($r35) 
 ; Statement: if $z0 == 0 goto $r38 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>() 
(assert (not (= (ite var1751 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2847 String (sbuf/1197757375 var3066)) ; Statement: $r104 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var2847 "<font color=\u0022#339933\u0022>")) ; Statement: virtualinvoke $r104.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<font color=\"#339933\">") 
(declare-const var2847!1 String)
(assert (str.prefixof var2847 var2847!1))
(define-const var2512 String (sbuf/1197757375 var3066)) ; Statement: $r105 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var890 var2792 (getLevel/-1962581926 var2163)) ; Statement: $r106 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>() 
(define-const var2218 String (String_valueOf/-333372740 (cast-from-var2792-to-var1926 var890))) ; Statement: $r107 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r106) 
(define-const var219 String (var1090_escapeTags/-1417155512 var2218)) ; Statement: $r108 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r107) 
(assert true)
;(assert (append/1560614132 var2512 var219)) ; Statement: virtualinvoke $r105.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r108) 
(declare-const var2512!1 String)
(assert (str.prefixof var2512 var2512!1))
(define-const var508 String (sbuf/1197757375 var3066)) ; Statement: $r109 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var508 "</font>")) ; Statement: virtualinvoke $r109.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</font>") 
(declare-const var508!1 String)
(assert (str.prefixof var508 var508!1))
 ; Statement: goto [?= $r112 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>] 
(assert true) ; Non Conditional
(define-const var1999 String (sbuf/1197757375 var3066)) ; Statement: $r112 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var3584 String String-init) ; Statement: $r113 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3584)) ; Statement: specialinvoke $r113.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3584!1 String)
(assert true)
(define-const var838 String (append/1560614132 var3584!1 "</td>")) ; Statement: $r114 = virtualinvoke $r113.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>") 
(declare-const var3584!2 String)
(assert (str.prefixof var3584!1 var3584!2))
(define-const var534 String var909-LINE_SEP) ; Statement: $r115 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var1863 String (append/1560614132 var838 var534)) ; Statement: $r116 = virtualinvoke $r114.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r115) 
(declare-const var838!1 String)
(assert (str.prefixof var838 var838!1))
(assert true)
(define-const var1475 String (toString/-222306083 var1863)) ; Statement: $r117 = virtualinvoke $r116.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var1999 var1475)) ; Statement: virtualinvoke $r112.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r117) 
(declare-const var1999!1 String)
(assert (str.prefixof var1999 var1999!1))
(assert true)
(define-const var938 String (getLoggerName/-749232330 var2163)) ; Statement: $r118 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getLoggerName()>() 
(define-const var150 String (var1090_escapeTags/-1417155512 var938)) ; Statement: $r119 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r118) 
(define-const var316 String (sbuf/1197757375 var3066)) ; Statement: $r120 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var1403 String String-init) ; Statement: $r121 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1403)) ; Statement: specialinvoke $r121.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1403!1 String)
(assert true)
(define-const var2033 String (append/1560614132 var1403!1 "<td title=\u0022")) ; Statement: $r122 = virtualinvoke $r121.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"") 
(declare-const var1403!2 String)
(assert (str.prefixof var1403!1 var1403!2))
(assert true)
(define-const var1942 String (append/1560614132 var2033 var150)) ; Statement: $r123 = virtualinvoke $r122.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r119) 
(declare-const var2033!1 String)
(assert (str.prefixof var2033 var2033!1))
(assert true)
(define-const var147 String (append/1560614132 var1942 " category\u0022>")) ; Statement: $r124 = virtualinvoke $r123.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" category\">") 
(declare-const var1942!1 String)
(assert (str.prefixof var1942 var1942!1))
(assert true)
(define-const var2260 String (toString/-222306083 var147)) ; Statement: $r125 = virtualinvoke $r124.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var316 var2260)) ; Statement: virtualinvoke $r120.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r125) 
(declare-const var316!1 String)
(assert (str.prefixof var316 var316!1))
(define-const var2692 String (sbuf/1197757375 var3066)) ; Statement: $r126 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var2692 var150)) ; Statement: virtualinvoke $r126.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r119) 
(declare-const var2692!1 String)
(assert (str.prefixof var2692 var2692!1))
(define-const var2067 String (sbuf/1197757375 var3066)) ; Statement: $r127 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var3882 String String-init) ; Statement: $r128 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3882)) ; Statement: specialinvoke $r128.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3882!1 String)
(assert true)
(define-const var3276 String (append/1560614132 var3882!1 "</td>")) ; Statement: $r129 = virtualinvoke $r128.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>") 
(declare-const var3882!2 String)
(assert (str.prefixof var3882!1 var3882!2))
(define-const var812 String var909-LINE_SEP) ; Statement: $r130 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var247 String (append/1560614132 var3276 var812)) ; Statement: $r131 = virtualinvoke $r129.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r130) 
(declare-const var3276!1 String)
(assert (str.prefixof var3276 var3276!1))
(assert true)
(define-const var3799 String (toString/-222306083 var247)) ; Statement: $r132 = virtualinvoke $r131.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var2067 var3799)) ; Statement: virtualinvoke $r127.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r132) 
(declare-const var2067!1 String)
(assert (str.prefixof var2067 var2067!1))
(define-const var2006 Bool (locationInfo/1197757375 var3066)) ; Statement: $z2 = r0.<org.apache.log4j.HTMLLayout: boolean locationInfo> 
 ; Statement: if $z2 == 0 goto $r43 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert (= (ite var2006 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3805 String (sbuf/1197757375 var3066)) ; Statement: $r43 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
;(assert (append/1560614132 var3805 "<td title=\u0022Message\u0022>")) ; Statement: virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"Message\">") 
(declare-const var3805!1 String)
(assert (str.prefixof var3805 var3805!1))
(define-const var3233 String (sbuf/1197757375 var3066)) ; Statement: $r44 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var3390 String (getRenderedMessage/-847539433 var2163)) ; Statement: $r45 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getRenderedMessage()>() 
(define-const var2620 String (var1090_escapeTags/-1417155512 var3390)) ; Statement: $r46 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r45) 
(assert true)
;(assert (append/1560614132 var3233 var2620)) ; Statement: virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r46) 
(declare-const var3233!1 String)
(assert (str.prefixof var3233 var3233!1))
(define-const var1724 String (sbuf/1197757375 var3066)) ; Statement: $r48 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var3545 String String-init) ; Statement: $r47 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3545)) ; Statement: specialinvoke $r47.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3545!1 String)
(assert true)
(define-const var2621 String (append/1560614132 var3545!1 "</td>")) ; Statement: $r50 = virtualinvoke $r47.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>") 
(declare-const var3545!2 String)
(assert (str.prefixof var3545!1 var3545!2))
(define-const var2571 String var909-LINE_SEP) ; Statement: $r49 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var2087 String (append/1560614132 var2621 var2571)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r49) 
(declare-const var2621!1 String)
(assert (str.prefixof var2621 var2621!1))
(assert true)
(define-const var134 String (toString/-222306083 var2087)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var1724 var134)) ; Statement: virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r52) 
(declare-const var1724!1 String)
(assert (str.prefixof var1724 var1724!1))
(define-const var2969 String (sbuf/1197757375 var3066)) ; Statement: $r54 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(define-const var3640 String String-init) ; Statement: $r53 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3640)) ; Statement: specialinvoke $r53.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3640!1 String)
(assert true)
(define-const var746 String (append/1560614132 var3640!1 "</tr>")) ; Statement: $r56 = virtualinvoke $r53.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</tr>") 
(declare-const var3640!2 String)
(assert (str.prefixof var3640!1 var3640!2))
(define-const var954 String var909-LINE_SEP) ; Statement: $r55 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var3692 String (append/1560614132 var746 var954)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r55) 
(declare-const var746!1 String)
(assert (str.prefixof var746 var746!1))
(assert true)
(define-const var884 String (toString/-222306083 var3692)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var2969 var884)) ; Statement: virtualinvoke $r54.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r58) 
(declare-const var2969!1 String)
(assert (str.prefixof var2969 var2969!1))
(assert true)
(define-const var336 String (getNDC/-1049485476 var2163)) ; Statement: $r59 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getNDC()>() 
 ; Statement: if $r59 == null goto $r84 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>() 
(assert (= var336 null-String)) ; Cond: $r59 == null 
(assert true)
(define-const var2375 (Array Int String) (getThrowableStrRep/1512398015 var2163)) ; Statement: $r84 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>() 
 ; Statement: if $r84 == null goto $r60 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert (= var2375 null-__Array__Int__String__)) ; Cond: $r84 == null 
(define-const var1939 String (sbuf/1197757375 var3066)) ; Statement: $r60 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var2599 String (toString/-222306083 var1939)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r61 
(check-sat)
(get-model)
(get-unsat-core)
; {sbuf/1197757375=([org.apache.log4j.HTMLLayout], java.lang.StringBuffer), capacity/792304043=([java.lang.StringBuffer], int), setLength/163251007=([java.lang.StringBuffer, int], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), timeStamp/-1362166489=([org.apache.log4j.spi.LoggingEvent], long), var358_getStartTime/897536465=([], long), append/1447793227=([java.lang.StringBuffer, long], java.lang.StringBuffer), getThreadName/-1888294532=([org.apache.log4j.spi.LoggingEvent], java.lang.String), var1090_escapeTags/-1417155512=([java.lang.String], java.lang.String), getLevel/-1962581926=([org.apache.log4j.spi.LoggingEvent], org.apache.log4j.Level), equals/887593953=([org.apache.log4j.Priority, java.lang.Object], boolean), cast-from-var2792-to-var1506=([org.apache.log4j.Level], org.apache.log4j.Priority), cast-from-var2792-to-var1926=([org.apache.log4j.Level], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), getLoggerName/-749232330=([org.apache.log4j.spi.LoggingEvent], java.lang.String), locationInfo/1197757375=([org.apache.log4j.HTMLLayout], boolean), getRenderedMessage/-847539433=([org.apache.log4j.spi.LoggingEvent], java.lang.String), getNDC/-1049485476=([org.apache.log4j.spi.LoggingEvent], java.lang.String), getThrowableStrRep/1512398015=([org.apache.log4j.spi.LoggingEvent], java.lang.String[])}
; {var1055=org.apache.log4j.HTMLLayout, var3066=r0, var358=org.apache.log4j.spi.LoggingEvent, var2163=r12, var2929=$r1, var420=$i0, var3224=$r2, var3396=0, var3949=$r4, var1273=$r3, var909=org.apache.log4j.Layout, var1676=$r5, var2326=$r6, var3956=$r8, var3937=$r7, var227=$r9, var1667=$r10, var499=$r11, var2811=$r13, var376=$l1, var1143=$l2, var3064=$l3, var1034=$r15, var1721=$r14, var409=$r17, var2577=$r16, var3097=$r18, var2804=$r19, var891=$r20, var1090=org.apache.log4j.helpers.Transform, var444=$r111, var2280=$r22, var2161=$r21, var3884=$r23, var655=$r24, var695=$r25, var415=$r26, var2024=$r27, var370=$r29, var1188=$r28, var3389=$r31, var851=$r30, var2945=$r32, var3802=$r33, var2616=$r34, var2792=org.apache.log4j.Level, var3380=$r36, var2528=$r35, var1506=org.apache.log4j.Priority, var1926=java.lang.Object, var1751=$z0, var2847=$r104, var2512=$r105, var890=$r106, var2218=$r107, var219=$r108, var508=$r109, var1999=$r112, var3584=$r113, var838=$r114, var534=$r115, var1863=$r116, var1475=$r117, var938=$r118, var150=$r119, var316=$r120, var1403=$r121, var2033=$r122, var1942=$r123, var147=$r124, var2260=$r125, var2692=$r126, var2067=$r127, var3882=$r128, var3276=$r129, var812=$r130, var247=$r131, var3799=$r132, var2006=$z2, var3805=$r43, var3233=$r44, var3390=$r45, var2620=$r46, var1724=$r48, var3545=$r47, var2621=$r50, var2571=$r49, var2087=$r51, var134=$r52, var2969=$r54, var3640=$r53, var746=$r56, var954=$r55, var3692=$r57, var884=$r58, var336=$r59, var903=null_type, var2375=$r84, var1939=$r60, var2599=$r61}
; {org.apache.log4j.HTMLLayout=var1055, r0=var3066, org.apache.log4j.spi.LoggingEvent=var358, r12=var2163, $r1=var2929, $i0=var420, $r2=var3224, 0=var3396, $r4=var3949, $r3=var1273, org.apache.log4j.Layout=var909, $r5=var1676, $r6=var2326, $r8=var3956, $r7=var3937, $r9=var227, $r10=var1667, $r11=var499, $r13=var2811, $l1=var376, $l2=var1143, $l3=var3064, $r15=var1034, $r14=var1721, $r17=var409, $r16=var2577, $r18=var3097, $r19=var2804, $r20=var891, org.apache.log4j.helpers.Transform=var1090, $r111=var444, $r22=var2280, $r21=var2161, $r23=var3884, $r24=var655, $r25=var695, $r26=var415, $r27=var2024, $r29=var370, $r28=var1188, $r31=var3389, $r30=var851, $r32=var2945, $r33=var3802, $r34=var2616, org.apache.log4j.Level=var2792, $r36=var3380, $r35=var2528, org.apache.log4j.Priority=var1506, java.lang.Object=var1926, $z0=var1751, $r104=var2847, $r105=var2512, $r106=var890, $r107=var2218, $r108=var219, $r109=var508, $r112=var1999, $r113=var3584, $r114=var838, $r115=var534, $r116=var1863, $r117=var1475, $r118=var938, $r119=var150, $r120=var316, $r121=var1403, $r122=var2033, $r123=var1942, $r124=var147, $r125=var2260, $r126=var2692, $r127=var2067, $r128=var3882, $r129=var3276, $r130=var812, $r131=var247, $r132=var3799, $z2=var2006, $r43=var3805, $r44=var3233, $r45=var3390, $r46=var2620, $r48=var1724, $r47=var3545, $r50=var2621, $r49=var2571, $r51=var2087, $r52=var134, $r54=var2969, $r53=var3640, $r56=var746, $r55=var954, $r57=var3692, $r58=var884, $r59=var336, null_type=var903, $r84=var2375, $r60=var1939, $r61=var2599}
;seq <java.lang.StringBuffer: int capacity()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(long)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: int capacity()>": 1,"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: void <init>()>": 9,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 39,"<java.lang.StringBuffer: java.lang.String toString()>": 10,"<java.lang.StringBuffer: java.lang.StringBuffer append(long)>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.log4j.HTMLLayout;	r12 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$r1 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$i0 = virtualinvoke $r1.<java.lang.StringBuffer: int capacity()>();	if $i0 <= 1024 goto $r2 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r2 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r2.<java.lang.StringBuffer: void setLength(int)>(0);	$r4 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	$r5 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<tr>");	$r7 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r10);	$r11 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td>");	$r13 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$l1 = r12.<org.apache.log4j.spi.LoggingEvent: long timeStamp>;	$l2 = staticinvoke <org.apache.log4j.spi.LoggingEvent: long getStartTime()>();	$l3 = $l1 - $l2;	virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>($l3);	$r15 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r14 = new java.lang.StringBuffer;	specialinvoke $r14.<java.lang.StringBuffer: void <init>()>();	$r17 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>");	$r16 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r19);	$r20 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getThreadName()>();	$r111 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r20);	$r22 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r21 = new java.lang.StringBuffer;	specialinvoke $r21.<java.lang.StringBuffer: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"");	$r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r111);	$r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" thread\">");	$r26 = virtualinvoke $r25.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26);	$r27 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r27.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r111);	$r29 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r28 = new java.lang.StringBuffer;	specialinvoke $r28.<java.lang.StringBuffer: void <init>()>();	$r31 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>");	$r30 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r33);	$r34 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r34.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"Level\">");	$r36 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>();	$r35 = <org.apache.log4j.Level: org.apache.log4j.Level DEBUG>;	$z0 = virtualinvoke $r36.<org.apache.log4j.Level: boolean equals(java.lang.Object)>($r35);	if $z0 == 0 goto $r38 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>();	$r104 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r104.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<font color=\"#339933\">");	$r105 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r106 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>();	$r107 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r106);	$r108 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r107);	virtualinvoke $r105.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r108);	$r109 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r109.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</font>");	goto [?= $r112 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>];	$r112 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r113 = new java.lang.StringBuffer;	specialinvoke $r113.<java.lang.StringBuffer: void <init>()>();	$r114 = virtualinvoke $r113.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>");	$r115 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r116 = virtualinvoke $r114.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r115);	$r117 = virtualinvoke $r116.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r112.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r117);	$r118 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getLoggerName()>();	$r119 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r118);	$r120 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r121 = new java.lang.StringBuffer;	specialinvoke $r121.<java.lang.StringBuffer: void <init>()>();	$r122 = virtualinvoke $r121.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"");	$r123 = virtualinvoke $r122.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r119);	$r124 = virtualinvoke $r123.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" category\">");	$r125 = virtualinvoke $r124.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r120.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r125);	$r126 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r126.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r119);	$r127 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r128 = new java.lang.StringBuffer;	specialinvoke $r128.<java.lang.StringBuffer: void <init>()>();	$r129 = virtualinvoke $r128.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>");	$r130 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r131 = virtualinvoke $r129.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r130);	$r132 = virtualinvoke $r131.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r127.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r132);	$z2 = r0.<org.apache.log4j.HTMLLayout: boolean locationInfo>;	if $z2 == 0 goto $r43 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r43 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<td title=\"Message\">");	$r44 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r45 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getRenderedMessage()>();	$r46 = staticinvoke <org.apache.log4j.helpers.Transform: java.lang.String escapeTags(java.lang.String)>($r45);	virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r46);	$r48 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r47 = new java.lang.StringBuffer;	specialinvoke $r47.<java.lang.StringBuffer: void <init>()>();	$r50 = virtualinvoke $r47.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</td>");	$r49 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r49);	$r52 = virtualinvoke $r51.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r52);	$r54 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r53 = new java.lang.StringBuffer;	specialinvoke $r53.<java.lang.StringBuffer: void <init>()>();	$r56 = virtualinvoke $r53.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</tr>");	$r55 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r57 = virtualinvoke $r56.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r55);	$r58 = virtualinvoke $r57.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r54.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r58);	$r59 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String getNDC()>();	if $r59 == null goto $r84 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>();	$r84 = virtualinvoke r12.<org.apache.log4j.spi.LoggingEvent: java.lang.String[] getThrowableStrRep()>();	if $r84 == null goto $r60 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r60 = r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf>;	$r61 = virtualinvoke $r60.<java.lang.StringBuffer: java.lang.String toString()>();	return $r61
;block_num 8