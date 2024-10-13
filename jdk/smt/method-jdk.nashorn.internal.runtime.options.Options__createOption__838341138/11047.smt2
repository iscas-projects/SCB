(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var719 0)
(declare-sort var2346 0)
(declare-sort var1308 0)
(declare-sort var478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/897420416 (var719) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1308-init () var1308)
(declare-fun <init>/1763234592 (var1308 var478) void)
(declare-fun cast-from-String-to-var478 (String) var478)
(declare-const null-var719 var719)
(declare-const null-String String)
(declare-const var623 var719) ; Statement: r0 := @parameter0: jdk.nashorn.internal.runtime.options.OptionTemplate 
(assert (not (= var623 null-var719)))
(declare-const var2265 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2265 null-String)))
(assert true)
(define-const var1468 String (getType/897420416 var623)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getType()>() 
(define-const var1071 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1717 Int (hashCode/-467973558 var1468)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -2076227591: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("timezone");     case -1097462182: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("locale");     case -1003964351: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("keyvalues");     case -926053069: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("properties");     case -891985903: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 107332: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 64711720: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 1958052158: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("integer");     default: goto tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var1717 1958052158)) (and (not (= var1717 64711720)) (and (not (= var1717 107332)) (and (not (= var1717 (- 891985903))) (and (not (= var1717 (- 926053069))) (and (not (= var1717 (- 1003964351))) (and (not (= var1717 (- 1097462182))) (and (not (= var1717 (- 2076227591))) true))))))))) ; Intersect: Negate: Cond: $i0 == 1958052158   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 107332   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -926053069   and Intersect: Negate: Cond: $i0 == -1003964351   and Intersect: Negate: Cond: $i0 == -1097462182   and Intersect: Negate: Cond: $i0 == -2076227591   and Non Conditional        
 ; Statement: tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; } 
(assert (and (= var1071 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var2365 var1308 var1308-init) ; Statement: $r12 = new jdk.nashorn.internal.runtime.options.Option 
(assert true)
;(assert (<init>/1763234592 var2365 (cast-from-String-to-var478 var2265))) ; Statement: specialinvoke $r12.<jdk.nashorn.internal.runtime.options.Option: void <init>(java.lang.Object)>(r3) 

(declare-const var2365!1 var1308)
(declare-const var2265!1 String)
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/897420416=([jdk.nashorn.internal.runtime.options.OptionTemplate], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1308-init=([], jdk.nashorn.internal.runtime.options.Option), <init>/1763234592=([jdk.nashorn.internal.runtime.options.Option, java.lang.Object], void), cast-from-String-to-var478=([java.lang.String], java.lang.Object)}
; {var719=jdk.nashorn.internal.runtime.options.OptionTemplate, var623=r0, var2265=r3, var2346=null_type, var1468=r1, var1071=b1, var1717=$i0, var1308=jdk.nashorn.internal.runtime.options.Option, var2365=$r12, var478=java.lang.Object}
; {jdk.nashorn.internal.runtime.options.OptionTemplate=var719, r0=var623, r3=var2265, null_type=var2346, r1=var1468, b1=var1071, $i0=var1717, jdk.nashorn.internal.runtime.options.Option=var1308, $r12=var2365, java.lang.Object=var478}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: jdk.nashorn.internal.runtime.options.OptionTemplate;	r3 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getType()>();	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -2076227591: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("timezone");     case -1097462182: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("locale");     case -1003964351: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("keyvalues");     case -926053069: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("properties");     case -891985903: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 107332: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 64711720: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 1958052158: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("integer");     default: goto tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; };	$r12 = new jdk.nashorn.internal.runtime.options.Option;	specialinvoke $r12.<jdk.nashorn.internal.runtime.options.Option: void <init>(java.lang.Object)>(r3);	return $r12
;block_num 3