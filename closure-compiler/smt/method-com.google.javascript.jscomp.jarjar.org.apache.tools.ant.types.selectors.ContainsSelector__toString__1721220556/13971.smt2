(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2604 0)
(declare-sort var51 0)
(declare-sort var592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var51-init () (Array Int var51))
(declare-fun contains/-488832980 (var2604) String)
(declare-fun cast-from-String-to-var51 (String) var51)
(declare-fun casesensitive/-488832980 (var2604) Bool)
(declare-fun var592_valueOf/1602327315 (Bool) var592)
(declare-fun cast-from-var592-to-var51 (var592) var51)
(declare-fun ignorewhitespace/-488832980 (var2604) Bool)
(declare-fun String_format/1339386452 (String (Array Int var51)) String)
(declare-const null-var2604 var2604)
(declare-const null-__Array__Int__var51__ (Array Int var51))
(declare-const var3312 var2604) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsSelector 
(assert (not (= var3312 null-var2604)))
(define-const var3231 (Array Int var51) arr-var51-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(define-const var1124 String (contains/-488832980 var3312)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsSelector: java.lang.String contains> 
(declare-const var3231!1 (Array Int var51))
(assert (not (= var3231!1 null-__Array__Int__var51__)))
(assert (= (select var3231!1 0) (cast-from-String-to-var51 var1124))) ; Statement: $r0[0] = $r2 
(define-const var1763 Bool (casesensitive/-488832980 var3312)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsSelector: boolean casesensitive> 
(define-const var418 var592 (var592_valueOf/1602327315 var1763)) ; Statement: $r3 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0) 
(declare-const var3231!2 (Array Int var51))
(assert (not (= var3231!2 null-__Array__Int__var51__)))
(assert (= (select var3231!2 1) (cast-from-var592-to-var51 var418))) ; Statement: $r0[1] = $r3 
(define-const var2903 Bool (ignorewhitespace/-488832980 var3312)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsSelector: boolean ignorewhitespace> 
(define-const var3138 var592 (var592_valueOf/1602327315 var2903)) ; Statement: $r4 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1) 
(declare-const var3231!3 (Array Int var51))
(assert (not (= var3231!3 null-__Array__Int__var51__)))
(assert (= (select var3231!3 2) (cast-from-var592-to-var51 var3138))) ; Statement: $r0[2] = $r4 
(define-const var1921 String (String_format/1339386452 "{containsselector text: \u0022%s\u0022 casesensitive: %s ignorewhitespace: %s}" var3231!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("{containsselector text: \"%s\" casesensitive: %s ignorewhitespace: %s}", $r0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var51-init=([], java.lang.Object[]), contains/-488832980=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsSelector], java.lang.String), cast-from-String-to-var51=([java.lang.String], java.lang.Object), casesensitive/-488832980=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsSelector], boolean), var592_valueOf/1602327315=([boolean], java.lang.Boolean), cast-from-var592-to-var51=([java.lang.Boolean], java.lang.Object), ignorewhitespace/-488832980=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsSelector], boolean), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2604=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsSelector, var3312=r1, var51=java.lang.Object, var3231=$r0, var1124=$r2, var1763=$z0, var592=java.lang.Boolean, var418=$r3, var2903=$z1, var3138=$r4, var1921=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsSelector=var2604, r1=var3312, java.lang.Object=var51, $r0=var3231, $r2=var1124, $z0=var1763, java.lang.Boolean=var592, $r3=var418, $z1=var2903, $r4=var3138, $r5=var1921}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsSelector;	$r0 = newarray (java.lang.Object)[3];	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsSelector: java.lang.String contains>;	$r0[0] = $r2;	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsSelector: boolean casesensitive>;	$r3 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0);	$r0[1] = $r3;	$z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsSelector: boolean ignorewhitespace>;	$r4 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1);	$r0[2] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("{containsselector text: \"%s\" casesensitive: %s ignorewhitespace: %s}", $r0);	return $r5
;block_num 1