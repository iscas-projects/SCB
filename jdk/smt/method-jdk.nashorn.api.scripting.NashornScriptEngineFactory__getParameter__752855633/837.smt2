(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2190 0)
(declare-sort var3004 0)
(declare-sort var3832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3832_version/878240485 () String)
(declare-const null-var2190 var2190)
(declare-const null-String String)
(declare-const var697 var2190) ; Statement: r2 := @this: jdk.nashorn.api.scripting.NashornScriptEngineFactory 
(assert (not (= var697 null-var2190)))
(declare-const var3445 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3445 null-String)))
(define-const var2924 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var821 Int (hashCode/-467973558 var3445)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1073020410: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.engine_version");     case -1047659667: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.engine");     case -917703229: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.language");     case -852670884: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.language_version");     case -125973898: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.name");     case 1224369528: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("THREADING");     default: goto tableswitch(b1) {     case 0: goto return "javascript";     case 1: goto return "Oracle Nashorn";     case 2: goto $r1 = staticinvoke <jdk.nashorn.internal.runtime.Version: java.lang.String version()>();     case 3: goto return "ECMAScript";     case 4: goto return "ECMA - 262 Edition 5.1";     case 5: goto return null;     default: goto return null; }; } 
(assert (and (not (= var821 1224369528)) (and (not (= var821 (- 125973898))) (and (not (= var821 (- 852670884))) (and (not (= var821 (- 917703229))) (and (not (= var821 (- 1047659667))) (and (not (= var821 (- 1073020410))) true))))))) ; Intersect: Negate: Cond: $i0 == 1224369528   and Intersect: Negate: Cond: $i0 == -125973898   and Intersect: Negate: Cond: $i0 == -852670884   and Intersect: Negate: Cond: $i0 == -917703229   and Intersect: Negate: Cond: $i0 == -1047659667   and Intersect: Negate: Cond: $i0 == -1073020410   and Non Conditional      
 ; Statement: tableswitch(b1) {     case 0: goto return "javascript";     case 1: goto return "Oracle Nashorn";     case 2: goto $r1 = staticinvoke <jdk.nashorn.internal.runtime.Version: java.lang.String version()>();     case 3: goto return "ECMAScript";     case 4: goto return "ECMA - 262 Edition 5.1";     case 5: goto return null;     default: goto return null; } 
(assert (and (= var2924 2) (and (not (= var2924 1)) (and (not (= var2924 0)) true)))) ; Intersect: Cond: b1 == 2  and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(define-const var3467 String var3832_version/878240485) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.runtime.Version: java.lang.String version()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var3832_version/878240485=([], java.lang.String)}
; {var2190=jdk.nashorn.api.scripting.NashornScriptEngineFactory, var697=r2, var3445=r0, var3004=null_type, var2924=b1, var821=$i0, var3832=jdk.nashorn.internal.runtime.Version, var3467=$r1}
; {jdk.nashorn.api.scripting.NashornScriptEngineFactory=var2190, r2=var697, r0=var3445, null_type=var3004, b1=var2924, $i0=var821, jdk.nashorn.internal.runtime.Version=var3832, $r1=var3467}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @this: jdk.nashorn.api.scripting.NashornScriptEngineFactory;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1073020410: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.engine_version");     case -1047659667: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.engine");     case -917703229: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.language");     case -852670884: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.language_version");     case -125973898: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.name");     case 1224369528: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("THREADING");     default: goto tableswitch(b1) {     case 0: goto return "javascript";     case 1: goto return "Oracle Nashorn";     case 2: goto $r1 = staticinvoke <jdk.nashorn.internal.runtime.Version: java.lang.String version()>();     case 3: goto return "ECMAScript";     case 4: goto return "ECMA - 262 Edition 5.1";     case 5: goto return null;     default: goto return null; }; };	tableswitch(b1) {     case 0: goto return "javascript";     case 1: goto return "Oracle Nashorn";     case 2: goto $r1 = staticinvoke <jdk.nashorn.internal.runtime.Version: java.lang.String version()>();     case 3: goto return "ECMAScript";     case 4: goto return "ECMA - 262 Edition 5.1";     case 5: goto return null;     default: goto return null; };	$r1 = staticinvoke <jdk.nashorn.internal.runtime.Version: java.lang.String version()>();	return $r1
;block_num 3