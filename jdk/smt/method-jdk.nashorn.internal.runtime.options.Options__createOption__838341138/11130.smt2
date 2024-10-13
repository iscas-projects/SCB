(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2953 0)
(declare-sort var2858 0)
(declare-sort var1990 0)
(declare-sort var3894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/897420416 (var2953) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1990-init () var1990)
(declare-fun <init>/-1029495452 (var1990 String) void)
(declare-fun var3894_initProps/1330700616 (var1990) void)
(declare-const null-var2953 var2953)
(declare-const null-String String)
(declare-const var2801 var2953) ; Statement: r0 := @parameter0: jdk.nashorn.internal.runtime.options.OptionTemplate 
(assert (not (= var2801 null-var2953)))
(declare-const var2562 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2562 null-String)))
(assert true)
(define-const var1248 String (getType/897420416 var2801)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getType()>() 
(define-const var3712 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2035 Int (hashCode/-467973558 var1248)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -2076227591: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("timezone");     case -1097462182: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("locale");     case -1003964351: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("keyvalues");     case -926053069: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("properties");     case -891985903: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 107332: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 64711720: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 1958052158: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("integer");     default: goto tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var2035 1958052158)) (and (not (= var2035 64711720)) (and (not (= var2035 107332)) (and (not (= var2035 (- 891985903))) (and (not (= var2035 (- 926053069))) (and (not (= var2035 (- 1003964351))) (and (not (= var2035 (- 1097462182))) (and (not (= var2035 (- 2076227591))) true))))))))) ; Intersect: Negate: Cond: $i0 == 1958052158   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 107332   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -926053069   and Intersect: Negate: Cond: $i0 == -1003964351   and Intersect: Negate: Cond: $i0 == -1097462182   and Intersect: Negate: Cond: $i0 == -2076227591   and Non Conditional        
 ; Statement: tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; } 
(assert (and (= var3712 7) (and (not (= var3712 6)) (and (not (= var3712 5)) (and (not (= var3712 4)) (and (not (= var3712 3)) (and (not (= var3712 2)) (and (not (= var3712 1)) (and (not (= var3712 0)) true))))))))) ; Intersect: Cond: b1 == 7  and Intersect: Negate: Cond: b1 == 6   and Intersect: Negate: Cond: b1 == 5   and Intersect: Negate: Cond: b1 == 4   and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional        
(define-const var1355 var1990 var1990-init) ; Statement: $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption 
(assert true)
;(assert (<init>/-1029495452 var1355 var2562)) ; Statement: specialinvoke $r2.<jdk.nashorn.internal.runtime.options.KeyValueOption: void <init>(java.lang.String)>(r3) 

(declare-const var1355!1 var1990)
(declare-const var2562!1 String)
;(assert (var3894_initProps/1330700616 var1355!1)) ; Statement: staticinvoke <jdk.nashorn.internal.runtime.options.Options: void initProps(jdk.nashorn.internal.runtime.options.KeyValueOption)>($r2) 

(declare-const var1355!2 var1990)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/897420416=([jdk.nashorn.internal.runtime.options.OptionTemplate], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1990-init=([], jdk.nashorn.internal.runtime.options.KeyValueOption), <init>/-1029495452=([jdk.nashorn.internal.runtime.options.KeyValueOption, java.lang.String], void), var3894_initProps/1330700616=([jdk.nashorn.internal.runtime.options.KeyValueOption], void)}
; {var2953=jdk.nashorn.internal.runtime.options.OptionTemplate, var2801=r0, var2562=r3, var2858=null_type, var1248=r1, var3712=b1, var2035=$i0, var1990=jdk.nashorn.internal.runtime.options.KeyValueOption, var1355=$r2, var3894=jdk.nashorn.internal.runtime.options.Options}
; {jdk.nashorn.internal.runtime.options.OptionTemplate=var2953, r0=var2801, r3=var2562, null_type=var2858, r1=var1248, b1=var3712, $i0=var2035, jdk.nashorn.internal.runtime.options.KeyValueOption=var1990, $r2=var1355, jdk.nashorn.internal.runtime.options.Options=var3894}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: jdk.nashorn.internal.runtime.options.OptionTemplate;	r3 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getType()>();	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -2076227591: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("timezone");     case -1097462182: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("locale");     case -1003964351: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("keyvalues");     case -926053069: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("properties");     case -891985903: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 107332: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 64711720: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 1958052158: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("integer");     default: goto tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r12 = new jdk.nashorn.internal.runtime.options.Option;     case 1: goto $r10 = new jdk.nashorn.internal.runtime.options.Option;     case 2: goto $r8 = new jdk.nashorn.internal.runtime.options.Option;     case 3: goto $r7 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     case 4: goto $r6 = new jdk.nashorn.internal.runtime.options.LoggingOption;     case 5: goto $r16 = new jdk.nashorn.internal.runtime.options.Option;     case 6: goto $r4 = new jdk.nashorn.internal.runtime.options.Option;     case 7: goto $r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;     default: goto $r13 = new java.lang.IllegalArgumentException; };	$r2 = new jdk.nashorn.internal.runtime.options.KeyValueOption;	specialinvoke $r2.<jdk.nashorn.internal.runtime.options.KeyValueOption: void <init>(java.lang.String)>(r3);	staticinvoke <jdk.nashorn.internal.runtime.options.Options: void initProps(jdk.nashorn.internal.runtime.options.KeyValueOption)>($r2);	return null
;block_num 3