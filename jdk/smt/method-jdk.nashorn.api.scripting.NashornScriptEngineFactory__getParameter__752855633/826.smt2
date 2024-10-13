(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1797 0)
(declare-sort var3392 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1797 var1797)
(declare-const null-String String)
(declare-const var1423 var1797) ; Statement: r2 := @this: jdk.nashorn.api.scripting.NashornScriptEngineFactory 
(assert (not (= var1423 null-var1797)))
(declare-const var2357 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2357 null-String)))
(define-const var3335 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2868 Int (hashCode/-467973558 var2357)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1073020410: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.engine_version");     case -1047659667: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.engine");     case -917703229: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.language");     case -852670884: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.language_version");     case -125973898: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.name");     case 1224369528: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("THREADING");     default: goto tableswitch(b1) {     case 0: goto return "javascript";     case 1: goto return "Oracle Nashorn";     case 2: goto $r1 = staticinvoke <jdk.nashorn.internal.runtime.Version: java.lang.String version()>();     case 3: goto return "ECMAScript";     case 4: goto return "ECMA - 262 Edition 5.1";     case 5: goto return null;     default: goto return null; }; } 
(assert (and (not (= var2868 1224369528)) (and (not (= var2868 (- 125973898))) (and (not (= var2868 (- 852670884))) (and (not (= var2868 (- 917703229))) (and (not (= var2868 (- 1047659667))) (and (not (= var2868 (- 1073020410))) true))))))) ; Intersect: Negate: Cond: $i0 == 1224369528   and Intersect: Negate: Cond: $i0 == -125973898   and Intersect: Negate: Cond: $i0 == -852670884   and Intersect: Negate: Cond: $i0 == -917703229   and Intersect: Negate: Cond: $i0 == -1047659667   and Intersect: Negate: Cond: $i0 == -1073020410   and Non Conditional      
 ; Statement: tableswitch(b1) {     case 0: goto return "javascript";     case 1: goto return "Oracle Nashorn";     case 2: goto $r1 = staticinvoke <jdk.nashorn.internal.runtime.Version: java.lang.String version()>();     case 3: goto return "ECMAScript";     case 4: goto return "ECMA - 262 Edition 5.1";     case 5: goto return null;     default: goto return null; } 
(assert (and (= var3335 1) (and (not (= var3335 0)) true))) ; Intersect: Cond: b1 == 1  and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
 ; Statement: return "Oracle Nashorn" 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var1797=jdk.nashorn.api.scripting.NashornScriptEngineFactory, var1423=r2, var2357=r0, var3392=null_type, var3335=b1, var2868=$i0}
; {jdk.nashorn.api.scripting.NashornScriptEngineFactory=var1797, r2=var1423, r0=var2357, null_type=var3392, b1=var3335, $i0=var2868}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @this: jdk.nashorn.api.scripting.NashornScriptEngineFactory;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1073020410: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.engine_version");     case -1047659667: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.engine");     case -917703229: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.language");     case -852670884: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.language_version");     case -125973898: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("javax.script.name");     case 1224369528: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("THREADING");     default: goto tableswitch(b1) {     case 0: goto return "javascript";     case 1: goto return "Oracle Nashorn";     case 2: goto $r1 = staticinvoke <jdk.nashorn.internal.runtime.Version: java.lang.String version()>();     case 3: goto return "ECMAScript";     case 4: goto return "ECMA - 262 Edition 5.1";     case 5: goto return null;     default: goto return null; }; };	tableswitch(b1) {     case 0: goto return "javascript";     case 1: goto return "Oracle Nashorn";     case 2: goto $r1 = staticinvoke <jdk.nashorn.internal.runtime.Version: java.lang.String version()>();     case 3: goto return "ECMAScript";     case 4: goto return "ECMA - 262 Edition 5.1";     case 5: goto return null;     default: goto return null; };	return "Oracle Nashorn"
;block_num 3