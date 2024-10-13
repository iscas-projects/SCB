(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1687 0)
(declare-sort var2649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1687_of/305096731 (var2649 var2649 var2649 var2649 var2649) var1687)
(declare-fun cast-from-String-to-var2649 (String) var2649)
(declare-fun var1687_of/-2011911237 (var2649 var2649 var2649) var1687)
(define-const var2959 String ".split(\u0027.\u0027)") ; Statement: $r0 = ".split(\'.\')" 
(assert true)
(define-const var114 Int (length/-134980193 var2959)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.String: int length()>() 
(define-const var3531 Int var114) ; Statement: <com.google.javascript.jscomp.PeepholeSubstituteAlternateSyntax: int STRING_SPLIT_OVERHEAD> = $i0 
(define-const var2695 var1687 (var1687_of/305096731 (cast-from-String-to-var2649 "Object") (cast-from-String-to-var2649 "Array") (cast-from-String-to-var2649 "Error") (cast-from-String-to-var2649 "RegExp") (cast-from-String-to-var2649 "Math"))) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet of(java.lang.Object,java.lang.Object,java.lang.Object,java.lang.Object,java.lang.Object)>("Object", "Array", "Error", "RegExp", "Math") 
(define-const var310 var1687 var2695) ; Statement: <com.google.javascript.jscomp.PeepholeSubstituteAlternateSyntax: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet BUILTIN_EXTERNS> = $r1 
(define-const var2566 var1687 (var1687_of/-2011911237 (cast-from-String-to-var2649 "Object") (cast-from-String-to-var2649 "Array") (cast-from-String-to-var2649 "Error"))) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet of(java.lang.Object,java.lang.Object,java.lang.Object)>("Object", "Array", "Error") 
(define-const var1133 var1687 var2566) ; Statement: <com.google.javascript.jscomp.PeepholeSubstituteAlternateSyntax: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet STANDARD_OBJECT_CONSTRUCTORS> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1687_of/305096731=([java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), cast-from-String-to-var2649=([java.lang.String], java.lang.Object), var1687_of/-2011911237=([java.lang.Object, java.lang.Object, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet)}
; {var2959=$r0, var114=$i0, var3531=<com.google.javascript.jscomp.PeepholeSubstituteAlternateSyntax: int STRING_SPLIT_OVERHEAD>, var1687=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2649=java.lang.Object, var2695=$r1, var310=<com.google.javascript.jscomp.PeepholeSubstituteAlternateSyntax: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet BUILTIN_EXTERNS>, var2566=$r2, var1133=<com.google.javascript.jscomp.PeepholeSubstituteAlternateSyntax: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet STANDARD_OBJECT_CONSTRUCTORS>}
; {$r0=var2959, $i0=var114, <com.google.javascript.jscomp.PeepholeSubstituteAlternateSyntax: int STRING_SPLIT_OVERHEAD>=var3531, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1687, java.lang.Object=var2649, $r1=var2695, <com.google.javascript.jscomp.PeepholeSubstituteAlternateSyntax: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet BUILTIN_EXTERNS>=var310, $r2=var2566, <com.google.javascript.jscomp.PeepholeSubstituteAlternateSyntax: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet STANDARD_OBJECT_CONSTRUCTORS>=var1133}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = ".split(\'.\')";	$i0 = virtualinvoke $r0.<java.lang.String: int length()>();	<com.google.javascript.jscomp.PeepholeSubstituteAlternateSyntax: int STRING_SPLIT_OVERHEAD> = $i0;	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet of(java.lang.Object,java.lang.Object,java.lang.Object,java.lang.Object,java.lang.Object)>("Object", "Array", "Error", "RegExp", "Math");	<com.google.javascript.jscomp.PeepholeSubstituteAlternateSyntax: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet BUILTIN_EXTERNS> = $r1;	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet of(java.lang.Object,java.lang.Object,java.lang.Object)>("Object", "Array", "Error");	<com.google.javascript.jscomp.PeepholeSubstituteAlternateSyntax: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet STANDARD_OBJECT_CONSTRUCTORS> = $r2;	return
;block_num 1