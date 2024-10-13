(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1320 0)
(declare-sort var519 0)
(declare-sort var425 0)
(declare-sort var3605 0)
(declare-sort var3226 0)
(declare-sort var1277 0)
(declare-sort var965 0)
(declare-sort var3168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var519_checkMonitor/-1030450589 () void)
(declare-fun getExistingRecording/538856044 (var1320 Int) var425)
(declare-fun var3605-init () var3605)
(declare-fun <init>/613807010 (var3605 Int) void)
(declare-fun getDumpOnExit/-1450390380 (var425) Bool)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-fun var3226_put/1464166817 (var3226 var1277 var1277) var1277)
(declare-fun cast-from-var3605-to-var3226 (var3605) var3226)
(declare-fun cast-from-String-to-var1277 (String) var1277)
(declare-fun isToDisk/-26884195 (var425) Bool)
(declare-fun getName/-37513391 (var425) String)
(declare-fun String_valueOf/-333372740 (var1277) String)
(declare-fun getMaxAge/1299004573 (var425) var965)
(declare-fun var3168_formatTimespan/757550071 (var965 String) String)
(declare-fun getMaxSize/180488144 (var425) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun getDuration/-1109781852 (var425) var965)
(declare-const null-var1320 var1320)
(declare-const null-Int Int)
(declare-const var1391 var1320) ; Statement: r0 := @this: jdk.management.jfr.FlightRecorderMXBeanImpl 
(assert (not (= var1391 null-var1320)))
(declare-const var538 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var538 null-Int)))
;(assert var519_checkMonitor/-1030450589) ; Statement: staticinvoke <jdk.management.jfr.MBeanUtils: void checkMonitor()>() 
(assert true)
(define-const var544 var425 (getExistingRecording/538856044 var1391 var538)) ; Statement: r1 = specialinvoke r0.<jdk.management.jfr.FlightRecorderMXBeanImpl: jdk.jfr.Recording getExistingRecording(long)>(l0) 
(define-const var3319 var3605 var3605-init) ; Statement: $r2 = new java.util.HashMap 
(assert true)
;(assert (<init>/613807010 var3319 10)) ; Statement: specialinvoke $r2.<java.util.HashMap: void <init>(int)>(10) 

(declare-const var3319!1 var3605)
(declare-const var810 Int)
(assert true)
(define-const var1602 Bool (getDumpOnExit/-1450390380 var544)) ; Statement: $z0 = virtualinvoke r1.<jdk.jfr.Recording: boolean getDumpOnExit()>() 
(define-const var2891 String (String_valueOf/-1973653463 var1602)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z0) 
;(assert (var3226_put/1464166817 (cast-from-var3605-to-var3226 var3319!1) (cast-from-String-to-var1277 "dumpOnExit") (cast-from-String-to-var1277 var2891))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("dumpOnExit", $r3) 

(declare-const var3319!2 var3605)
(declare-const var2466 String)
(declare-const var2891!1 String)
(assert true)
(define-const var2732 Bool (isToDisk/-26884195 var544)) ; Statement: $z1 = virtualinvoke r1.<jdk.jfr.Recording: boolean isToDisk()>() 
(define-const var3240 String (String_valueOf/-1973653463 var2732)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z1) 
;(assert (var3226_put/1464166817 (cast-from-var3605-to-var3226 var3319!2) (cast-from-String-to-var1277 "disk") (cast-from-String-to-var1277 var3240))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("disk", $r4) 

(declare-const var3319!3 var3605)
(declare-const var3482 String)
(declare-const var3240!1 String)
(assert true)
(define-const var2885 String (getName/-37513391 var544)) ; Statement: $r5 = virtualinvoke r1.<jdk.jfr.Recording: java.lang.String getName()>() 
(define-const var3607 String (String_valueOf/-333372740 (cast-from-String-to-var1277 var2885))) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r5) 
;(assert (var3226_put/1464166817 (cast-from-var3605-to-var3226 var3319!3) (cast-from-String-to-var1277 "name") (cast-from-String-to-var1277 var3607))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("name", $r6) 

(declare-const var3319!4 var3605)
(declare-const var3171 String)
(declare-const var3607!1 String)
(assert true)
(define-const var3202 var965 (getMaxAge/1299004573 var544)) ; Statement: $r7 = virtualinvoke r1.<jdk.jfr.Recording: java.time.Duration getMaxAge()>() 
(define-const var1763 String (var3168_formatTimespan/757550071 var3202 " ")) ; Statement: $r8 = staticinvoke <jdk.jfr.internal.management.ManagementSupport: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r7, " ") 
;(assert (var3226_put/1464166817 (cast-from-var3605-to-var3226 var3319!4) (cast-from-String-to-var1277 "maxAge") (cast-from-String-to-var1277 var1763))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("maxAge", $r8) 

(declare-const var3319!5 var3605)
(declare-const var282 String)
(declare-const var1763!1 String)
(assert true)
(define-const var1758 Int (getMaxSize/180488144 var544)) ; Statement: $l1 = virtualinvoke r1.<jdk.jfr.Recording: long getMaxSize()>() 
(define-const var463 Int (Int_valueOf/-1102777585 var1758)) ; Statement: r9 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1) 
 ; Statement: if r9 != null goto $r13 = virtualinvoke r9.<java.lang.Long: java.lang.String toString()>() 
(assert (not (not (= var463 null-Int)))) ; Negate: Cond: r9 != null  
(define-const var2822 String "0") ; Statement: $r13 = "0" 
 ; Statement: goto [?= $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r13)] 
(assert true) ; Non Conditional
(define-const var3819 String (String_valueOf/-333372740 (cast-from-String-to-var1277 var2822))) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r13) 
;(assert (var3226_put/1464166817 (cast-from-var3605-to-var3226 var3319!5) (cast-from-String-to-var1277 "maxSize") (cast-from-String-to-var1277 var3819))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("maxSize", $r10) 

(declare-const var3319!6 var3605)
(declare-const var161 String)
(declare-const var3819!1 String)
(assert true)
(define-const var3056 var965 (getDuration/-1109781852 var544)) ; Statement: $r11 = virtualinvoke r1.<jdk.jfr.Recording: java.time.Duration getDuration()>() 
(define-const var3602 String (var3168_formatTimespan/757550071 var3056 " ")) ; Statement: $r12 = staticinvoke <jdk.jfr.internal.management.ManagementSupport: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r11, " ") 
;(assert (var3226_put/1464166817 (cast-from-var3605-to-var3226 var3319!6) (cast-from-String-to-var1277 "duration") (cast-from-String-to-var1277 var3602))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("duration", $r12) 

(declare-const var3319!7 var3605)
(declare-const var1062 String)
(declare-const var3602!1 String)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var519_checkMonitor/-1030450589=([], void), getExistingRecording/538856044=([jdk.management.jfr.FlightRecorderMXBeanImpl, long], jdk.jfr.Recording), var3605-init=([], java.util.HashMap), <init>/613807010=([java.util.HashMap, int], void), getDumpOnExit/-1450390380=([jdk.jfr.Recording], boolean), String_valueOf/-1973653463=([boolean], java.lang.String), var3226_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3605-to-var3226=([java.util.HashMap], java.util.Map), cast-from-String-to-var1277=([java.lang.String], java.lang.Object), isToDisk/-26884195=([jdk.jfr.Recording], boolean), getName/-37513391=([jdk.jfr.Recording], java.lang.String), String_valueOf/-333372740=([java.lang.Object], java.lang.String), getMaxAge/1299004573=([jdk.jfr.Recording], java.time.Duration), var3168_formatTimespan/757550071=([java.time.Duration, java.lang.String], java.lang.String), getMaxSize/180488144=([jdk.jfr.Recording], long), Int_valueOf/-1102777585=([long], java.lang.Long), getDuration/-1109781852=([jdk.jfr.Recording], java.time.Duration)}
; {var1320=jdk.management.jfr.FlightRecorderMXBeanImpl, var1391=r0, var538=l0, var519=jdk.management.jfr.MBeanUtils, var425=jdk.jfr.Recording, var544=r1, var3605=java.util.HashMap, var3319=$r2, var810=10, var1602=$z0, var2891=$r3, var3226=java.util.Map, var1277=java.lang.Object, var2466="dumpOnExit", var2732=$z1, var3240=$r4, var3482="disk", var2885=$r5, var3607=$r6, var3171="name", var965=java.time.Duration, var3202=$r7, var3168=jdk.jfr.internal.management.ManagementSupport, var1763=$r8, var282="maxAge", var1758=$l1, var463=r9, var2822=$r13, var3819=$r10, var161="maxSize", var3056=$r11, var3602=$r12, var1062="duration"}
; {jdk.management.jfr.FlightRecorderMXBeanImpl=var1320, r0=var1391, l0=var538, jdk.management.jfr.MBeanUtils=var519, jdk.jfr.Recording=var425, r1=var544, java.util.HashMap=var3605, $r2=var3319, 10=var810, $z0=var1602, $r3=var2891, java.util.Map=var3226, java.lang.Object=var1277, "dumpOnExit"=var2466, $z1=var2732, $r4=var3240, "disk"=var3482, $r5=var2885, $r6=var3607, "name"=var3171, java.time.Duration=var965, $r7=var3202, jdk.jfr.internal.management.ManagementSupport=var3168, $r8=var1763, "maxAge"=var282, $l1=var1758, r9=var463, $r13=var2822, $r10=var3819, "maxSize"=var161, $r11=var3056, $r12=var3602, "duration"=var1062}
;seq <java.lang.String: java.lang.String valueOf(boolean)>;	<java.lang.String: java.lang.String valueOf(boolean)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 2,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 2}
;stmts r0 := @this: jdk.management.jfr.FlightRecorderMXBeanImpl;	l0 := @parameter0: long;	staticinvoke <jdk.management.jfr.MBeanUtils: void checkMonitor()>();	r1 = specialinvoke r0.<jdk.management.jfr.FlightRecorderMXBeanImpl: jdk.jfr.Recording getExistingRecording(long)>(l0);	$r2 = new java.util.HashMap;	specialinvoke $r2.<java.util.HashMap: void <init>(int)>(10);	$z0 = virtualinvoke r1.<jdk.jfr.Recording: boolean getDumpOnExit()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z0);	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("dumpOnExit", $r3);	$z1 = virtualinvoke r1.<jdk.jfr.Recording: boolean isToDisk()>();	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z1);	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("disk", $r4);	$r5 = virtualinvoke r1.<jdk.jfr.Recording: java.lang.String getName()>();	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r5);	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("name", $r6);	$r7 = virtualinvoke r1.<jdk.jfr.Recording: java.time.Duration getMaxAge()>();	$r8 = staticinvoke <jdk.jfr.internal.management.ManagementSupport: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r7, " ");	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("maxAge", $r8);	$l1 = virtualinvoke r1.<jdk.jfr.Recording: long getMaxSize()>();	r9 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1);	if r9 != null goto $r13 = virtualinvoke r9.<java.lang.Long: java.lang.String toString()>();	$r13 = "0";	goto [?= $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r13)];	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r13);	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("maxSize", $r10);	$r11 = virtualinvoke r1.<jdk.jfr.Recording: java.time.Duration getDuration()>();	$r12 = staticinvoke <jdk.jfr.internal.management.ManagementSupport: java.lang.String formatTimespan(java.time.Duration,java.lang.String)>($r11, " ");	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("duration", $r12);	return $r2
;block_num 3