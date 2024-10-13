(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1397 0)
(declare-sort var2018 0)
(declare-sort var712 0)
(declare-sort var1542 0)
(declare-sort var563 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1871833765 (var712 String String Int) void)
(declare-fun cast-from-var1397-to-var712 (var1397) var712)
(declare-fun var1542-init () var1542)
(declare-fun <init>/1228603609 (var1542 Int) void)
(declare-fun cast-from-var1542-to-var563 (var1542) var563)
(declare-fun settings/-1993593339 (var1397) var563)
(declare-fun enabled/-1993593339 (var1397) Bool)
(declare-fun stackTraceEnabled/-1993593339 (var1397) Bool)
(declare-fun thresholdTicks/-1993593339 (var1397) Int)
(declare-fun period/-1993593339 (var1397) Int)
(declare-fun hasStackTrace/-1993593339 (var1397) Bool)
(declare-fun hasDuration/-1993593339 (var1397) Bool)
(declare-fun hasPeriod/-1993593339 (var1397) Bool)
(declare-fun hasCutoff/-1993593339 (var1397) Bool)
(declare-fun registered/-1993593339 (var1397) Bool)
(declare-fun commitable/-1993593339 (var1397) Bool)
(declare-fun dynamicSettings/-1993593339 (var1397) Bool)
(declare-fun var712_isDefinedByJVM/1916110230 (Int) Bool)
(declare-fun isJVM/-1993593339 (var1397) Bool)
(declare-fun isMethodSampling/-1993593339 (var1397) Bool)
(declare-fun isJDK/-1993593339 (var1397) Bool)
(declare-fun var1397_stackTraceOffset/-137615690 (String Bool) Int)
(declare-fun stackTraceOffset/-1993593339 (var1397) Int)
(declare-const null-var1397 var1397)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var712-SUPER_TYPE_EVENT String)
(declare-const var1706 var1397) ; Statement: r0 := @this: jdk.jfr.internal.PlatformEventType 
(assert (not (= var1706 null-var1397)))
(declare-const var3136 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3136 null-String)))
(declare-const var427 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var427 null-Int)))
(declare-const var3046 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var3046 null-Bool)))
(declare-const var392 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var392 null-Bool)))
(define-const var495 String var712-SUPER_TYPE_EVENT) ; Statement: $r2 = <jdk.jfr.internal.Type: java.lang.String SUPER_TYPE_EVENT> 
(assert true)
;(assert (<init>/-1871833765 (cast-from-var1397-to-var712 var1706) var3136 var495 var427)) ; Statement: specialinvoke r0.<jdk.jfr.internal.Type: void <init>(java.lang.String,java.lang.String,long)>(r1, $r2, l0) 

(declare-const var1706!1 var1397)
(declare-const var3136!1 String)
(declare-const var495!1 String)
(declare-const var427!1 Int)
(define-const var1689 var1542 var1542-init) ; Statement: $r3 = new java.util.ArrayList 
(assert true)
;(assert (<init>/1228603609 var1689 5)) ; Statement: specialinvoke $r3.<java.util.ArrayList: void <init>(int)>(5) 

(declare-const var1689!1 var1542)
(declare-const var1089 Int)
(declare-const var1706!2 var1397)
(assert (not (= var1706!2 null-var1397)))
(assert (= (settings/-1993593339 var1706!2) (cast-from-var1542-to-var563 var1689!1))) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: java.util.List settings> = $r3 
(declare-const var1706!3 var1397)
(assert (not (= var1706!3 null-var1397)))
(assert (= (enabled/-1993593339 var1706!3) (ite (= 1 0) true false))) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: boolean enabled> = 0 
(declare-const var1706!4 var1397)
(assert (not (= var1706!4 null-var1397)))
(assert (= (stackTraceEnabled/-1993593339 var1706!4) (ite (= 1 1) true false))) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: boolean stackTraceEnabled> = 1 
(declare-const var1706!5 var1397)
(assert (not (= var1706!5 null-var1397)))
(assert (= (thresholdTicks/-1993593339 var1706!5) 0)) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: long thresholdTicks> = 0L 
(declare-const var1706!6 var1397)
(assert (not (= var1706!6 null-var1397)))
(assert (= (period/-1993593339 var1706!6) 0)) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: long period> = 0L 
(declare-const var1706!7 var1397)
(assert (not (= var1706!7 null-var1397)))
(assert (= (hasStackTrace/-1993593339 var1706!7) (ite (= 1 1) true false))) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: boolean hasStackTrace> = 1 
(declare-const var1706!8 var1397)
(assert (not (= var1706!8 null-var1397)))
(assert (= (hasDuration/-1993593339 var1706!8) (ite (= 1 1) true false))) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: boolean hasDuration> = 1 
(declare-const var1706!9 var1397)
(assert (not (= var1706!9 null-var1397)))
(assert (= (hasPeriod/-1993593339 var1706!9) (ite (= 1 1) true false))) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: boolean hasPeriod> = 1 
(declare-const var1706!10 var1397)
(assert (not (= var1706!10 null-var1397)))
(assert (= (hasCutoff/-1993593339 var1706!10) (ite (= 1 0) true false))) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: boolean hasCutoff> = 0 
(declare-const var1706!11 var1397)
(assert (not (= var1706!11 null-var1397)))
(assert (= (registered/-1993593339 var1706!11) (ite (= 1 1) true false))) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: boolean registered> = 1 
(define-const var1638 Bool (enabled/-1993593339 var1706!11)) ; Statement: $z0 = r0.<jdk.jfr.internal.PlatformEventType: boolean enabled> 
 ; Statement: if $z0 == 0 goto $z5 = 0 
(assert (= (ite var1638 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3937 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
(declare-const var1706!12 var1397)
(assert (not (= var1706!12 null-var1397)))
(assert (= (commitable/-1993593339 var1706!12) var3937)) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: boolean commitable> = $z5 
(declare-const var1706!13 var1397)
(assert (not (= var1706!13 null-var1397)))
(assert (= (dynamicSettings/-1993593339 var1706!13) var392)) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: boolean dynamicSettings> = z1 
(define-const var1746 Bool (var712_isDefinedByJVM/1916110230 var427!1)) ; Statement: $z6 = staticinvoke <jdk.jfr.internal.Type: boolean isDefinedByJVM(long)>(l0) 
(declare-const var1706!14 var1397)
(assert (not (= var1706!14 null-var1397)))
(assert (= (isJVM/-1993593339 var1706!14) var1746)) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: boolean isJVM> = $z6 
(assert true)
(define-const var262 Bool (= var3136!1 "jdk.ExecutionSample")) ; Statement: $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.ExecutionSample") 
 ; Statement: if $z7 != 0 goto $z8 = 1 
(assert (not (= (ite var262 1 0) 0))) ; Cond: $z7 != 0 
(define-const var179 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= r0.<jdk.jfr.internal.PlatformEventType: boolean isMethodSampling> = $z8] 
(assert true) ; Non Conditional
(declare-const var1706!15 var1397)
(assert (not (= var1706!15 null-var1397)))
(assert (= (isMethodSampling/-1993593339 var1706!15) var179)) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: boolean isMethodSampling> = $z8 
(declare-const var1706!16 var1397)
(assert (not (= var1706!16 null-var1397)))
(assert (= (isJDK/-1993593339 var1706!16) var3046)) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: boolean isJDK> = z2 
(define-const var2046 Int (var1397_stackTraceOffset/-137615690 var3136!1 var3046)) ; Statement: $i1 = staticinvoke <jdk.jfr.internal.PlatformEventType: int stackTraceOffset(java.lang.String,boolean)>(r1, z2) 
(declare-const var1706!17 var1397)
(assert (not (= var1706!17 null-var1397)))
(assert (= (stackTraceOffset/-1993593339 var1706!17) var2046)) ; Statement: r0.<jdk.jfr.internal.PlatformEventType: int stackTraceOffset> = $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1871833765=([jdk.jfr.internal.Type, java.lang.String, java.lang.String, long], void), cast-from-var1397-to-var712=([jdk.jfr.internal.PlatformEventType], jdk.jfr.internal.Type), var1542-init=([], java.util.ArrayList), <init>/1228603609=([java.util.ArrayList, int], void), cast-from-var1542-to-var563=([java.util.ArrayList], java.util.List), settings/-1993593339=([jdk.jfr.internal.PlatformEventType], java.util.List), enabled/-1993593339=([jdk.jfr.internal.PlatformEventType], boolean), stackTraceEnabled/-1993593339=([jdk.jfr.internal.PlatformEventType], boolean), thresholdTicks/-1993593339=([jdk.jfr.internal.PlatformEventType], long), period/-1993593339=([jdk.jfr.internal.PlatformEventType], long), hasStackTrace/-1993593339=([jdk.jfr.internal.PlatformEventType], boolean), hasDuration/-1993593339=([jdk.jfr.internal.PlatformEventType], boolean), hasPeriod/-1993593339=([jdk.jfr.internal.PlatformEventType], boolean), hasCutoff/-1993593339=([jdk.jfr.internal.PlatformEventType], boolean), registered/-1993593339=([jdk.jfr.internal.PlatformEventType], boolean), commitable/-1993593339=([jdk.jfr.internal.PlatformEventType], boolean), dynamicSettings/-1993593339=([jdk.jfr.internal.PlatformEventType], boolean), var712_isDefinedByJVM/1916110230=([long], boolean), isJVM/-1993593339=([jdk.jfr.internal.PlatformEventType], boolean), isMethodSampling/-1993593339=([jdk.jfr.internal.PlatformEventType], boolean), isJDK/-1993593339=([jdk.jfr.internal.PlatformEventType], boolean), var1397_stackTraceOffset/-137615690=([java.lang.String, boolean], int), stackTraceOffset/-1993593339=([jdk.jfr.internal.PlatformEventType], int)}
; {var1397=jdk.jfr.internal.PlatformEventType, var1706=r0, var3136=r1, var2018=null_type, var427=l0, var3046=z2, var392=z1, var712=jdk.jfr.internal.Type, var495=$r2, var1542=java.util.ArrayList, var1689=$r3, var1089=5, var563=java.util.List, var1638=$z0, var3937=$z5, var1746=$z6, var262=$z7, var179=$z8, var2046=$i1}
; {jdk.jfr.internal.PlatformEventType=var1397, r0=var1706, r1=var3136, null_type=var2018, l0=var427, z2=var3046, z1=var392, jdk.jfr.internal.Type=var712, $r2=var495, java.util.ArrayList=var1542, $r3=var1689, 5=var1089, java.util.List=var563, $z0=var1638, $z5=var3937, $z6=var1746, $z7=var262, $z8=var179, $i1=var2046}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.jfr.internal.PlatformEventType;	r1 := @parameter0: java.lang.String;	l0 := @parameter1: long;	z2 := @parameter2: boolean;	z1 := @parameter3: boolean;	$r2 = <jdk.jfr.internal.Type: java.lang.String SUPER_TYPE_EVENT>;	specialinvoke r0.<jdk.jfr.internal.Type: void <init>(java.lang.String,java.lang.String,long)>(r1, $r2, l0);	$r3 = new java.util.ArrayList;	specialinvoke $r3.<java.util.ArrayList: void <init>(int)>(5);	r0.<jdk.jfr.internal.PlatformEventType: java.util.List settings> = $r3;	r0.<jdk.jfr.internal.PlatformEventType: boolean enabled> = 0;	r0.<jdk.jfr.internal.PlatformEventType: boolean stackTraceEnabled> = 1;	r0.<jdk.jfr.internal.PlatformEventType: long thresholdTicks> = 0L;	r0.<jdk.jfr.internal.PlatformEventType: long period> = 0L;	r0.<jdk.jfr.internal.PlatformEventType: boolean hasStackTrace> = 1;	r0.<jdk.jfr.internal.PlatformEventType: boolean hasDuration> = 1;	r0.<jdk.jfr.internal.PlatformEventType: boolean hasPeriod> = 1;	r0.<jdk.jfr.internal.PlatformEventType: boolean hasCutoff> = 0;	r0.<jdk.jfr.internal.PlatformEventType: boolean registered> = 1;	$z0 = r0.<jdk.jfr.internal.PlatformEventType: boolean enabled>;	if $z0 == 0 goto $z5 = 0;	$z5 = 0;	r0.<jdk.jfr.internal.PlatformEventType: boolean commitable> = $z5;	r0.<jdk.jfr.internal.PlatformEventType: boolean dynamicSettings> = z1;	$z6 = staticinvoke <jdk.jfr.internal.Type: boolean isDefinedByJVM(long)>(l0);	r0.<jdk.jfr.internal.PlatformEventType: boolean isJVM> = $z6;	$z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("jdk.ExecutionSample");	if $z7 != 0 goto $z8 = 1;	$z8 = 1;	goto [?= r0.<jdk.jfr.internal.PlatformEventType: boolean isMethodSampling> = $z8];	r0.<jdk.jfr.internal.PlatformEventType: boolean isMethodSampling> = $z8;	r0.<jdk.jfr.internal.PlatformEventType: boolean isJDK> = z2;	$i1 = staticinvoke <jdk.jfr.internal.PlatformEventType: int stackTraceOffset(java.lang.String,boolean)>(r1, z2);	r0.<jdk.jfr.internal.PlatformEventType: int stackTraceOffset> = $i1;	return
;block_num 5