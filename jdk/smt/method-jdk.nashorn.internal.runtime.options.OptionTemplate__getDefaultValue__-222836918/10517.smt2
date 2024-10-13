(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/897420416 (var1226) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun defaultValue/-1654954018 (var1226) String)
(declare-const null-var1226 var1226)
(declare-const var262 var1226) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.options.OptionTemplate 
(assert (not (= var262 null-var1226)))
(assert true)
(define-const var1334 String (getType/897420416 var262)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getType()>() 
(define-const var972 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1480 Int (hashCode/-467973558 var1334)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -2076227591: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("timezone");     case -1097462182: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("locale");     case 64711720: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 1958052158: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("integer");     default: goto tableswitch(b1) {     case 0: goto $r7 = r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String defaultValue>;     case 1: goto $r6 = r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String defaultValue>;     case 2: goto $r4 = staticinvoke <java.util.TimeZone: java.util.TimeZone getDefault()>();     case 3: goto $r2 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();     default: goto $r8 = r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String defaultValue>; }; } 
(assert (and (not (= var1480 1958052158)) (and (not (= var1480 64711720)) (and (not (= var1480 (- 1097462182))) (and (not (= var1480 (- 2076227591))) true))))) ; Intersect: Negate: Cond: $i0 == 1958052158   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == -1097462182   and Intersect: Negate: Cond: $i0 == -2076227591   and Non Conditional    
 ; Statement: tableswitch(b1) {     case 0: goto $r7 = r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String defaultValue>;     case 1: goto $r6 = r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String defaultValue>;     case 2: goto $r4 = staticinvoke <java.util.TimeZone: java.util.TimeZone getDefault()>();     case 3: goto $r2 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();     default: goto $r8 = r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String defaultValue>; } 
(assert (and (not (= var972 3)) (and (not (= var972 2)) (and (not (= var972 1)) (and (not (= var972 0)) true))))) ; Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional    
(define-const var2289 String (defaultValue/-1654954018 var262)) ; Statement: $r8 = r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String defaultValue> 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/897420416=([jdk.nashorn.internal.runtime.options.OptionTemplate], java.lang.String), hashCode/-467973558=([java.lang.String], int), defaultValue/-1654954018=([jdk.nashorn.internal.runtime.options.OptionTemplate], java.lang.String)}
; {var1226=jdk.nashorn.internal.runtime.options.OptionTemplate, var262=r0, var1334=r1, var972=b1, var1480=$i0, var2289=$r8}
; {jdk.nashorn.internal.runtime.options.OptionTemplate=var1226, r0=var262, r1=var1334, b1=var972, $i0=var1480, $r8=var2289}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.options.OptionTemplate;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getType()>();	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -2076227591: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("timezone");     case -1097462182: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("locale");     case 64711720: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 1958052158: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("integer");     default: goto tableswitch(b1) {     case 0: goto $r7 = r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String defaultValue>;     case 1: goto $r6 = r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String defaultValue>;     case 2: goto $r4 = staticinvoke <java.util.TimeZone: java.util.TimeZone getDefault()>();     case 3: goto $r2 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();     default: goto $r8 = r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String defaultValue>; }; };	tableswitch(b1) {     case 0: goto $r7 = r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String defaultValue>;     case 1: goto $r6 = r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String defaultValue>;     case 2: goto $r4 = staticinvoke <java.util.TimeZone: java.util.TimeZone getDefault()>();     case 3: goto $r2 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();     default: goto $r8 = r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String defaultValue>; };	$r8 = r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String defaultValue>;	return $r8
;block_num 3