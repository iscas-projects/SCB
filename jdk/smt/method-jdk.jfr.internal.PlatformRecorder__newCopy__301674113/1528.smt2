(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3545 0)
(declare-sort var1654 0)
(declare-sort var3466 0)
(declare-sort var3110 0)
(declare-sort var3316 0)
(declare-sort var3708 0)
(declare-sort var2398 0)
(declare-sort var2122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3466-init () var3466)
(declare-fun <init>/366501861 (var3466) void)
(declare-fun var3110_getInstance/1606271130 () var3110)
(declare-fun getPlatformRecording/1738099842 (var3110 var3466) var1654)
(declare-fun getSettings/275766796 (var1654) var3316)
(declare-fun setSettings/-1277187930 (var1654 var3316) void)
(declare-fun getMaxAge/-1585729729 (var1654) var3708)
(declare-fun setMaxAge/462627281 (var1654 var3708) void)
(declare-fun getMaxSize/434020674 (var1654) Int)
(declare-fun longValue/1313863450 (Int) Int)
(declare-fun setMaxSize/152921614 (var1654 Int) void)
(declare-fun getDumpOnExit/1642015794 (var1654) Bool)
(declare-fun setDumpOnExit/-789876608 (var1654 Bool) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1213682957 (var1654) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setName/-1717539075 (var1654 String) void)
(declare-fun isToDisk/1604427071 (var1654) Bool)
(declare-fun setToDisk/340891847 (var1654 Bool) void)
(declare-fun getDuration/1209427142 (var1654) var3708)
(declare-fun setInternalDuration/-1558674021 (var1654 var3708) void)
(declare-fun getStartTime/-923839092 (var1654) var2398)
(declare-fun setStartTime/1870992430 (var1654 var2398) void)
(declare-fun getStopTime/327660656 (var1654) var2398)
(declare-fun setStopTime/-1886482878 (var1654 var2398) void)
(declare-fun getState/1636970491 (var1654) var2122)
(declare-const null-var3545 var3545)
(declare-const null-var1654 var1654)
(declare-const null-Bool Bool)
(declare-const var2122-NEW var2122)
(declare-const var819 var3545) ; Statement: r25 := @this: jdk.jfr.internal.PlatformRecorder 
(assert (not (= var819 null-var3545)))
(declare-const var3928 var1654) ; Statement: r3 := @parameter0: jdk.jfr.internal.PlatformRecording 
(assert (not (= var3928 null-var1654)))
(declare-const var3509 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var3509 null-Bool)))
(define-const var2060 var3466 var3466-init) ; Statement: $r0 = new jdk.jfr.Recording 
(assert true)
;(assert (<init>/366501861 var2060)) ; Statement: specialinvoke $r0.<jdk.jfr.Recording: void <init>()>() 

(declare-const var2060!1 var3466)
(define-const var408 var3110 var3110_getInstance/1606271130) ; Statement: $r1 = staticinvoke <jdk.jfr.internal.PrivateAccess: jdk.jfr.internal.PrivateAccess getInstance()>() 
(assert true)
(define-const var2280 var1654 (getPlatformRecording/1738099842 var408 var2060!1)) ; Statement: r2 = virtualinvoke $r1.<jdk.jfr.internal.PrivateAccess: jdk.jfr.internal.PlatformRecording getPlatformRecording(jdk.jfr.Recording)>($r0) 
(assert true)
(define-const var3694 var3316 (getSettings/275766796 var3928)) ; Statement: $r4 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: java.util.Map getSettings()>() 
(assert true)
;(assert (setSettings/-1277187930 var2280 var3694)) ; Statement: virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setSettings(java.util.Map)>($r4) 

(declare-const var2280!1 var1654)
(declare-const var3694!1 var3316)
(assert true)
(define-const var56 var3708 (getMaxAge/-1585729729 var3928)) ; Statement: $r5 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: java.time.Duration getMaxAge()>() 
(assert true)
;(assert (setMaxAge/462627281 var2280!1 var56)) ; Statement: virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setMaxAge(java.time.Duration)>($r5) 

(declare-const var2280!2 var1654)
(declare-const var56!1 var3708)
(assert true)
(define-const var980 Int (getMaxSize/434020674 var3928)) ; Statement: $r6 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: java.lang.Long getMaxSize()>() 
(assert true)
(define-const var2704 Int (longValue/1313863450 var980)) ; Statement: $l0 = virtualinvoke $r6.<java.lang.Long: long longValue()>() 
(assert true)
;(assert (setMaxSize/152921614 var2280!2 var2704)) ; Statement: virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setMaxSize(long)>($l0) 

(declare-const var2280!3 var1654)
(declare-const var2704!1 Int)
(assert true)
(define-const var288 Bool (getDumpOnExit/1642015794 var3928)) ; Statement: $z0 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: boolean getDumpOnExit()>() 
(assert true)
;(assert (setDumpOnExit/-789876608 var2280!3 var288)) ; Statement: virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setDumpOnExit(boolean)>($z0) 

(declare-const var2280!4 var1654)
(declare-const var288!1 Bool)
(define-const var3230 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3230)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3230!1 String)
(assert (= var3230!1 ""))
(assert true)
(define-const var561 String (append/672562846 var3230!1 "Clone of ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Clone of ") 
(declare-const var3230!2 String)
(assert (= var3230!2 (str.++ var3230!1 "Clone of ")))
(assert true)
(define-const var3369 String (getName/-1213682957 var3928)) ; Statement: $r8 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var248 String (append/672562846 var561 var3369)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var561!1 String)
(assert (= var561!1 (str.++ var561 var3369)))
(assert true)
(define-const var3658 String (toString/-2075883882 var248)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setName/-1717539075 var2280!4 var3658)) ; Statement: virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setName(java.lang.String)>($r11) 

(declare-const var2280!5 var1654)
(declare-const var3658!1 String)
(assert true)
(define-const var1429 Bool (isToDisk/1604427071 var3928)) ; Statement: $z1 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: boolean isToDisk()>() 
(assert true)
;(assert (setToDisk/340891847 var2280!5 var1429)) ; Statement: virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setToDisk(boolean)>($z1) 

(declare-const var2280!6 var1654)
(declare-const var1429!1 Bool)
(assert true)
(define-const var3952 var3708 (getDuration/1209427142 var3928)) ; Statement: $r12 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: java.time.Duration getDuration()>() 
(assert true)
;(assert (setInternalDuration/-1558674021 var2280!6 var3952)) ; Statement: virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setInternalDuration(java.time.Duration)>($r12) 

(declare-const var2280!7 var1654)
(declare-const var3952!1 var3708)
(assert true)
(define-const var1966 var2398 (getStartTime/-923839092 var3928)) ; Statement: $r13 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: java.time.Instant getStartTime()>() 
(assert true)
;(assert (setStartTime/1870992430 var2280!7 var1966)) ; Statement: virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setStartTime(java.time.Instant)>($r13) 

(declare-const var2280!8 var1654)
(declare-const var1966!1 var2398)
(assert true)
(define-const var955 var2398 (getStopTime/327660656 var3928)) ; Statement: $r14 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: java.time.Instant getStopTime()>() 
(assert true)
;(assert (setStopTime/-1886482878 var2280!8 var955)) ; Statement: virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setStopTime(java.time.Instant)>($r14) 

(declare-const var2280!9 var1654)
(declare-const var955!1 var2398)
(assert true)
(define-const var153 var2122 (getState/1636970491 var3928)) ; Statement: $r16 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: jdk.jfr.RecordingState getState()>() 
(define-const var1259 var2122 var2122-NEW) ; Statement: $r15 = <jdk.jfr.RecordingState: jdk.jfr.RecordingState NEW> 
 ; Statement: if $r16 != $r15 goto $r18 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: jdk.jfr.RecordingState getState()>() 
(assert (not (not (= var153 var1259)))) ; Negate: Cond: $r16 != $r15  
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3466-init=([], jdk.jfr.Recording), <init>/366501861=([jdk.jfr.Recording], void), var3110_getInstance/1606271130=([], jdk.jfr.internal.PrivateAccess), getPlatformRecording/1738099842=([jdk.jfr.internal.PrivateAccess, jdk.jfr.Recording], jdk.jfr.internal.PlatformRecording), getSettings/275766796=([jdk.jfr.internal.PlatformRecording], java.util.Map), setSettings/-1277187930=([jdk.jfr.internal.PlatformRecording, java.util.Map], void), getMaxAge/-1585729729=([jdk.jfr.internal.PlatformRecording], java.time.Duration), setMaxAge/462627281=([jdk.jfr.internal.PlatformRecording, java.time.Duration], void), getMaxSize/434020674=([jdk.jfr.internal.PlatformRecording], java.lang.Long), longValue/1313863450=([java.lang.Long], long), setMaxSize/152921614=([jdk.jfr.internal.PlatformRecording, long], void), getDumpOnExit/1642015794=([jdk.jfr.internal.PlatformRecording], boolean), setDumpOnExit/-789876608=([jdk.jfr.internal.PlatformRecording, boolean], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setName/-1717539075=([jdk.jfr.internal.PlatformRecording, java.lang.String], void), isToDisk/1604427071=([jdk.jfr.internal.PlatformRecording], boolean), setToDisk/340891847=([jdk.jfr.internal.PlatformRecording, boolean], void), getDuration/1209427142=([jdk.jfr.internal.PlatformRecording], java.time.Duration), setInternalDuration/-1558674021=([jdk.jfr.internal.PlatformRecording, java.time.Duration], void), getStartTime/-923839092=([jdk.jfr.internal.PlatformRecording], java.time.Instant), setStartTime/1870992430=([jdk.jfr.internal.PlatformRecording, java.time.Instant], void), getStopTime/327660656=([jdk.jfr.internal.PlatformRecording], java.time.Instant), setStopTime/-1886482878=([jdk.jfr.internal.PlatformRecording, java.time.Instant], void), getState/1636970491=([jdk.jfr.internal.PlatformRecording], jdk.jfr.RecordingState)}
; {var3545=jdk.jfr.internal.PlatformRecorder, var819=r25, var1654=jdk.jfr.internal.PlatformRecording, var3928=r3, var3509=z3, var3466=jdk.jfr.Recording, var2060=$r0, var3110=jdk.jfr.internal.PrivateAccess, var408=$r1, var2280=r2, var3316=java.util.Map, var3694=$r4, var3708=java.time.Duration, var56=$r5, var980=$r6, var2704=$l0, var288=$z0, var3230=$r7, var561=$r9, var3369=$r8, var248=$r10, var3658=$r11, var1429=$z1, var3952=$r12, var2398=java.time.Instant, var1966=$r13, var955=$r14, var2122=jdk.jfr.RecordingState, var153=$r16, var1259=$r15}
; {jdk.jfr.internal.PlatformRecorder=var3545, r25=var819, jdk.jfr.internal.PlatformRecording=var1654, r3=var3928, z3=var3509, jdk.jfr.Recording=var3466, $r0=var2060, jdk.jfr.internal.PrivateAccess=var3110, $r1=var408, r2=var2280, java.util.Map=var3316, $r4=var3694, java.time.Duration=var3708, $r5=var56, $r6=var980, $l0=var2704, $z0=var288, $r7=var3230, $r9=var561, $r8=var3369, $r10=var248, $r11=var3658, $z1=var1429, $r12=var3952, java.time.Instant=var2398, $r13=var1966, $r14=var955, jdk.jfr.RecordingState=var2122, $r16=var153, $r15=var1259}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r25 := @this: jdk.jfr.internal.PlatformRecorder;	r3 := @parameter0: jdk.jfr.internal.PlatformRecording;	z3 := @parameter1: boolean;	$r0 = new jdk.jfr.Recording;	specialinvoke $r0.<jdk.jfr.Recording: void <init>()>();	$r1 = staticinvoke <jdk.jfr.internal.PrivateAccess: jdk.jfr.internal.PrivateAccess getInstance()>();	r2 = virtualinvoke $r1.<jdk.jfr.internal.PrivateAccess: jdk.jfr.internal.PlatformRecording getPlatformRecording(jdk.jfr.Recording)>($r0);	$r4 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: java.util.Map getSettings()>();	virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setSettings(java.util.Map)>($r4);	$r5 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: java.time.Duration getMaxAge()>();	virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setMaxAge(java.time.Duration)>($r5);	$r6 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: java.lang.Long getMaxSize()>();	$l0 = virtualinvoke $r6.<java.lang.Long: long longValue()>();	virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setMaxSize(long)>($l0);	$z0 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: boolean getDumpOnExit()>();	virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setDumpOnExit(boolean)>($z0);	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Clone of ");	$r8 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setName(java.lang.String)>($r11);	$z1 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: boolean isToDisk()>();	virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setToDisk(boolean)>($z1);	$r12 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: java.time.Duration getDuration()>();	virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setInternalDuration(java.time.Duration)>($r12);	$r13 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: java.time.Instant getStartTime()>();	virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setStartTime(java.time.Instant)>($r13);	$r14 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: java.time.Instant getStopTime()>();	virtualinvoke r2.<jdk.jfr.internal.PlatformRecording: void setStopTime(java.time.Instant)>($r14);	$r16 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: jdk.jfr.RecordingState getState()>();	$r15 = <jdk.jfr.RecordingState: jdk.jfr.RecordingState NEW>;	if $r16 != $r15 goto $r18 = virtualinvoke r3.<jdk.jfr.internal.PlatformRecording: jdk.jfr.RecordingState getState()>();	return $r0
;block_num 2