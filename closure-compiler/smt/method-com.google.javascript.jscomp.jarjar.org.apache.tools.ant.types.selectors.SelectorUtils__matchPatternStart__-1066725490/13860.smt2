(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2459 0)
(declare-sort var2688 0)
(declare-sort var644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var644_tokenizePathAsArray/-2113585202 (String) (Array Int String))
(declare-fun var644_matchPatternStart/-1940022770 ((Array Int String) (Array Int String) Bool) Bool)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2688-separator String)
(declare-const var1722 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1722 null-String)))
(declare-const var552 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var552 null-String)))
(declare-const var431 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var431 null-Bool)))
(define-const var98 String var2688-separator) ; Statement: $r1 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var1303 Bool (startsWith/-1785782452 var552 var98)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r1) 
(define-const var1388 String var2688-separator) ; Statement: $r3 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var1363 Bool (startsWith/-1785782452 var1722 var1388)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>($r3) 
 ; Statement: if $z1 == $z0 goto r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectorUtils: java.lang.String[] tokenizePathAsArray(java.lang.String)>(r2) 
(assert (= var1303 var1363)) ; Cond: $z1 == $z0 
(define-const var2991 (Array Int String) (var644_tokenizePathAsArray/-2113585202 var1722)) ; Statement: r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectorUtils: java.lang.String[] tokenizePathAsArray(java.lang.String)>(r2) 
(define-const var664 (Array Int String) (var644_tokenizePathAsArray/-2113585202 var552)) ; Statement: r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectorUtils: java.lang.String[] tokenizePathAsArray(java.lang.String)>(r0) 
(define-const var102 Bool (var644_matchPatternStart/-1940022770 var2991 var664 var431)) ; Statement: $z3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectorUtils: boolean matchPatternStart(java.lang.String[],java.lang.String[],boolean)>(r4, r5, z2) 
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var644_tokenizePathAsArray/-2113585202=([java.lang.String], java.lang.String[]), var644_matchPatternStart/-1940022770=([java.lang.String[], java.lang.String[], boolean], boolean)}
; {var1722=r2, var2459=null_type, var552=r0, var431=z2, var2688=java.io.File, var98=$r1, var1303=$z1, var1388=$r3, var1363=$z0, var644=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectorUtils, var2991=r4, var664=r5, var102=$z3}
; {r2=var1722, null_type=var2459, r0=var552, z2=var431, java.io.File=var2688, $r1=var98, $z1=var1303, $r3=var1388, $z0=var1363, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectorUtils=var644, r4=var2991, r5=var664, $z3=var102}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	z2 := @parameter2: boolean;	$r1 = <java.io.File: java.lang.String separator>;	$z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r1);	$r3 = <java.io.File: java.lang.String separator>;	$z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>($r3);	if $z1 == $z0 goto r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectorUtils: java.lang.String[] tokenizePathAsArray(java.lang.String)>(r2);	r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectorUtils: java.lang.String[] tokenizePathAsArray(java.lang.String)>(r2);	r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectorUtils: java.lang.String[] tokenizePathAsArray(java.lang.String)>(r0);	$z3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectorUtils: boolean matchPatternStart(java.lang.String[],java.lang.String[],boolean)>(r4, r5, z2);	return $z3
;block_num 2