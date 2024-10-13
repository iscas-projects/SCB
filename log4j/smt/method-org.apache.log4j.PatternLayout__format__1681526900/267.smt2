(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3238 0)
(declare-sort var3536 0)
(declare-sort var1544 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sbuf/-2071271056 (var3238) String)
(declare-fun capacity/792304043 (String) Int)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun head/-2071271056 (var3238) var1544)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3238 var3238)
(declare-const null-var3536 var3536)
(declare-const null-var1544 var1544)
(declare-const var804 var3238) ; Statement: r0 := @this: org.apache.log4j.PatternLayout 
(assert (not (= var804 null-var3238)))
(declare-const var3208 var3536) ; Statement: r5 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var3208 null-var3536)))
(define-const var99 String (sbuf/-2071271056 var804)) ; Statement: $r1 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var3739 Int (capacity/792304043 var99)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuffer: int capacity()>() 
 ; Statement: if $i0 <= 1024 goto $r2 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> 
(assert (not (<= var3739 1024))) ; Negate: Cond: $i0 <= 1024  
(define-const var2804 String String-init) ; Statement: $r7 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var2804 256)) ; Statement: specialinvoke $r7.<java.lang.StringBuffer: void <init>(int)>(256) 

(declare-const var2804!1 String)
(declare-const var2297 Int)
(declare-const var804!1 var3238)
(assert (not (= var804!1 null-var3238)))
(assert (= (sbuf/-2071271056 var804!1) var2804!1)) ; Statement: r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> = $r7 
 ; Statement: goto [?= r8 = r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternConverter head>] 
(assert true) ; Non Conditional
(define-const var1243 var1544 (head/-2071271056 var804!1)) ; Statement: r8 = r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternConverter head> 
(assert true) ; Non Conditional
 ; Statement: if r8 == null goto $r3 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> 
(assert (= var1243 null-var1544)) ; Cond: r8 == null 
(define-const var3983 String (sbuf/-2071271056 var804!1)) ; Statement: $r3 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> 
(assert true)
(define-const var3356 String (toString/-222306083 var3983)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {sbuf/-2071271056=([org.apache.log4j.PatternLayout], java.lang.StringBuffer), capacity/792304043=([java.lang.StringBuffer], int), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), head/-2071271056=([org.apache.log4j.PatternLayout], org.apache.log4j.helpers.PatternConverter), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3238=org.apache.log4j.PatternLayout, var804=r0, var3536=org.apache.log4j.spi.LoggingEvent, var3208=r5, var99=$r1, var3739=$i0, var2804=$r7, var2297=256, var1544=org.apache.log4j.helpers.PatternConverter, var1243=r8, var3983=$r3, var3356=$r4}
; {org.apache.log4j.PatternLayout=var3238, r0=var804, org.apache.log4j.spi.LoggingEvent=var3536, r5=var3208, $r1=var99, $i0=var3739, $r7=var2804, 256=var2297, org.apache.log4j.helpers.PatternConverter=var1544, r8=var1243, $r3=var3983, $r4=var3356}
;seq <java.lang.StringBuffer: int capacity()>;	<java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: int capacity()>": 1,"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.PatternLayout;	r5 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$r1 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf>;	$i0 = virtualinvoke $r1.<java.lang.StringBuffer: int capacity()>();	if $i0 <= 1024 goto $r2 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf>;	$r7 = new java.lang.StringBuffer;	specialinvoke $r7.<java.lang.StringBuffer: void <init>(int)>(256);	r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> = $r7;	goto [?= r8 = r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternConverter head>];	r8 = r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternConverter head>;	if r8 == null goto $r3 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf>;	$r3 = r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 5