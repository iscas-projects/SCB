(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2482 0)
(declare-sort var2396 0)
(declare-sort var2964 0)
(declare-sort var1565 0)
(declare-sort var2637 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/897420416 (var2482) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2964-init () var2964)
(declare-fun var1565_forLanguageTag/1508457407 (String) var1565)
(declare-fun <init>/1763234592 (var2964 var2637) void)
(declare-fun cast-from-var1565-to-var2637 (var1565) var2637)
(declare-const null-var2482 var2482)
(declare-const null-String String)
(declare-const var1164 var2482) ; Statement: r0 := @parameter0: jdk.nashorn.internal.runtime.options.OptionTemplate 
(assert (not (= var1164 null-var2482)))
(declare-const var3862 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3862 null-String)))
(assert true)
(define-const var3331 String (getType/897420416 var1164)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getType()>() 
(define-const var114 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var476 Int (hashCode/-467973558 var3331)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -2076227591: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("timezone");     case -1097462182: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("locale");     case -1003964351: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("keyvalues");     case -926053069: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("properties");     case -891985903: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 107332: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 64711720: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 1958052158: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("integer");     default: goto tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var476 1958052158)) (and (not (= var476 64711720)) (and (not (= var476 107332)) (and (not (= var476 (- 891985903))) (and (not (= var476 (- 926053069))) (and (not (= var476 (- 1003964351))) (and (not (= var476 (- 1097462182))) (and (not (= var476 (- 2076227591))) true))))))))) ; Intersect: Negate: Cond: $i0 == 1958052158   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 107332   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -926053069   and Intersect: Negate: Cond: $i0 == -1003964351   and Intersect: Negate: Cond: $i0 == -1097462182   and Intersect: Negate: Cond: $i0 == -2076227591   and Non Conditional        
 ; Statement: tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; } 
(assert (and (= var114 2) (and (not (= var114 1)) (and (not (= var114 0)) true)))) ; Intersect: Cond: b1 == 2  and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(define-const var2714 var2964 var2964-init) ; Statement: $r8 = new jdk.nashorn.internal.runtime.options.Option 
(define-const var1681 var1565 (var1565_forLanguageTag/1508457407 var3862)) ; Statement: $r9 = staticinvoke <java.util.Locale: java.util.Locale forLanguageTag(java.lang.String)>(r3) 
(assert true)
;(assert (<init>/1763234592 var2714 (cast-from-var1565-to-var2637 var1681))) ; Statement: specialinvoke $r8.<jdk.nashorn.internal.runtime.options.Option: void <init>(java.lang.Object)>($r9) 

(declare-const var2714!1 var2964)
(declare-const var1681!1 var1565)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/897420416=([jdk.nashorn.internal.runtime.options.OptionTemplate], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2964-init=([], jdk.nashorn.internal.runtime.options.Option), var1565_forLanguageTag/1508457407=([java.lang.String], java.util.Locale), <init>/1763234592=([jdk.nashorn.internal.runtime.options.Option, java.lang.Object], void), cast-from-var1565-to-var2637=([java.util.Locale], java.lang.Object)}
; {var2482=jdk.nashorn.internal.runtime.options.OptionTemplate, var1164=r0, var3862=r3, var2396=null_type, var3331=r1, var114=b1, var476=$i0, var2964=jdk.nashorn.internal.runtime.options.Option, var2714=$r8, var1565=java.util.Locale, var1681=$r9, var2637=java.lang.Object}
; {jdk.nashorn.internal.runtime.options.OptionTemplate=var2482, r0=var1164, r3=var3862, null_type=var2396, r1=var3331, b1=var114, $i0=var476, jdk.nashorn.internal.runtime.options.Option=var2964, $r8=var2714, java.util.Locale=var1565, $r9=var1681, java.lang.Object=var2637}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: jdk.nashorn.internal.runtime.options.OptionTemplate;	r3 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getType()>();	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -2076227591: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("timezone");     case -1097462182: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("locale");     case -1003964351: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("keyvalues");     case -926053069: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("properties");     case -891985903: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 107332: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 64711720: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 1958052158: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("integer");     default: goto tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; };	$r8 = new jdk.nashorn.internal.runtime.options.Option;	$r9 = staticinvoke <java.util.Locale: java.util.Locale forLanguageTag(java.lang.String)>(r3);	specialinvoke $r8.<jdk.nashorn.internal.runtime.options.Option: void <init>(java.lang.Object)>($r9);	return $r8
;block_num 3