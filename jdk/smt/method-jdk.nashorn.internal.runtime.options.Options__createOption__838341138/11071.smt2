(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3679 0)
(declare-sort var297 0)
(declare-sort var1438 0)
(declare-sort var2279 0)
(declare-sort var308 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/897420416 (var3679) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1438-init () var1438)
(declare-fun var2279_getTimeZone/1775699487 (String) var2279)
(declare-fun <init>/1763234592 (var1438 var308) void)
(declare-fun cast-from-var2279-to-var308 (var2279) var308)
(declare-const null-var3679 var3679)
(declare-const null-String String)
(declare-const var1283 var3679) ; Statement: r0 := @parameter0: jdk.nashorn.internal.runtime.options.OptionTemplate 
(assert (not (= var1283 null-var3679)))
(declare-const var323 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var323 null-String)))
(assert true)
(define-const var1628 String (getType/897420416 var1283)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getType()>() 
(define-const var1043 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3741 Int (hashCode/-467973558 var1628)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -2076227591: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("timezone");     case -1097462182: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("locale");     case -1003964351: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("keyvalues");     case -926053069: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("properties");     case -891985903: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 107332: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 64711720: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 1958052158: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("integer");     default: goto tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var3741 1958052158)) (and (not (= var3741 64711720)) (and (not (= var3741 107332)) (and (not (= var3741 (- 891985903))) (and (not (= var3741 (- 926053069))) (and (not (= var3741 (- 1003964351))) (and (not (= var3741 (- 1097462182))) (and (not (= var3741 (- 2076227591))) true))))))))) ; Intersect: Negate: Cond: $i0 == 1958052158   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 107332   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -926053069   and Intersect: Negate: Cond: $i0 == -1003964351   and Intersect: Negate: Cond: $i0 == -1097462182   and Intersect: Negate: Cond: $i0 == -2076227591   and Non Conditional        
 ; Statement: tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; } 
(assert (and (= var1043 1) (and (not (= var1043 0)) true))) ; Intersect: Cond: b1 == 1  and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var399 var1438 var1438-init) ; Statement: $r10 = new jdk.nashorn.internal.runtime.options.Option 
(define-const var2450 var2279 (var2279_getTimeZone/1775699487 var323)) ; Statement: $r11 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r3) 
(assert true)
;(assert (<init>/1763234592 var399 (cast-from-var2279-to-var308 var2450))) ; Statement: specialinvoke $r10.<jdk.nashorn.internal.runtime.options.Option: void <init>(java.lang.Object)>($r11) 

(declare-const var399!1 var1438)
(declare-const var2450!1 var2279)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/897420416=([jdk.nashorn.internal.runtime.options.OptionTemplate], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1438-init=([], jdk.nashorn.internal.runtime.options.Option), var2279_getTimeZone/1775699487=([java.lang.String], java.util.TimeZone), <init>/1763234592=([jdk.nashorn.internal.runtime.options.Option, java.lang.Object], void), cast-from-var2279-to-var308=([java.util.TimeZone], java.lang.Object)}
; {var3679=jdk.nashorn.internal.runtime.options.OptionTemplate, var1283=r0, var323=r3, var297=null_type, var1628=r1, var1043=b1, var3741=$i0, var1438=jdk.nashorn.internal.runtime.options.Option, var399=$r10, var2279=java.util.TimeZone, var2450=$r11, var308=java.lang.Object}
; {jdk.nashorn.internal.runtime.options.OptionTemplate=var3679, r0=var1283, r3=var323, null_type=var297, r1=var1628, b1=var1043, $i0=var3741, jdk.nashorn.internal.runtime.options.Option=var1438, $r10=var399, java.util.TimeZone=var2279, $r11=var2450, java.lang.Object=var308}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: jdk.nashorn.internal.runtime.options.OptionTemplate;	r3 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getType()>();	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -2076227591: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("timezone");     case -1097462182: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("locale");     case -1003964351: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("keyvalues");     case -926053069: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("properties");     case -891985903: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 107332: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 64711720: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 1958052158: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("integer");     default: goto tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; };	$r10 = new jdk.nashorn.internal.runtime.options.Option;	$r11 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r3);	specialinvoke $r10.<jdk.nashorn.internal.runtime.options.Option: void <init>(java.lang.Object)>($r11);	return $r10
;block_num 3