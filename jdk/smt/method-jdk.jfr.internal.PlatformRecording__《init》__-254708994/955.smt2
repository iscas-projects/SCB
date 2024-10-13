(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2717 0)
(declare-sort var3515 0)
(declare-sort var689 0)
(declare-sort var2499 0)
(declare-sort var2697 0)
(declare-sort var2783 0)
(declare-sort var3388 0)
(declare-sort var3358 0)
(declare-sort var2267 0)
(declare-sort var3754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var689) void)
(declare-fun cast-from-var2717-to-var689 (var2717) var689)
(declare-fun var2499-init () var2499)
(declare-fun <init>/-1461814690 (var2499) void)
(declare-fun cast-from-var2499-to-var2697 (var2499) var2697)
(declare-fun settings/-1031466238 (var2717) var2697)
(declare-fun toDisk/-1031466238 (var2717) Bool)
(declare-fun var2783-init () var2783)
(declare-fun <init>/-1349555599 (var2783 String) void)
(declare-fun dumpOnExitDirectory/-1031466238 (var2717) var2783)
(declare-fun state/-1031466238 (var2717) var3388)
(declare-fun var3358-init () var3358)
(declare-fun <init>/1281898776 (var3358) void)
(declare-fun chunks/-1031466238 (var2717) var3358)
(declare-fun shuoldWriteActiveRecordingEvent/-1031466238 (var2717) Bool)
(declare-fun var3754_getContext/-902743104 () var2267)
(declare-fun noDestinationDumpOnExitAccessControlContext/-1031466238 (var2717) var2267)
(declare-fun id/-1031466238 (var2717) Int)
(declare-fun recorder/-1031466238 (var2717) var3515)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun name/-1031466238 (var2717) String)
(declare-const null-var2717 var2717)
(declare-const null-var3515 var3515)
(declare-const null-Int Int)
(declare-const var3388-NEW var3388)
(declare-const var2805 var2717) ; Statement: r0 := @this: jdk.jfr.internal.PlatformRecording 
(assert (not (= var2805 null-var2717)))
(declare-const var1951 var3515) ; Statement: r6 := @parameter0: jdk.jfr.internal.PlatformRecorder 
(assert (not (= var1951 null-var3515)))
(declare-const var1971 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1971 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2717-to-var689 var2805))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2805!1 var2717)
(define-const var124 var2499 var2499-init) ; Statement: $r1 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var124)) ; Statement: specialinvoke $r1.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var124!1 var2499)
(declare-const var2805!2 var2717)
(assert (not (= var2805!2 null-var2717)))
(assert (= (settings/-1031466238 var2805!2) (cast-from-var2499-to-var2697 var124!1))) ; Statement: r0.<jdk.jfr.internal.PlatformRecording: java.util.Map settings> = $r1 
(declare-const var2805!3 var2717)
(assert (not (= var2805!3 null-var2717)))
(assert (= (toDisk/-1031466238 var2805!3) (ite (= 1 1) true false))) ; Statement: r0.<jdk.jfr.internal.PlatformRecording: boolean toDisk> = 1 
(define-const var2917 var2783 var2783-init) ; Statement: $r2 = new jdk.jfr.internal.SecuritySupport$SafePath 
(assert true)
;(assert (<init>/-1349555599 var2917 ".")) ; Statement: specialinvoke $r2.<jdk.jfr.internal.SecuritySupport$SafePath: void <init>(java.lang.String)>(".") 

(declare-const var2917!1 var2783)
(declare-const var2723 String)
(declare-const var2805!4 var2717)
(assert (not (= var2805!4 null-var2717)))
(assert (= (dumpOnExitDirectory/-1031466238 var2805!4) var2917!1)) ; Statement: r0.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.SecuritySupport$SafePath dumpOnExitDirectory> = $r2 
(define-const var240 var3388 var3388-NEW) ; Statement: $r3 = <jdk.jfr.RecordingState: jdk.jfr.RecordingState NEW> 
(declare-const var2805!5 var2717)
(assert (not (= var2805!5 null-var2717)))
(assert (= (state/-1031466238 var2805!5) var240)) ; Statement: r0.<jdk.jfr.internal.PlatformRecording: jdk.jfr.RecordingState state> = $r3 
(define-const var1181 var3358 var3358-init) ; Statement: $r4 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var1181)) ; Statement: specialinvoke $r4.<java.util.LinkedList: void <init>()>() 

(declare-const var1181!1 var3358)
(declare-const var2805!6 var2717)
(assert (not (= var2805!6 null-var2717)))
(assert (= (chunks/-1031466238 var2805!6) var1181!1)) ; Statement: r0.<jdk.jfr.internal.PlatformRecording: java.util.LinkedList chunks> = $r4 
(declare-const var2805!7 var2717)
(assert (not (= var2805!7 null-var2717)))
(assert (= (shuoldWriteActiveRecordingEvent/-1031466238 var2805!7) (ite (= 1 1) true false))) ; Statement: r0.<jdk.jfr.internal.PlatformRecording: boolean shuoldWriteActiveRecordingEvent> = 1 
(define-const var3730 var2267 var3754_getContext/-902743104) ; Statement: $r5 = staticinvoke <java.security.AccessController: java.security.AccessControlContext getContext()>() 
(declare-const var2805!8 var2717)
(assert (not (= var2805!8 null-var2717)))
(assert (= (noDestinationDumpOnExitAccessControlContext/-1031466238 var2805!8) var3730)) ; Statement: r0.<jdk.jfr.internal.PlatformRecording: java.security.AccessControlContext noDestinationDumpOnExitAccessControlContext> = $r5 
(declare-const var2805!9 var2717)
(assert (not (= var2805!9 null-var2717)))
(assert (= (id/-1031466238 var2805!9) var1971)) ; Statement: r0.<jdk.jfr.internal.PlatformRecording: long id> = l0 
(declare-const var2805!10 var2717)
(assert (not (= var2805!10 null-var2717)))
(assert (= (recorder/-1031466238 var2805!10) var1951)) ; Statement: r0.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.PlatformRecorder recorder> = r6 
(define-const var1 String (String_valueOf/-107395227 var1971)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0) 
(declare-const var2805!11 var2717)
(assert (not (= var2805!11 null-var2717)))
(assert (= (name/-1031466238 var2805!11) var1)) ; Statement: r0.<jdk.jfr.internal.PlatformRecording: java.lang.String name> = $r7 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2717-to-var689=([jdk.jfr.internal.PlatformRecording], java.lang.Object), var2499-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), cast-from-var2499-to-var2697=([java.util.LinkedHashMap], java.util.Map), settings/-1031466238=([jdk.jfr.internal.PlatformRecording], java.util.Map), toDisk/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), var2783-init=([], jdk.jfr.internal.SecuritySupport$SafePath), <init>/-1349555599=([jdk.jfr.internal.SecuritySupport$SafePath, java.lang.String], void), dumpOnExitDirectory/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.SecuritySupport$SafePath), state/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.RecordingState), var3358-init=([], java.util.LinkedList), <init>/1281898776=([java.util.LinkedList], void), chunks/-1031466238=([jdk.jfr.internal.PlatformRecording], java.util.LinkedList), shuoldWriteActiveRecordingEvent/-1031466238=([jdk.jfr.internal.PlatformRecording], boolean), var3754_getContext/-902743104=([], java.security.AccessControlContext), noDestinationDumpOnExitAccessControlContext/-1031466238=([jdk.jfr.internal.PlatformRecording], java.security.AccessControlContext), id/-1031466238=([jdk.jfr.internal.PlatformRecording], long), recorder/-1031466238=([jdk.jfr.internal.PlatformRecording], jdk.jfr.internal.PlatformRecorder), String_valueOf/-107395227=([long], java.lang.String), name/-1031466238=([jdk.jfr.internal.PlatformRecording], java.lang.String)}
; {var2717=jdk.jfr.internal.PlatformRecording, var2805=r0, var3515=jdk.jfr.internal.PlatformRecorder, var1951=r6, var1971=l0, var689=java.lang.Object, var2499=java.util.LinkedHashMap, var124=$r1, var2697=java.util.Map, var2783=jdk.jfr.internal.SecuritySupport$SafePath, var2917=$r2, var2723=".", var3388=jdk.jfr.RecordingState, var240=$r3, var3358=java.util.LinkedList, var1181=$r4, var2267=java.security.AccessControlContext, var3754=java.security.AccessController, var3730=$r5, var1=$r7}
; {jdk.jfr.internal.PlatformRecording=var2717, r0=var2805, jdk.jfr.internal.PlatformRecorder=var3515, r6=var1951, l0=var1971, java.lang.Object=var689, java.util.LinkedHashMap=var2499, $r1=var124, java.util.Map=var2697, jdk.jfr.internal.SecuritySupport$SafePath=var2783, $r2=var2917, "."=var2723, jdk.jfr.RecordingState=var3388, $r3=var240, java.util.LinkedList=var3358, $r4=var1181, java.security.AccessControlContext=var2267, java.security.AccessController=var3754, $r5=var3730, $r7=var1}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @this: jdk.jfr.internal.PlatformRecording;	r6 := @parameter0: jdk.jfr.internal.PlatformRecorder;	l0 := @parameter1: long;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.LinkedHashMap;	specialinvoke $r1.<java.util.LinkedHashMap: void <init>()>();	r0.<jdk.jfr.internal.PlatformRecording: java.util.Map settings> = $r1;	r0.<jdk.jfr.internal.PlatformRecording: boolean toDisk> = 1;	$r2 = new jdk.jfr.internal.SecuritySupport$SafePath;	specialinvoke $r2.<jdk.jfr.internal.SecuritySupport$SafePath: void <init>(java.lang.String)>(".");	r0.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.SecuritySupport$SafePath dumpOnExitDirectory> = $r2;	$r3 = <jdk.jfr.RecordingState: jdk.jfr.RecordingState NEW>;	r0.<jdk.jfr.internal.PlatformRecording: jdk.jfr.RecordingState state> = $r3;	$r4 = new java.util.LinkedList;	specialinvoke $r4.<java.util.LinkedList: void <init>()>();	r0.<jdk.jfr.internal.PlatformRecording: java.util.LinkedList chunks> = $r4;	r0.<jdk.jfr.internal.PlatformRecording: boolean shuoldWriteActiveRecordingEvent> = 1;	$r5 = staticinvoke <java.security.AccessController: java.security.AccessControlContext getContext()>();	r0.<jdk.jfr.internal.PlatformRecording: java.security.AccessControlContext noDestinationDumpOnExitAccessControlContext> = $r5;	r0.<jdk.jfr.internal.PlatformRecording: long id> = l0;	r0.<jdk.jfr.internal.PlatformRecording: jdk.jfr.internal.PlatformRecorder recorder> = r6;	$r7 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0);	r0.<jdk.jfr.internal.PlatformRecording: java.lang.String name> = $r7;	return
;block_num 1