(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1069 0)
(declare-sort var579 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var1069_of/60991854 (var579 var579 var579 var579) var1069)
(declare-fun cast-from-String-to-var579 (String) var579)
(define-const var1885 String "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ$") ; Statement: $r0 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ$" 
(assert true)
(define-const var695 (Array Int Int) (toCharArray/415275702 var1885)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>() 
(define-const var3786 (Array Int Int) var695) ; Statement: <com.google.javascript.jscomp.DefaultNameGenerator: char[] FIRST_CHAR> = $r1 
(define-const var3918 String "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_0123456789$") ; Statement: $r2 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_0123456789$" 
(assert true)
(define-const var3911 (Array Int Int) (toCharArray/415275702 var3918)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
(define-const var2439 (Array Int Int) var3911) ; Statement: <com.google.javascript.jscomp.DefaultNameGenerator: char[] NONFIRST_CHAR> = $r3 
(define-const var2677 var1069 (var1069_of/60991854 (cast-from-String-to-var579 "let") (cast-from-String-to-var579 "yield") (cast-from-String-to-var579 "await") (cast-from-String-to-var579 "eval"))) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet of(java.lang.Object,java.lang.Object,java.lang.Object,java.lang.Object)>("let", "yield", "await", "eval") 
(define-const var276 var1069 var2677) ; Statement: <com.google.javascript.jscomp.DefaultNameGenerator: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet BAD_NAMES> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), var1069_of/60991854=([java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), cast-from-String-to-var579=([java.lang.String], java.lang.Object)}
; {var1885=$r0, var695=$r1, var3786=<com.google.javascript.jscomp.DefaultNameGenerator: char[] FIRST_CHAR>, var3918=$r2, var3911=$r3, var2439=<com.google.javascript.jscomp.DefaultNameGenerator: char[] NONFIRST_CHAR>, var1069=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var579=java.lang.Object, var2677=$r4, var276=<com.google.javascript.jscomp.DefaultNameGenerator: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet BAD_NAMES>}
; {$r0=var1885, $r1=var695, <com.google.javascript.jscomp.DefaultNameGenerator: char[] FIRST_CHAR>=var3786, $r2=var3918, $r3=var3911, <com.google.javascript.jscomp.DefaultNameGenerator: char[] NONFIRST_CHAR>=var2439, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1069, java.lang.Object=var579, $r4=var2677, <com.google.javascript.jscomp.DefaultNameGenerator: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet BAD_NAMES>=var276}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 2}
;stmts $r0 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ$";	$r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>();	<com.google.javascript.jscomp.DefaultNameGenerator: char[] FIRST_CHAR> = $r1;	$r2 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_0123456789$";	$r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	<com.google.javascript.jscomp.DefaultNameGenerator: char[] NONFIRST_CHAR> = $r3;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet of(java.lang.Object,java.lang.Object,java.lang.Object,java.lang.Object)>("let", "yield", "await", "eval");	<com.google.javascript.jscomp.DefaultNameGenerator: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet BAD_NAMES> = $r4;	return
;block_num 1