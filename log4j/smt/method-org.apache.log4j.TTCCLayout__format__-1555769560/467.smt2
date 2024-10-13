(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2331 0)
(declare-sort var2812 0)
(declare-sort var3269 0)
(declare-sort var601 0)
(declare-sort var3487 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-806237388 (var2331) String)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun dateFormat/2095076289 (var3269 String var2812) void)
(declare-fun cast-from-var2331-to-var3269 (var2331) var3269)
(declare-fun threadPrinting/-806237388 (var2331) Bool)
(declare-fun getLevel/-1962581926 (var2812) var601)
(declare-fun toString/2069587822 (var3487) String)
(declare-fun cast-from-var601-to-var3487 (var601) var3487)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun categoryPrefixing/-806237388 (var2331) Bool)
(declare-fun contextPrinting/-806237388 (var2331) Bool)
(declare-fun getRenderedMessage/-847539433 (var2812) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2331 var2331)
(declare-const null-var2812 var2812)
(declare-const var2331-LINE_SEP String)
(declare-const var3779 var2331) ; Statement: r0 := @this: org.apache.log4j.TTCCLayout 
(assert (not (= var3779 null-var2331)))
(declare-const var1347 var2812) ; Statement: r2 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var1347 null-var2812)))
(define-const var1647 String (buf/-806237388 var3779)) ; Statement: $r1 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1647 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1647!1 String)
(declare-const var3369 Int)
(define-const var1372 String (buf/-806237388 var3779)) ; Statement: $r3 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (dateFormat/2095076289 (cast-from-var2331-to-var3269 var3779) var1372 var1347)) ; Statement: virtualinvoke r0.<org.apache.log4j.TTCCLayout: void dateFormat(java.lang.StringBuffer,org.apache.log4j.spi.LoggingEvent)>($r3, r2) 

(declare-const var3779!1 var2331)
(declare-const var1372!1 String)
(declare-const var1347!1 var2812)
(define-const var939 Bool (threadPrinting/-806237388 var3779!1)) ; Statement: $z0 = r0.<org.apache.log4j.TTCCLayout: boolean threadPrinting> 
 ; Statement: if $z0 == 0 goto $r4 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf> 
(assert (= (ite var939 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2149 String (buf/-806237388 var3779!1)) ; Statement: $r4 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var1812 var601 (getLevel/-1962581926 var1347!1)) ; Statement: $r5 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>() 
(assert true)
(define-const var3170 String (toString/2069587822 (cast-from-var601-to-var3487 var1812))) ; Statement: $r6 = virtualinvoke $r5.<org.apache.log4j.Level: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var2149 var3170)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var2149!1 String)
(assert (str.prefixof var2149 var2149!1))
(define-const var2531 String (buf/-806237388 var3779!1)) ; Statement: $r7 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2531 32)) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var2531!1 String)
(declare-const var1900 Int)
(define-const var2522 Bool (categoryPrefixing/-806237388 var3779!1)) ; Statement: $z1 = r0.<org.apache.log4j.TTCCLayout: boolean categoryPrefixing> 
 ; Statement: if $z1 == 0 goto $z2 = r0.<org.apache.log4j.TTCCLayout: boolean contextPrinting> 
(assert (= (ite var2522 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3800 Bool (contextPrinting/-806237388 var3779!1)) ; Statement: $z2 = r0.<org.apache.log4j.TTCCLayout: boolean contextPrinting> 
 ; Statement: if $z2 == 0 goto $r18 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf> 
(assert (= (ite var3800 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1963 String (buf/-806237388 var3779!1)) ; Statement: $r18 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1963 "- ")) ; Statement: virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("- ") 
(declare-const var1963!1 String)
(assert (str.prefixof var1963 var1963!1))
(define-const var1611 String (buf/-806237388 var3779!1)) ; Statement: $r19 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var3440 String (getRenderedMessage/-847539433 var1347!1)) ; Statement: $r20 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: java.lang.String getRenderedMessage()>() 
(assert true)
;(assert (append/1560614132 var1611 var3440)) ; Statement: virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20) 
(declare-const var1611!1 String)
(assert (str.prefixof var1611 var1611!1))
(define-const var2240 String (buf/-806237388 var3779!1)) ; Statement: $r21 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf> 
(define-const var1919 String var2331-LINE_SEP) ; Statement: $r22 = <org.apache.log4j.TTCCLayout: java.lang.String LINE_SEP> 
(assert true)
;(assert (append/1560614132 var2240 var1919)) ; Statement: virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r22) 
(declare-const var2240!1 String)
(assert (str.prefixof var2240 var2240!1))
(define-const var2463 String (buf/-806237388 var3779!1)) ; Statement: $r23 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf> 
(assert true)
(define-const var3414 String (toString/-222306083 var2463)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-806237388=([org.apache.log4j.TTCCLayout], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), dateFormat/2095076289=([org.apache.log4j.helpers.DateLayout, java.lang.StringBuffer, org.apache.log4j.spi.LoggingEvent], void), cast-from-var2331-to-var3269=([org.apache.log4j.TTCCLayout], org.apache.log4j.helpers.DateLayout), threadPrinting/-806237388=([org.apache.log4j.TTCCLayout], boolean), getLevel/-1962581926=([org.apache.log4j.spi.LoggingEvent], org.apache.log4j.Level), toString/2069587822=([org.apache.log4j.Priority], java.lang.String), cast-from-var601-to-var3487=([org.apache.log4j.Level], org.apache.log4j.Priority), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), categoryPrefixing/-806237388=([org.apache.log4j.TTCCLayout], boolean), contextPrinting/-806237388=([org.apache.log4j.TTCCLayout], boolean), getRenderedMessage/-847539433=([org.apache.log4j.spi.LoggingEvent], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2331=org.apache.log4j.TTCCLayout, var3779=r0, var2812=org.apache.log4j.spi.LoggingEvent, var1347=r2, var1647=$r1, var3369=0, var1372=$r3, var3269=org.apache.log4j.helpers.DateLayout, var939=$z0, var2149=$r4, var601=org.apache.log4j.Level, var1812=$r5, var3487=org.apache.log4j.Priority, var3170=$r6, var2531=$r7, var1900=32, var2522=$z1, var3800=$z2, var1963=$r18, var1611=$r19, var3440=$r20, var2240=$r21, var1919=$r22, var2463=$r23, var3414=$r24}
; {org.apache.log4j.TTCCLayout=var2331, r0=var3779, org.apache.log4j.spi.LoggingEvent=var2812, r2=var1347, $r1=var1647, 0=var3369, $r3=var1372, org.apache.log4j.helpers.DateLayout=var3269, $z0=var939, $r4=var2149, org.apache.log4j.Level=var601, $r5=var1812, org.apache.log4j.Priority=var3487, $r6=var3170, $r7=var2531, 32=var1900, $z1=var2522, $z2=var3800, $r18=var1963, $r19=var1611, $r20=var3440, $r21=var2240, $r22=var1919, $r23=var2463, $r24=var3414}
;seq <java.lang.StringBuffer: void setLength(int)>;	<org.apache.log4j.Priority: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.TTCCLayout;	r2 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$r1 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf>;	virtualinvoke r0.<org.apache.log4j.TTCCLayout: void dateFormat(java.lang.StringBuffer,org.apache.log4j.spi.LoggingEvent)>($r3, r2);	$z0 = r0.<org.apache.log4j.TTCCLayout: boolean threadPrinting>;	if $z0 == 0 goto $r4 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf>;	$r4 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf>;	$r5 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>();	$r6 = virtualinvoke $r5.<org.apache.log4j.Level: java.lang.String toString()>();	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	$r7 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf>;	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$z1 = r0.<org.apache.log4j.TTCCLayout: boolean categoryPrefixing>;	if $z1 == 0 goto $z2 = r0.<org.apache.log4j.TTCCLayout: boolean contextPrinting>;	$z2 = r0.<org.apache.log4j.TTCCLayout: boolean contextPrinting>;	if $z2 == 0 goto $r18 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf>;	$r18 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf>;	virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("- ");	$r19 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf>;	$r20 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: java.lang.String getRenderedMessage()>();	virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20);	$r21 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf>;	$r22 = <org.apache.log4j.TTCCLayout: java.lang.String LINE_SEP>;	virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r22);	$r23 = r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf>;	$r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.String toString()>();	return $r24
;block_num 4