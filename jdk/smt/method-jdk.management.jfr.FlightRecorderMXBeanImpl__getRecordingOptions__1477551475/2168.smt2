(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var14 0)
(declare-sort var2481 0)
(declare-sort var186 0)
(declare-sort var915 0)
(declare-sort var2703 0)
(declare-sort var257 0)
(declare-sort var1349 0)
(declare-sort var3416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2481_checkMonitor/-1030450589 () void)
(declare-fun getExistingRecording/538856044 (var14 Int) var186)
(declare-fun var915-init () var915)
(declare-fun <init>/613807010 (var915 Int) void)
(declare-fun getDumpOnExit/-1450390380 (var186) Bool)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-fun var2703_put/1464166817 (var2703 var257 var257) var257)
(declare-fun cast-from-var915-to-var2703 (var915) var2703)
(declare-fun cast-from-String-to-var257 (String) var257)
(declare-fun isToDisk/-26884195 (var186) Bool)
(declare-fun getName/-37513391 (var186) String)
(declare-fun String_valueOf/-333372740 (var257) String)
(declare-fun getMaxAge/1299004573 (var186) var1349)
(declare-fun var3416_formatTimespan/757550071 (var1349 String) String)
(declare-fun getMaxSize/180488144 (var186) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun toString/1541845608 (Int) String)
(declare-fun getDuration/-1109781852 (var186) var1349)
(declare-const null-var14 var14)
(declare-const null-Int Int)
(declare-const var462 var14) ; Statement: r0 := @this: jdk.management.jfr.FlightRecorderMXBeanImpl 
(assert (not (= var462 null-var14)))
(declare-const var3157 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3157 null-Int)))
;(assert var2481_checkMonitor/-1030450589) ; Statement: staticinvoke <jdk.management.jfr.MBeanUtils: void checkMonitor()>() 
(assert true)
(define-const var3282 var186 (getExistingRecording/538856044 var462 var3157)) ; Statement: r1 = specialinvoke r0.<jdk.management.jfr.FlightRecorderMXBeanImpl: jdk.jfr.Recording getExistingRecording(long)>(l0) 
(define-const var3635 var915 var915-init) ; Statement: $r2 = new java.util.HashMap 
(assert true)
;(assert (<init>/613807010 var3635 10)) ; Statement: specialinvoke $r2.<java.util.HashMap: void <init>(int)>(10) 

(declare-const var3635!1 var915)
(declare-const var350 Int)
(assert true)
(define-const var3421 Bool (getDumpOnExit/-1450390380 var3282)) ; Statement: $z0 = virtualinvoke r1.<jdk.jfr.Recording: boolean getDumpOnExit()>() 
(define-const var1431 String (String_valueOf/-1973653463 var3421)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z0) 
;(assert (var2703_put/1464166817 (cast-from-var915-to-var2703 var3635!1) (cast-from-String-to-var257 "dumpOnExit") (cast-from-String-to-var257 var1431))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("dumpOnExit", $r3) 

(declare-const var3635!2 var915)
(declare-const var2950 String)
(declare-const var1431!1 String)
(assert true)
(define-const var104 Bool (isToDisk/-26884195 var3282)) ; Statement: $z1 = virtualinvoke r1.<jdk.jfr.Recording: boolean isToDisk()>() 
(define-const var389 String (String_valueOf/-1973653463 var104)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z1) 
;(assert (var2703_put/1464166817 (cast-from-var915-to-var2703 var3635!2) (cast-from-String-to-var257 "disk") (cast-from-String-to-var257 var389))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("disk", $r4) 

(declare-const var3635!3 var915)
(declare-const var3103 String)
(declare-const var389!1 String)
(assert true)
(define-const var3458 String (getName/-37513391 var3282)) ; Statement: $r5 = virtualinvoke r1.<jdk.jfr.Recording: java.lang.String getName()>() 
(define-const var546 String (String_valueOf/-333372740 (cast-from-String-to-var257 var3458))) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r5) 
;(assert (var2703_put/1464166817 (cast-from-var915-to-var2703 var3635!3) (cast-from-String-to-var257 "name") (cast-from-String-to-var257 var546))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("name", $r6) 

(declare-const var3635!4 var915)
(declare-const var2967 String)
(declare-const var546!1 String)
(assert true)
(define-const var139 var1349 (getMaxAge/1299004573 var3282)) ; Statement: $r7 = virtualinvoke r1.<jdk.jfr.Recording: java.time.Duration getMaxAge()>() 
(define-const var3227 String (var3416_formatTimespan/757550071 var139 " ")) ; Statement: $r8 = staticinvoke <jdk.jfr.internal.management.ManagementSupport: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r7, " ") 
;(assert (var2703_put/1464166817 (cast-from-var915-to-var2703 var3635!4) (cast-from-String-to-var257 "maxAge") (cast-from-String-to-var257 var3227))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("maxAge", $r8) 

(declare-const var3635!5 var915)
(declare-const var464 String)
(declare-const var3227!1 String)
(assert true)
(define-const var1403 Int (getMaxSize/180488144 var3282)) ; Statement: $l1 = virtualinvoke r1.<jdk.jfr.Recording: long getMaxSize()>() 
(define-const var663 Int (Int_valueOf/-1102777585 var1403)) ; Statement: r9 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1) 
 ; Statement: if r9 != null goto $r13 = virtualinvoke r9.<java.lang.Long: java.lang.String toString()>() 
(assert (not (= var663 null-Int))) ; Cond: r9 != null 
(assert true)
(define-const var2181 String (toString/1541845608 var663)) ; Statement: $r13 = virtualinvoke r9.<java.lang.Long: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var355 String (String_valueOf/-333372740 (cast-from-String-to-var257 var2181))) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r13) 
;(assert (var2703_put/1464166817 (cast-from-var915-to-var2703 var3635!5) (cast-from-String-to-var257 "maxSize") (cast-from-String-to-var257 var355))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("maxSize", $r10) 

(declare-const var3635!6 var915)
(declare-const var3467 String)
(declare-const var355!1 String)
(assert true)
(define-const var481 var1349 (getDuration/-1109781852 var3282)) ; Statement: $r11 = virtualinvoke r1.<jdk.jfr.Recording: java.time.Duration getDuration()>() 
(define-const var585 String (var3416_formatTimespan/757550071 var481 " ")) ; Statement: $r12 = staticinvoke <jdk.jfr.internal.management.ManagementSupport: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r11, " ") 
;(assert (var2703_put/1464166817 (cast-from-var915-to-var2703 var3635!6) (cast-from-String-to-var257 "duration") (cast-from-String-to-var257 var585))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("duration", $r12) 

(declare-const var3635!7 var915)
(declare-const var1577 String)
(declare-const var585!1 String)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2481_checkMonitor/-1030450589=([], void), getExistingRecording/538856044=([jdk.management.jfr.FlightRecorderMXBeanImpl, long], jdk.jfr.Recording), var915-init=([], java.util.HashMap), <init>/613807010=([java.util.HashMap, int], void), getDumpOnExit/-1450390380=([jdk.jfr.Recording], boolean), String_valueOf/-1973653463=([boolean], java.lang.String), var2703_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var915-to-var2703=([java.util.HashMap], java.util.Map), cast-from-String-to-var257=([java.lang.String], java.lang.Object), isToDisk/-26884195=([jdk.jfr.Recording], boolean), getName/-37513391=([jdk.jfr.Recording], java.lang.String), String_valueOf/-333372740=([java.lang.Object], java.lang.String), getMaxAge/1299004573=([jdk.jfr.Recording], java.time.Duration), var3416_formatTimespan/757550071=([java.time.Duration, java.lang.String], java.lang.String), getMaxSize/180488144=([jdk.jfr.Recording], long), Int_valueOf/-1102777585=([long], java.lang.Long), toString/1541845608=([java.lang.Long], java.lang.String), getDuration/-1109781852=([jdk.jfr.Recording], java.time.Duration)}
; {var14=jdk.management.jfr.FlightRecorderMXBeanImpl, var462=r0, var3157=l0, var2481=jdk.management.jfr.MBeanUtils, var186=jdk.jfr.Recording, var3282=r1, var915=java.util.HashMap, var3635=$r2, var350=10, var3421=$z0, var1431=$r3, var2703=java.util.Map, var257=java.lang.Object, var2950="dumpOnExit", var104=$z1, var389=$r4, var3103="disk", var3458=$r5, var546=$r6, var2967="name", var1349=java.time.Duration, var139=$r7, var3416=jdk.jfr.internal.management.ManagementSupport, var3227=$r8, var464="maxAge", var1403=$l1, var663=r9, var2181=$r13, var355=$r10, var3467="maxSize", var481=$r11, var585=$r12, var1577="duration"}
; {jdk.management.jfr.FlightRecorderMXBeanImpl=var14, r0=var462, l0=var3157, jdk.management.jfr.MBeanUtils=var2481, jdk.jfr.Recording=var186, r1=var3282, java.util.HashMap=var915, $r2=var3635, 10=var350, $z0=var3421, $r3=var1431, java.util.Map=var2703, java.lang.Object=var257, "dumpOnExit"=var2950, $z1=var104, $r4=var389, "disk"=var3103, $r5=var3458, $r6=var546, "name"=var2967, java.time.Duration=var1349, $r7=var139, jdk.jfr.internal.management.ManagementSupport=var3416, $r8=var3227, "maxAge"=var464, $l1=var1403, r9=var663, $r13=var2181, $r10=var355, "maxSize"=var3467, $r11=var481, $r12=var585, "duration"=var1577}
;seq <java.lang.String: java.lang.String valueOf(boolean)>;	<java.lang.String: java.lang.String valueOf(boolean)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.Long: java.lang.String toString()>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 2,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 2}
;stmts r0 := @this: jdk.management.jfr.FlightRecorderMXBeanImpl;	l0 := @parameter0: long;	staticinvoke <jdk.management.jfr.MBeanUtils: void checkMonitor()>();	r1 = specialinvoke r0.<jdk.management.jfr.FlightRecorderMXBeanImpl: jdk.jfr.Recording getExistingRecording(long)>(l0);	$r2 = new java.util.HashMap;	specialinvoke $r2.<java.util.HashMap: void <init>(int)>(10);	$z0 = virtualinvoke r1.<jdk.jfr.Recording: boolean getDumpOnExit()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z0);	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("dumpOnExit", $r3);	$z1 = virtualinvoke r1.<jdk.jfr.Recording: boolean isToDisk()>();	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z1);	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("disk", $r4);	$r5 = virtualinvoke r1.<jdk.jfr.Recording: java.lang.String getName()>();	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r5);	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("name", $r6);	$r7 = virtualinvoke r1.<jdk.jfr.Recording: java.time.Duration getMaxAge()>();	$r8 = staticinvoke <jdk.jfr.internal.management.ManagementSupport: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r7, " ");	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("maxAge", $r8);	$l1 = virtualinvoke r1.<jdk.jfr.Recording: long getMaxSize()>();	r9 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1);	if r9 != null goto $r13 = virtualinvoke r9.<java.lang.Long: java.lang.String toString()>();	$r13 = virtualinvoke r9.<java.lang.Long: java.lang.String toString()>();	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r13);	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("maxSize", $r10);	$r11 = virtualinvoke r1.<jdk.jfr.Recording: java.time.Duration getDuration()>();	$r12 = staticinvoke <jdk.jfr.internal.management.ManagementSupport: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r11, " ");	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("duration", $r12);	return $r2
;block_num 3