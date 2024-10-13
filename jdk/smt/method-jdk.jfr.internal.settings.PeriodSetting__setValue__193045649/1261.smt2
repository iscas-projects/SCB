(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3875 0)
(declare-sort var1572 0)
(declare-sort var649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun eventType/-971021120 (var3875) var649)
(declare-fun setPeriod/-294241037 (var649 Int Bool Bool) void)
(declare-fun value/-971021120 (var3875) String)
(declare-const null-var3875 var3875)
(declare-const null-String String)
(declare-const var2762 var3875) ; Statement: r1 := @this: jdk.jfr.internal.settings.PeriodSetting 
(assert (not (= var2762 null-var3875)))
(declare-const var1061 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1061 null-String)))
(define-const var2720 Int (- 1)) ; Statement: b4 = -1 
(assert true)
(define-const var3384 Int (hashCode/-467973558 var1061)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 356349970: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("everyChunk");     case 1085979460: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("beginChunk");     case 1699347026: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("endChunk");     default: goto tableswitch(b4) {     case 0: goto $r4 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 1: goto $r3 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 2: goto $r2 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     default: goto l1 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespanWithInfinity(java.lang.String)>(r0); }; } 
(assert (and (not (= var3384 1699347026)) (and (not (= var3384 1085979460)) (and (not (= var3384 356349970)) true)))) ; Intersect: Negate: Cond: $i0 == 1699347026   and Intersect: Negate: Cond: $i0 == 1085979460   and Intersect: Negate: Cond: $i0 == 356349970   and Non Conditional   
 ; Statement: tableswitch(b4) {     case 0: goto $r4 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 1: goto $r3 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 2: goto $r2 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     default: goto l1 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespanWithInfinity(java.lang.String)>(r0); } 
(assert (and (= var2720 1) (and (not (= var2720 0)) true))) ; Intersect: Cond: b4 == 1  and Intersect: Negate: Cond: b4 == 0   and Non Conditional  
(define-const var2553 var649 (eventType/-971021120 var2762)) ; Statement: $r3 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType> 
(assert true)
;(assert (setPeriod/-294241037 var2553 0 (ite (= 1 1) true false) (ite (= 1 0) true false))) ; Statement: virtualinvoke $r3.<jdk.jfr.internal.PlatformEventType: void setPeriod(long,boolean,boolean)>(0L, 1, 0) 

(declare-const var2553!1 var649)
(declare-const var2366 Int)
(declare-const var3913 Int)
(declare-const var3575 Int)
 ; Statement: goto [?= r1.<jdk.jfr.internal.settings.PeriodSetting: java.lang.String value> = r0] 
(assert true) ; Non Conditional
(declare-const var2762!1 var3875)
(assert (not (= var2762!1 null-var3875)))
(assert (= (value/-971021120 var2762!1) var1061)) ; Statement: r1.<jdk.jfr.internal.settings.PeriodSetting: java.lang.String value> = r0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), eventType/-971021120=([jdk.jfr.internal.settings.PeriodSetting], jdk.jfr.internal.PlatformEventType), setPeriod/-294241037=([jdk.jfr.internal.PlatformEventType, long, boolean, boolean], void), value/-971021120=([jdk.jfr.internal.settings.PeriodSetting], java.lang.String)}
; {var3875=jdk.jfr.internal.settings.PeriodSetting, var2762=r1, var1061=r0, var1572=null_type, var2720=b4, var3384=$i0, var649=jdk.jfr.internal.PlatformEventType, var2553=$r3, var2366=0L, var3913=1, var3575=0}
; {jdk.jfr.internal.settings.PeriodSetting=var3875, r1=var2762, r0=var1061, null_type=var1572, b4=var2720, $i0=var3384, jdk.jfr.internal.PlatformEventType=var649, $r3=var2553, 0L=var2366, 1=var3913, 0=var3575}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: jdk.jfr.internal.settings.PeriodSetting;	r0 := @parameter0: java.lang.String;	b4 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 356349970: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("everyChunk");     case 1085979460: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("beginChunk");     case 1699347026: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("endChunk");     default: goto tableswitch(b4) {     case 0: goto $r4 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 1: goto $r3 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 2: goto $r2 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     default: goto l1 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespanWithInfinity(java.lang.String)>(r0); }; };	tableswitch(b4) {     case 0: goto $r4 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 1: goto $r3 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     case 2: goto $r2 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;     default: goto l1 = staticinvoke <jdk.jfr.internal.Utils: long parseTimespanWithInfinity(java.lang.String)>(r0); };	$r3 = r1.<jdk.jfr.internal.settings.PeriodSetting: jdk.jfr.internal.PlatformEventType eventType>;	virtualinvoke $r3.<jdk.jfr.internal.PlatformEventType: void setPeriod(long,boolean,boolean)>(0L, 1, 0);	goto [?= r1.<jdk.jfr.internal.settings.PeriodSetting: java.lang.String value> = r0];	r1.<jdk.jfr.internal.settings.PeriodSetting: java.lang.String value> = r0;	return
;block_num 4