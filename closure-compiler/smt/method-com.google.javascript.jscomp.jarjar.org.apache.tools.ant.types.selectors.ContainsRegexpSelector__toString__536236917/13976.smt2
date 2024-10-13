(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3961 0)
(declare-sort var222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var222-init () (Array Int var222))
(declare-fun userProvidedExpression/50673301 (var3961) String)
(declare-fun cast-from-String-to-var222 (String) var222)
(declare-fun String_format/1339386452 (String (Array Int var222)) String)
(declare-const null-var3961 var3961)
(declare-const null-__Array__Int__var222__ (Array Int var222))
(declare-const var1917 var3961) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsRegexpSelector 
(assert (not (= var1917 null-var3961)))
(define-const var3068 (Array Int var222) arr-var222-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var1053 String (userProvidedExpression/50673301 var1917)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsRegexpSelector: java.lang.String userProvidedExpression> 
(declare-const var3068!1 (Array Int var222))
(assert (not (= var3068!1 null-__Array__Int__var222__)))
(assert (= (select var3068!1 0) (cast-from-String-to-var222 var1053))) ; Statement: $r0[0] = $r2 
(define-const var3793 String (String_format/1339386452 "{containsregexpselector expression: %s}" var3068!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("{containsregexpselector expression: %s}", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var222-init=([], java.lang.Object[]), userProvidedExpression/50673301=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsRegexpSelector], java.lang.String), cast-from-String-to-var222=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3961=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsRegexpSelector, var1917=r1, var222=java.lang.Object, var3068=$r0, var1053=$r2, var3793=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsRegexpSelector=var3961, r1=var1917, java.lang.Object=var222, $r0=var3068, $r2=var1053, $r3=var3793}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsRegexpSelector;	$r0 = newarray (java.lang.Object)[1];	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.ContainsRegexpSelector: java.lang.String userProvidedExpression>;	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("{containsregexpselector expression: %s}", $r0);	return $r3
;block_num 1