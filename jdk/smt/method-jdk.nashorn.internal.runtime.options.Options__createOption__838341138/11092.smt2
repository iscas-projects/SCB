(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3953 0)
(declare-sort var837 0)
(declare-sort var2624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/897420416 (var3953) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2624-init () var2624)
(declare-fun <init>/-1764827605 (var2624 String) void)
(declare-const null-var3953 var3953)
(declare-const null-String String)
(declare-const var1219 var3953) ; Statement: r0 := @parameter0: jdk.nashorn.internal.runtime.options.OptionTemplate 
(assert (not (= var1219 null-var3953)))
(declare-const var599 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var599 null-String)))
(assert true)
(define-const var2975 String (getType/897420416 var1219)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getType()>() 
(define-const var2279 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2472 Int (hashCode/-467973558 var2975)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -2076227591: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("timezone");     case -1097462182: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("locale");     case -1003964351: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("keyvalues");     case -926053069: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("properties");     case -891985903: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 107332: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 64711720: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 1958052158: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("integer");     default: goto tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var2472 1958052158)) (and (not (= var2472 64711720)) (and (not (= var2472 107332)) (and (not (= var2472 (- 891985903))) (and (not (= var2472 (- 926053069))) (and (not (= var2472 (- 1003964351))) (and (not (= var2472 (- 1097462182))) (and (not (= var2472 (- 2076227591))) true))))))))) ; Intersect: Negate: Cond: $i0 == 1958052158   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 107332   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -926053069   and Intersect: Negate: Cond: $i0 == -1003964351   and Intersect: Negate: Cond: $i0 == -1097462182   and Intersect: Negate: Cond: $i0 == -2076227591   and Non Conditional        
 ; Statement: tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; } 
(assert (and (= var2279 4) (and (not (= var2279 3)) (and (not (= var2279 2)) (and (not (= var2279 1)) (and (not (= var2279 0)) true)))))) ; Intersect: Cond: b1 == 4  and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional     
(define-const var3085 var2624 var2624-init) ; Statement: $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption 
(assert true)
;(assert (<init>/-1764827605 var3085 var599)) ; Statement: specialinvoke $r6.<jdk.nashorn.internal.runtime.options.LoggingOption: void <init>(java.lang.String)>(r3) 

(declare-const var3085!1 var2624)
(declare-const var599!1 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/897420416=([jdk.nashorn.internal.runtime.options.OptionTemplate], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2624-init=([], jdk.nashorn.internal.runtime.options.LoggingOption), <init>/-1764827605=([jdk.nashorn.internal.runtime.options.LoggingOption, java.lang.String], void)}
; {var3953=jdk.nashorn.internal.runtime.options.OptionTemplate, var1219=r0, var599=r3, var837=null_type, var2975=r1, var2279=b1, var2472=$i0, var2624=jdk.nashorn.internal.runtime.options.LoggingOption, var3085=$r6}
; {jdk.nashorn.internal.runtime.options.OptionTemplate=var3953, r0=var1219, r3=var599, null_type=var837, r1=var2975, b1=var2279, $i0=var2472, jdk.nashorn.internal.runtime.options.LoggingOption=var2624, $r6=var3085}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: jdk.nashorn.internal.runtime.options.OptionTemplate;	r3 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getType()>();	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -2076227591: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("timezone");     case -1097462182: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("locale");     case -1003964351: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("keyvalues");     case -926053069: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("properties");     case -891985903: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 107332: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 64711720: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 1958052158: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("integer");     default: goto tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; };	$r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;	specialinvoke $r6.<jdk.nashorn.internal.runtime.options.LoggingOption: void <init>(java.lang.String)>(r3);	return $r6
;block_num 3