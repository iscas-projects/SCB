(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2460 0)
(declare-sort var3954 0)
(declare-sort var2743 0)
(declare-sort var3567 0)
(declare-sort var707 0)
(declare-sort var3388 0)
(declare-sort var1741 0)
(declare-sort var1430 0)
(declare-sort var1132 0)
(declare-sort var1849 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1408628678 (var3954 String String) void)
(declare-fun cast-from-var2460-to-var3954 (var2460) var3954)
(declare-fun var3567-init () var3567)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3388_warn/-1468683859 (String var1741) void)
(declare-fun cast-from-var707-to-var1741 (var707) var1741)
(declare-fun <init>/-1862704206 (var3567 String) void)
(declare-fun cast-from-var3567-to-var1430 (var3567) var1430)
(declare-fun var1132-init () var1132)
(declare-fun <init>/885517303 (var1132 var1430) void)
(declare-fun cast-from-var1132-to-var1430 (var1132) var1430)
(declare-fun var1849-init () var1849)
(declare-fun <init>/-1636339627 (var1849 var1430 Int) void)
(declare-fun df/1621934598 (var2460) var1849)
(declare-const null-var2460 var2460)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const null-var707 var707)
(declare-const var3189 var2460) ; Statement: r0 := @this: org.apache.log4j.pattern.DatePatternConverter 
(assert (not (= var3189 null-var2460)))
(declare-const var1687 (Array Int String)) ; Statement: r1 := @parameter0: java.lang.String[] 
(assert (not (= var1687 null-__Array__Int__String__)))
(assert true)
;(assert (<init>/-1408628678 (cast-from-var2460-to-var3954 var3189) "Date" "date")) ; Statement: specialinvoke r0.<org.apache.log4j.pattern.LoggingEventPatternConverter: void <init>(java.lang.String,java.lang.String)>("Date", "date") 

(declare-const var3189!1 var2460)
(declare-const var2151 String)
(declare-const var241 String)
 ; Statement: if r1 == null goto r10 = null 
(assert (= var1687 null-__Array__Int__String__)) ; Cond: r1 == null 
(define-const var2300 String null-String) ; Statement: r10 = null 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r10 == null goto r11 = "yyyy-MM-dd HH:mm:ss,SSS" 
(assert (= var2300 null-String)) ; Cond: r10 == null 
(define-const var3921 String "yyyy-MM-dd HH:mm:ss,SSS") ; Statement: r11 = "yyyy-MM-dd HH:mm:ss,SSS" 
 ; Statement: goto [?= i2 = 1000] 
(assert true) ; Non Conditional
(define-const var2120 Int 1000) ; Statement: i2 = 1000 
(define-const var3436 var3567 var3567-init) ; Statement: $r12 = new java.text.SimpleDateFormat 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2763 var707) ; Statement: $r4 := @caughtexception 
(assert (not (= var2763 null-var707)))
(define-const var657 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var657)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var657!1 String)
(assert true)
(define-const var1486 String (append/1560614132 var657!1 "Could not instantiate SimpleDateFormat with pattern ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not instantiate SimpleDateFormat with pattern ") 
(declare-const var657!2 String)
(assert (str.prefixof var657!1 var657!2))
(assert true)
(define-const var619 String (append/1560614132 var1486 var2300)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r10) 
(declare-const var1486!1 String)
(assert (str.prefixof var1486 var1486!1))
(assert true)
(define-const var2472 String (toString/-222306083 var619)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3388_warn/-1468683859 var2472 (cast-from-var707-to-var1741 var2763))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String,java.lang.Throwable)>($r8, $r4) 

(declare-const var2472!1 String)
(declare-const var2763!1 var707)
(define-const var2305 var3567 var3567-init) ; Statement: $r9 = new java.text.SimpleDateFormat 
(assert true)
;(assert (<init>/-1862704206 var2305 "yyyy-MM-dd HH:mm:ss,SSS")) ; Statement: specialinvoke $r9.<java.text.SimpleDateFormat: void <init>(java.lang.String)>("yyyy-MM-dd HH:mm:ss,SSS") 

(declare-const var2305!1 var3567)
(declare-const var3323 String)
(define-const var537 var1430 (cast-from-var3567-to-var1430 var2305!1)) ; Statement: r13 = $r9 
(assert true) ; Non Conditional
 ; Statement: if r1 == null goto $r2 = new org.apache.log4j.pattern.DatePatternConverter$DefaultZoneDateFormat 
(assert (= var1687 null-__Array__Int__String__)) ; Cond: r1 == null 
(define-const var3526 var1132 var1132-init) ; Statement: $r2 = new org.apache.log4j.pattern.DatePatternConverter$DefaultZoneDateFormat 
(assert true)
;(assert (<init>/885517303 var3526 var537)) ; Statement: specialinvoke $r2.<org.apache.log4j.pattern.DatePatternConverter$DefaultZoneDateFormat: void <init>(java.text.DateFormat)>(r13) 

(declare-const var3526!1 var1132)
(declare-const var537!1 var1430)
(define-const var537!2 var1430 (cast-from-var1132-to-var1430 var3526!1)) ; Statement: r13 = $r2 
(assert true) ; Non Conditional
(define-const var1283 var1849 var1849-init) ; Statement: $r15 = new org.apache.log4j.pattern.CachedDateFormat 
(assert true)
;(assert (<init>/-1636339627 var1283 var537!2 var2120)) ; Statement: specialinvoke $r15.<org.apache.log4j.pattern.CachedDateFormat: void <init>(java.text.DateFormat,int)>(r13, i2) 

(declare-const var1283!1 var1849)
(declare-const var537!3 var1430)
(declare-const var2120!1 Int)
(declare-const var3189!2 var2460)
(assert (not (= var3189!2 null-var2460)))
(assert (= (df/1621934598 var3189!2) var1283!1)) ; Statement: r0.<org.apache.log4j.pattern.DatePatternConverter: org.apache.log4j.pattern.CachedDateFormat df> = $r15 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1408628678=([org.apache.log4j.pattern.LoggingEventPatternConverter, java.lang.String, java.lang.String], void), cast-from-var2460-to-var3954=([org.apache.log4j.pattern.DatePatternConverter], org.apache.log4j.pattern.LoggingEventPatternConverter), var3567-init=([], java.text.SimpleDateFormat), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3388_warn/-1468683859=([java.lang.String, java.lang.Throwable], void), cast-from-var707-to-var1741=([java.lang.IllegalArgumentException], java.lang.Throwable), <init>/-1862704206=([java.text.SimpleDateFormat, java.lang.String], void), cast-from-var3567-to-var1430=([java.text.SimpleDateFormat], java.text.DateFormat), var1132-init=([], org.apache.log4j.pattern.DatePatternConverter$DefaultZoneDateFormat), <init>/885517303=([org.apache.log4j.pattern.DatePatternConverter$DefaultZoneDateFormat, java.text.DateFormat], void), cast-from-var1132-to-var1430=([org.apache.log4j.pattern.DatePatternConverter$DefaultZoneDateFormat], java.text.DateFormat), var1849-init=([], org.apache.log4j.pattern.CachedDateFormat), <init>/-1636339627=([org.apache.log4j.pattern.CachedDateFormat, java.text.DateFormat, int], void), df/1621934598=([org.apache.log4j.pattern.DatePatternConverter], org.apache.log4j.pattern.CachedDateFormat)}
; {var2460=org.apache.log4j.pattern.DatePatternConverter, var3189=r0, var1687=r1, var3954=org.apache.log4j.pattern.LoggingEventPatternConverter, var2151="Date", var241="date", var2743=null_type, var2300=r10, var3921=r11, var2120=i2, var3567=java.text.SimpleDateFormat, var3436=$r12, var707=java.lang.IllegalArgumentException, var2763=$r4, var657=$r5, var1486=$r6, var619=$r7, var2472=$r8, var3388=org.apache.log4j.helpers.LogLog, var1741=java.lang.Throwable, var2305=$r9, var3323="yyyy-MM-dd HH:mm:ss,SSS", var1430=java.text.DateFormat, var537=r13, var1132=org.apache.log4j.pattern.DatePatternConverter$DefaultZoneDateFormat, var3526=$r2, var1849=org.apache.log4j.pattern.CachedDateFormat, var1283=$r15}
; {org.apache.log4j.pattern.DatePatternConverter=var2460, r0=var3189, r1=var1687, org.apache.log4j.pattern.LoggingEventPatternConverter=var3954, "Date"=var2151, "date"=var241, null_type=var2743, r10=var2300, r11=var3921, i2=var2120, java.text.SimpleDateFormat=var3567, $r12=var3436, java.lang.IllegalArgumentException=var707, $r4=var2763, $r5=var657, $r6=var1486, $r7=var619, $r8=var2472, org.apache.log4j.helpers.LogLog=var3388, java.lang.Throwable=var1741, $r9=var2305, "yyyy-MM-dd HH:mm:ss,SSS"=var3323, java.text.DateFormat=var1430, r13=var537, org.apache.log4j.pattern.DatePatternConverter$DefaultZoneDateFormat=var1132, $r2=var3526, org.apache.log4j.pattern.CachedDateFormat=var1849, $r15=var1283}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.pattern.DatePatternConverter;	r1 := @parameter0: java.lang.String[];	specialinvoke r0.<org.apache.log4j.pattern.LoggingEventPatternConverter: void <init>(java.lang.String,java.lang.String)>("Date", "date");	if r1 == null goto r10 = null;	r10 = null;	goto [?= (branch)];	if r10 == null goto r11 = "yyyy-MM-dd HH:mm:ss,SSS";	r11 = "yyyy-MM-dd HH:mm:ss,SSS";	goto [?= i2 = 1000];	i2 = 1000;	$r12 = new java.text.SimpleDateFormat;	$r4 := @caughtexception;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not instantiate SimpleDateFormat with pattern ");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r10);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String,java.lang.Throwable)>($r8, $r4);	$r9 = new java.text.SimpleDateFormat;	specialinvoke $r9.<java.text.SimpleDateFormat: void <init>(java.lang.String)>("yyyy-MM-dd HH:mm:ss,SSS");	r13 = $r9;	if r1 == null goto $r2 = new org.apache.log4j.pattern.DatePatternConverter$DefaultZoneDateFormat;	$r2 = new org.apache.log4j.pattern.DatePatternConverter$DefaultZoneDateFormat;	specialinvoke $r2.<org.apache.log4j.pattern.DatePatternConverter$DefaultZoneDateFormat: void <init>(java.text.DateFormat)>(r13);	r13 = $r2;	$r15 = new org.apache.log4j.pattern.CachedDateFormat;	specialinvoke $r15.<org.apache.log4j.pattern.CachedDateFormat: void <init>(java.text.DateFormat,int)>(r13, i2);	r0.<org.apache.log4j.pattern.DatePatternConverter: org.apache.log4j.pattern.CachedDateFormat df> = $r15;	return
;block_num 9