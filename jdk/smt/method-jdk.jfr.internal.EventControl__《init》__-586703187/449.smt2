(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1419 0)
(declare-sort var2411 0)
(declare-sort var2031 0)
(declare-sort var1798 0)
(declare-sort var1770 0)
(declare-sort var3558 0)
(declare-sort var2105 0)
(declare-sort var2247 0)
(declare-sort var2762 0)
(declare-sort var2900 0)
(declare-sort var2092 0)
(declare-sort var2298 0)
(declare-sort var2215 0)
(declare-sort var1490 0)
(declare-sort var879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2092!class ClassObject)
(declare-const var2298!class ClassObject)
(declare-const var2215!class ClassObject)
(declare-const var1490!class ClassObject)
(declare-const var879!class ClassObject)
(declare-fun <init>/-279557996 (var2031) void)
(declare-fun cast-from-var1419-to-var2031 (var1419) var2031)
(declare-fun var1798-init () var1798)
(declare-fun <init>/-325640736 (var1798) void)
(declare-fun cast-from-var1798-to-var1770 (var1798) var1770)
(declare-fun settingInfos/-995646817 (var1419) var1770)
(declare-fun var3558-init () var3558)
(declare-fun <init>/613807010 (var3558 Int) void)
(declare-fun cast-from-var3558-to-var2105 (var3558) var2105)
(declare-fun eventControls/-995646817 (var1419) var2105)
(declare-fun var1419_defineEnabled/-1663648046 (var2411) var2247)
(declare-fun var2105_put/1464166817 (var2105 var2031 var2031) var2031)
(declare-fun cast-from-String-to-var2031 (String) var2031)
(declare-fun cast-from-var2247-to-var2031 (var2247) var2031)
(declare-fun hasDuration/-1658126290 (var2411) Bool)
(declare-fun hasStackTrace/-976753595 (var2411) Bool)
(declare-fun hasPeriod/1039057441 (var2411) Bool)
(declare-fun hasCutoff/-1475113867 (var2411) Bool)
(declare-fun getAnnotationElements/670051267 (var2762) var1770)
(declare-fun cast-from-var2411-to-var2762 (var2411) var2762)
(declare-fun <init>/2032108350 (var1798 var2900) void)
(declare-fun cast-from-var1770-to-var2900 (var1770) var2900)
(declare-fun var1419_remove/-435857967 (var2411 var1770 ClassObject) void)
(declare-fun trimToSize/1972734580 (var1798) void)
(declare-fun setAnnotations/2046384877 (var2762 var1770) void)
(declare-fun type/-995646817 (var1419) var2411)
(declare-fun getId/1727904112 (var2762) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun idName/-995646817 (var1419) String)
(declare-const null-var1419 var1419)
(declare-const null-var2411 var2411)
(declare-const var2037 var1419) ; Statement: r0 := @this: jdk.jfr.internal.EventControl 
(assert (not (= var2037 null-var1419)))
(declare-const var3939 var2411) ; Statement: r3 := @parameter0: jdk.jfr.internal.PlatformEventType 
(assert (not (= var3939 null-var2411)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1419-to-var2031 var2037))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2037!1 var1419)
(define-const var1057 var1798 var1798-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1057)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var1057!1 var1798)
(declare-const var2037!2 var1419)
(assert (not (= var2037!2 null-var1419)))
(assert (= (settingInfos/-995646817 var2037!2) (cast-from-var1798-to-var1770 var1057!1))) ; Statement: r0.<jdk.jfr.internal.EventControl: java.util.List settingInfos> = $r1 
(define-const var1544 var3558 var3558-init) ; Statement: $r2 = new java.util.HashMap 
(assert true)
;(assert (<init>/613807010 var1544 5)) ; Statement: specialinvoke $r2.<java.util.HashMap: void <init>(int)>(5) 

(declare-const var1544!1 var3558)
(declare-const var2179 Int)
(declare-const var2037!3 var1419)
(assert (not (= var2037!3 null-var1419)))
(assert (= (eventControls/-995646817 var2037!3) (cast-from-var3558-to-var2105 var1544!1))) ; Statement: r0.<jdk.jfr.internal.EventControl: java.util.Map eventControls> = $r2 
(define-const var2371 var2105 (eventControls/-995646817 var2037!3)) ; Statement: $r4 = r0.<jdk.jfr.internal.EventControl: java.util.Map eventControls> 
(define-const var3592 var2247 (var1419_defineEnabled/-1663648046 var3939)) ; Statement: $r5 = staticinvoke <jdk.jfr.internal.EventControl: jdk.jfr.internal.Control defineEnabled(jdk.jfr.internal.PlatformEventType)>(r3) 
;(assert (var2105_put/1464166817 var2371 (cast-from-String-to-var2031 "enabled") (cast-from-var2247-to-var2031 var3592))) ; Statement: interfaceinvoke $r4.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("enabled", $r5) 

(declare-const var2371!1 var2105)
(declare-const var3763 String)
(declare-const var3592!1 var2247)
(assert true)
(define-const var2680 Bool (hasDuration/-1658126290 var3939)) ; Statement: $z0 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: boolean hasDuration()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: boolean hasStackTrace()>() 
(assert (= (ite var2680 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3517 Bool (hasStackTrace/-976753595 var3939)) ; Statement: $z1 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: boolean hasStackTrace()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: boolean hasPeriod()>() 
(assert (= (ite var3517 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3754 Bool (hasPeriod/1039057441 var3939)) ; Statement: $z2 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: boolean hasPeriod()>() 
 ; Statement: if $z2 == 0 goto $z3 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: boolean hasCutoff()>() 
(assert (= (ite var3754 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var162 Bool (hasCutoff/-1475113867 var3939)) ; Statement: $z3 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: boolean hasCutoff()>() 
 ; Statement: if $z3 == 0 goto $r6 = new java.util.ArrayList 
(assert (= (ite var162 1 0) 0)) ; Cond: $z3 == 0 
(define-const var480 var1798 var1798-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
(define-const var1487 var1770 (getAnnotationElements/670051267 (cast-from-var2411-to-var2762 var3939))) ; Statement: $r7 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: java.util.List getAnnotationElements()>() 
(assert true)
;(assert (<init>/2032108350 var480 (cast-from-var1770-to-var2900 var1487))) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>(java.util.Collection)>($r7) 

(declare-const var480!1 var1798)
(declare-const var1487!1 var1770)
;(assert (var1419_remove/-435857967 var3939 (cast-from-var1798-to-var1770 var480!1) var2092!class)) ; Statement: staticinvoke <jdk.jfr.internal.EventControl: void remove(jdk.jfr.internal.PlatformEventType,java.util.List,java.lang.Class)>(r3, $r6, class "Ljdk/jfr/Threshold;") 

(declare-const var3939!1 var2411)
(declare-const var480!2 var1798)
(declare-const var1802 ClassObject)
;(assert (var1419_remove/-435857967 var3939!1 (cast-from-var1798-to-var1770 var480!2) var2298!class)) ; Statement: staticinvoke <jdk.jfr.internal.EventControl: void remove(jdk.jfr.internal.PlatformEventType,java.util.List,java.lang.Class)>(r3, $r6, class "Ljdk/jfr/Period;") 

(declare-const var3939!2 var2411)
(declare-const var480!3 var1798)
(declare-const var3407 ClassObject)
;(assert (var1419_remove/-435857967 var3939!2 (cast-from-var1798-to-var1770 var480!3) var2215!class)) ; Statement: staticinvoke <jdk.jfr.internal.EventControl: void remove(jdk.jfr.internal.PlatformEventType,java.util.List,java.lang.Class)>(r3, $r6, class "Ljdk/jfr/Enabled;") 

(declare-const var3939!3 var2411)
(declare-const var480!4 var1798)
(declare-const var2279 ClassObject)
;(assert (var1419_remove/-435857967 var3939!3 (cast-from-var1798-to-var1770 var480!4) var1490!class)) ; Statement: staticinvoke <jdk.jfr.internal.EventControl: void remove(jdk.jfr.internal.PlatformEventType,java.util.List,java.lang.Class)>(r3, $r6, class "Ljdk/jfr/StackTrace;") 

(declare-const var3939!4 var2411)
(declare-const var480!5 var1798)
(declare-const var1095 ClassObject)
;(assert (var1419_remove/-435857967 var3939!4 (cast-from-var1798-to-var1770 var480!5) var879!class)) ; Statement: staticinvoke <jdk.jfr.internal.EventControl: void remove(jdk.jfr.internal.PlatformEventType,java.util.List,java.lang.Class)>(r3, $r6, class "Ljdk/jfr/internal/Cutoff;") 

(declare-const var3939!5 var2411)
(declare-const var480!6 var1798)
(declare-const var3674 ClassObject)
(assert true)
;(assert (trimToSize/1972734580 var480!6)) ; Statement: virtualinvoke $r6.<java.util.ArrayList: void trimToSize()>() 

(declare-const var480!7 var1798)
(assert true)
;(assert (setAnnotations/2046384877 (cast-from-var2411-to-var2762 var3939!5) (cast-from-var1798-to-var1770 var480!7))) ; Statement: virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: void setAnnotations(java.util.List)>($r6) 

(declare-const var3939!6 var2411)
(declare-const var480!8 var1798)
(declare-const var2037!4 var1419)
(assert (not (= var2037!4 null-var1419)))
(assert (= (type/-995646817 var2037!4) var3939!6)) ; Statement: r0.<jdk.jfr.internal.EventControl: jdk.jfr.internal.PlatformEventType type> = r3 
(assert true)
(define-const var1867 Int (getId/1727904112 (cast-from-var2411-to-var2762 var3939!6))) ; Statement: $l0 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: long getId()>() 
(define-const var277 String (String_valueOf/-107395227 var1867)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0) 
(declare-const var2037!5 var1419)
(assert (not (= var2037!5 null-var1419)))
(assert (= (idName/-995646817 var2037!5) var277)) ; Statement: r0.<jdk.jfr.internal.EventControl: java.lang.String idName> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1419-to-var2031=([jdk.jfr.internal.EventControl], java.lang.Object), var1798-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var1798-to-var1770=([java.util.ArrayList], java.util.List), settingInfos/-995646817=([jdk.jfr.internal.EventControl], java.util.List), var3558-init=([], java.util.HashMap), <init>/613807010=([java.util.HashMap, int], void), cast-from-var3558-to-var2105=([java.util.HashMap], java.util.Map), eventControls/-995646817=([jdk.jfr.internal.EventControl], java.util.Map), var1419_defineEnabled/-1663648046=([jdk.jfr.internal.PlatformEventType], jdk.jfr.internal.Control), var2105_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2031=([java.lang.String], java.lang.Object), cast-from-var2247-to-var2031=([jdk.jfr.internal.Control], java.lang.Object), hasDuration/-1658126290=([jdk.jfr.internal.PlatformEventType], boolean), hasStackTrace/-976753595=([jdk.jfr.internal.PlatformEventType], boolean), hasPeriod/1039057441=([jdk.jfr.internal.PlatformEventType], boolean), hasCutoff/-1475113867=([jdk.jfr.internal.PlatformEventType], boolean), getAnnotationElements/670051267=([jdk.jfr.internal.Type], java.util.List), cast-from-var2411-to-var2762=([jdk.jfr.internal.PlatformEventType], jdk.jfr.internal.Type), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var1770-to-var2900=([java.util.List], java.util.Collection), var1419_remove/-435857967=([jdk.jfr.internal.PlatformEventType, java.util.List, java.lang.Class], void), trimToSize/1972734580=([java.util.ArrayList], void), setAnnotations/2046384877=([jdk.jfr.internal.Type, java.util.List], void), type/-995646817=([jdk.jfr.internal.EventControl], jdk.jfr.internal.PlatformEventType), getId/1727904112=([jdk.jfr.internal.Type], long), String_valueOf/-107395227=([long], java.lang.String), idName/-995646817=([jdk.jfr.internal.EventControl], java.lang.String)}
; {var1419=jdk.jfr.internal.EventControl, var2037=r0, var2411=jdk.jfr.internal.PlatformEventType, var3939=r3, var2031=java.lang.Object, var1798=java.util.ArrayList, var1057=$r1, var1770=java.util.List, var3558=java.util.HashMap, var1544=$r2, var2179=5, var2105=java.util.Map, var2371=$r4, var2247=jdk.jfr.internal.Control, var3592=$r5, var3763="enabled", var2680=$z0, var3517=$z1, var3754=$z2, var162=$z3, var480=$r6, var2762=jdk.jfr.internal.Type, var1487=$r7, var2900=java.util.Collection, var2092=jdk.jfr.Threshold, var1802=class "Ljdk/jfr/Threshold;", var2298=jdk.jfr.Period, var3407=class "Ljdk/jfr/Period;", var2215=jdk.jfr.Enabled, var2279=class "Ljdk/jfr/Enabled;", var1490=jdk.jfr.StackTrace, var1095=class "Ljdk/jfr/StackTrace;", var879=jdk.jfr.internal.Cutoff, var3674=class "Ljdk/jfr/internal/Cutoff;", var1867=$l0, var277=$r8}
; {jdk.jfr.internal.EventControl=var1419, r0=var2037, jdk.jfr.internal.PlatformEventType=var2411, r3=var3939, java.lang.Object=var2031, java.util.ArrayList=var1798, $r1=var1057, java.util.List=var1770, java.util.HashMap=var3558, $r2=var1544, 5=var2179, java.util.Map=var2105, $r4=var2371, jdk.jfr.internal.Control=var2247, $r5=var3592, "enabled"=var3763, $z0=var2680, $z1=var3517, $z2=var3754, $z3=var162, $r6=var480, jdk.jfr.internal.Type=var2762, $r7=var1487, java.util.Collection=var2900, jdk.jfr.Threshold=var2092, class "Ljdk/jfr/Threshold;"=var1802, jdk.jfr.Period=var2298, class "Ljdk/jfr/Period;"=var3407, jdk.jfr.Enabled=var2215, class "Ljdk/jfr/Enabled;"=var2279, jdk.jfr.StackTrace=var1490, class "Ljdk/jfr/StackTrace;"=var1095, jdk.jfr.internal.Cutoff=var879, class "Ljdk/jfr/internal/Cutoff;"=var3674, $l0=var1867, $r8=var277}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @this: jdk.jfr.internal.EventControl;	r3 := @parameter0: jdk.jfr.internal.PlatformEventType;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	r0.<jdk.jfr.internal.EventControl: java.util.List settingInfos> = $r1;	$r2 = new java.util.HashMap;	specialinvoke $r2.<java.util.HashMap: void <init>(int)>(5);	r0.<jdk.jfr.internal.EventControl: java.util.Map eventControls> = $r2;	$r4 = r0.<jdk.jfr.internal.EventControl: java.util.Map eventControls>;	$r5 = staticinvoke <jdk.jfr.internal.EventControl: jdk.jfr.internal.Control defineEnabled(jdk.jfr.internal.PlatformEventType)>(r3);	interfaceinvoke $r4.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("enabled", $r5);	$z0 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: boolean hasDuration()>();	if $z0 == 0 goto $z1 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: boolean hasStackTrace()>();	$z1 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: boolean hasStackTrace()>();	if $z1 == 0 goto $z2 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: boolean hasPeriod()>();	$z2 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: boolean hasPeriod()>();	if $z2 == 0 goto $z3 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: boolean hasCutoff()>();	$z3 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: boolean hasCutoff()>();	if $z3 == 0 goto $r6 = new java.util.ArrayList;	$r6 = new java.util.ArrayList;	$r7 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: java.util.List getAnnotationElements()>();	specialinvoke $r6.<java.util.ArrayList: void <init>(java.util.Collection)>($r7);	staticinvoke <jdk.jfr.internal.EventControl: void remove(jdk.jfr.internal.PlatformEventType,java.util.List,java.lang.Class)>(r3, $r6, class "Ljdk/jfr/Threshold;");	staticinvoke <jdk.jfr.internal.EventControl: void remove(jdk.jfr.internal.PlatformEventType,java.util.List,java.lang.Class)>(r3, $r6, class "Ljdk/jfr/Period;");	staticinvoke <jdk.jfr.internal.EventControl: void remove(jdk.jfr.internal.PlatformEventType,java.util.List,java.lang.Class)>(r3, $r6, class "Ljdk/jfr/Enabled;");	staticinvoke <jdk.jfr.internal.EventControl: void remove(jdk.jfr.internal.PlatformEventType,java.util.List,java.lang.Class)>(r3, $r6, class "Ljdk/jfr/StackTrace;");	staticinvoke <jdk.jfr.internal.EventControl: void remove(jdk.jfr.internal.PlatformEventType,java.util.List,java.lang.Class)>(r3, $r6, class "Ljdk/jfr/internal/Cutoff;");	virtualinvoke $r6.<java.util.ArrayList: void trimToSize()>();	virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: void setAnnotations(java.util.List)>($r6);	r0.<jdk.jfr.internal.EventControl: jdk.jfr.internal.PlatformEventType type> = r3;	$l0 = virtualinvoke r3.<jdk.jfr.internal.PlatformEventType: long getId()>();	$r8 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0);	r0.<jdk.jfr.internal.EventControl: java.lang.String idName> = $r8;	return
;block_num 5