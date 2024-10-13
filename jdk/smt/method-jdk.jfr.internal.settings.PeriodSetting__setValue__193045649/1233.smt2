(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3195 0)
(declare-sort var2799 0)
(declare-sort var537 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun eventType/-971021120 (var3195) var537)
(declare-fun setPeriod/-294241037 (var537 Int Bool Bool) void)
(declare-fun value/-971021120 (var3195) String)
(declare-const null-var3195 var3195)
(declare-const null-String String)
(declare-const var318 var3195) ; Statement: r1 := @this: jdk.jfr.internal.settings.PeriodSetting 
(assert (not (= var318 null-var3195)))
(declare-const var3842 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3842 null-String)))
(define-const var439 Int (- 1)) ; Statement: b4 = -1 
(assert true)
(define-const var1101 Int (hashCode/-467973558 var3842)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 356349970: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("everyChunk");     case 1085979460: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("beginChunk");     case 1699347026: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("endChunk");     default: goto tableswitch(b4) {     case 0: goto $r4 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 1: goto $r3 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 2: goto $r2 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     default: goto l1 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespanWithInfinity(java.lang.String)>(r0); }; } 
(assert (and (not (= var1101 1699347026)) (and (not (= var1101 1085979460)) (and (not (= var1101 356349970)) true)))) ; Intersect: Negate: Cond: $i0 == 1699347026   and Intersect: Negate: Cond: $i0 == 1085979460   and Intersect: Negate: Cond: $i0 == 356349970   and Non Conditional   
 ; Statement: tableswitch(b4) {     case 0: goto $r4 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 1: goto $r3 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 2: goto $r2 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     default: goto l1 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespanWithInfinity(java.lang.String)>(r0); } 
(assert (and (= var439 0) true)) ; Intersect: Cond: b4 == 0  and Non Conditional 
(define-const var491 var537 (eventType/-971021120 var318)) ; Statement: $r4 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType> 
(assert true)
;(assert (setPeriod/-294241037 var491 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: virtualinvoke $r4.<jdk.jfr.internal.PlatformEventType: void setPeriod(long,boolean,boolean)>(0L, 1, 1) 

(declare-const var491!1 var537)
(declare-const var2883 Int)
(declare-const var3264 Int)
(declare-const var3264!1 Int)
 ; Statement: goto [?= r1.<jdk.jfr.internal.settings.PeriodSetting: java.lang.String value> = r0] 
(assert true) ; Non Conditional
(declare-const var318!1 var3195)
(assert (not (= var318!1 null-var3195)))
(assert (= (value/-971021120 var318!1) var3842)) ; Statement: r1.<jdk.jfr.internal.settings.PeriodSetting: java.lang.String value> = r0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), eventType/-971021120=([jdk.jfr.internal.settings.PeriodSetting], jdk.jfr.internal.PlatformEventType), setPeriod/-294241037=([jdk.jfr.internal.PlatformEventType, long, boolean, boolean], void), value/-971021120=([jdk.jfr.internal.settings.PeriodSetting], java.lang.String)}
; {var3195=jdk.jfr.internal.settings.PeriodSetting, var318=r1, var3842=r0, var2799=null_type, var439=b4, var1101=$i0, var537=jdk.jfr.internal.PlatformEventType, var491=$r4, var2883=0L, var3264=1}
; {jdk.jfr.internal.settings.PeriodSetting=var3195, r1=var318, r0=var3842, null_type=var2799, b4=var439, $i0=var1101, jdk.jfr.internal.PlatformEventType=var537, $r4=var491, 0L=var2883, 1=var3264}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: jdk.jfr.internal.settings.PeriodSetting;	r0 := @parameter0: java.lang.String;	b4 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 356349970: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("everyChunk");     case 1085979460: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("beginChunk");     case 1699347026: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("endChunk");     default: goto tableswitch(b4) {     case 0: goto $r4 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 1: goto $r3 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 2: goto $r2 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     default: goto l1 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespanWithInfinity(java.lang.String)>(r0); }; };	tableswitch(b4) {     case 0: goto $r4 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 1: goto $r3 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 2: goto $r2 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     default: goto l1 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespanWithInfinity(java.lang.String)>(r0); };	$r4 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;	virtualinvoke $r4.<jdk.jfr.internal.PlatformEventType: void setPeriod(long,boolean,boolean)>(0L, 1, 1);	goto [?= r1.<jdk.jfr.internal.settings.PeriodSetting: java.lang.String value> = r0];	r1.<jdk.jfr.internal.settings.PeriodSetting: java.lang.String value> = r0;	return
;block_num 4