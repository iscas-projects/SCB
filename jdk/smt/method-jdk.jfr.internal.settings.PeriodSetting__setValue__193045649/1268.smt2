(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var947 0)
(declare-sort var79 0)
(declare-sort var3785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun eventType/-971021120 (var947) var3785)
(declare-fun setPeriod/-294241037 (var3785 Int Bool Bool) void)
(declare-fun value/-971021120 (var947) String)
(declare-const null-var947 var947)
(declare-const null-String String)
(declare-const var1067 var947) ; Statement: r1 := @this: jdk.jfr.internal.settings.PeriodSetting 
(assert (not (= var1067 null-var947)))
(declare-const var3904 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3904 null-String)))
(define-const var3588 Int (- 1)) ; Statement: b4 = -1 
(assert true)
(define-const var3707 Int (hashCode/-467973558 var3904)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 356349970: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("everyChunk");     case 1085979460: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("beginChunk");     case 1699347026: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("endChunk");     default: goto tableswitch(b4) {     case 0: goto $r4 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 1: goto $r3 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 2: goto $r2 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     default: goto l1 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespanWithInfinity(java.lang.String)>(r0); }; } 
(assert (and (not (= var3707 1699347026)) (and (not (= var3707 1085979460)) (and (not (= var3707 356349970)) true)))) ; Intersect: Negate: Cond: $i0 == 1699347026   and Intersect: Negate: Cond: $i0 == 1085979460   and Intersect: Negate: Cond: $i0 == 356349970   and Non Conditional   
 ; Statement: tableswitch(b4) {     case 0: goto $r4 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 1: goto $r3 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 2: goto $r2 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     default: goto l1 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespanWithInfinity(java.lang.String)>(r0); } 
(assert (and (= var3588 2) (and (not (= var3588 1)) (and (not (= var3588 0)) true)))) ; Intersect: Cond: b4 == 2  and Intersect: Negate: Cond: b4 == 1   and Intersect: Negate: Cond: b4 == 0   and Non Conditional   
(define-const var1667 var3785 (eventType/-971021120 var1067)) ; Statement: $r2 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType> 
(assert true)
;(assert (setPeriod/-294241037 var1667 0 (ite (= 1 0) true false) (ite (= 1 1) true false))) ; Statement: virtualinvoke $r2.<jdk.jfr.internal.PlatformEventType: void setPeriod(long,boolean,boolean)>(0L, 0, 1) 

(declare-const var1667!1 var3785)
(declare-const var3162 Int)
(declare-const var1947 Int)
(declare-const var929 Int)
 ; Statement: goto [?= r1.<jdk.jfr.internal.settings.PeriodSetting: java.lang.String value> = r0] 
(assert true) ; Non Conditional
(declare-const var1067!1 var947)
(assert (not (= var1067!1 null-var947)))
(assert (= (value/-971021120 var1067!1) var3904)) ; Statement: r1.<jdk.jfr.internal.settings.PeriodSetting: java.lang.String value> = r0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), eventType/-971021120=([jdk.jfr.internal.settings.PeriodSetting], jdk.jfr.internal.PlatformEventType), setPeriod/-294241037=([jdk.jfr.internal.PlatformEventType, long, boolean, boolean], void), value/-971021120=([jdk.jfr.internal.settings.PeriodSetting], java.lang.String)}
; {var947=jdk.jfr.internal.settings.PeriodSetting, var1067=r1, var3904=r0, var79=null_type, var3588=b4, var3707=$i0, var3785=jdk.jfr.internal.PlatformEventType, var1667=$r2, var3162=0L, var1947=0, var929=1}
; {jdk.jfr.internal.settings.PeriodSetting=var947, r1=var1067, r0=var3904, null_type=var79, b4=var3588, $i0=var3707, jdk.jfr.internal.PlatformEventType=var3785, $r2=var1667, 0L=var3162, 0=var1947, 1=var929}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: jdk.jfr.internal.settings.PeriodSetting;	r0 := @parameter0: java.lang.String;	b4 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 356349970: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("everyChunk");     case 1085979460: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("beginChunk");     case 1699347026: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("endChunk");     default: goto tableswitch(b4) {     case 0: goto $r4 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 1: goto $r3 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 2: goto $r2 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     default: goto l1 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespanWithInfinity(java.lang.String)>(r0); }; };	tableswitch(b4) {     case 0: goto $r4 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 1: goto $r3 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 2: goto $r2 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     default: goto l1 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespanWithInfinity(java.lang.String)>(r0); };	$r2 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;	virtualinvoke $r2.<jdk.jfr.internal.PlatformEventType: void setPeriod(long,boolean,boolean)>(0L, 0, 1);	goto [?= r1.<jdk.jfr.internal.settings.PeriodSetting: java.lang.String value> = r0];	r1.<jdk.jfr.internal.settings.PeriodSetting: java.lang.String value> = r0;	return
;block_num 4