(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var763 0)
(declare-sort var3919 0)
(declare-sort var1596 0)
(declare-sort var3275 0)
(declare-sort var1967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$pattern/117970391 (var763) String)
(declare-fun val$flags/117970391 (var763) String)
(declare-fun <init>/-279557996 (var1596) void)
(declare-fun cast-from-var763-to-var1596 (var763) var1596)
(declare-fun var3275-init () var3275)
(declare-fun <init>/-808729244 (var3275) void)
(declare-fun cast-from-var3275-to-var1967 (var3275) var1967)
(declare-fun capturingGroupNames/117970391 (var763) var1967)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun limit/117970391 (var763) Int)
(declare-const null-var763 var763)
(declare-const null-String String)
(declare-const var186 var763) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var186 null-var763)))
(declare-const var3166 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3166 null-String)))
(declare-const var3056 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3056 null-String)))
(declare-const var186!1 var763)
(assert (not (= var186!1 null-var763)))
(assert (= (val$pattern/117970391 var186!1) var3166)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> = r1 
(declare-const var186!2 var763)
(assert (not (= var186!2 null-var763)))
(assert (= (val$flags/117970391 var186!2) var3056)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$flags> = r2 
(assert true)
;(assert (<init>/-279557996 (cast-from-var763-to-var1596 var186!2))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var186!3 var763)
(define-const var1901 var3275 var3275-init) ; Statement: $r3 = new java.util.LinkedHashSet 
(assert true)
;(assert (<init>/-808729244 var1901)) ; Statement: specialinvoke $r3.<java.util.LinkedHashSet: void <init>()>() 

(declare-const var1901!1 var3275)
(declare-const var186!4 var763)
(assert (not (= var186!4 null-var763)))
(assert (= (capturingGroupNames/117970391 var186!4) (cast-from-var3275-to-var1967 var1901!1))) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.util.Set capturingGroupNames> = $r3 
(define-const var2897 String (val$pattern/117970391 var186!4)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(assert true)
(define-const var1658 Int (length/-134980193 var2897)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.String: int length()>() 
(declare-const var186!5 var763)
(assert (not (= var186!5 null-var763)))
(assert (= (limit/117970391 var186!5) var1658)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), val$flags/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), <init>/-279557996=([java.lang.Object], void), cast-from-var763-to-var1596=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.Object), var3275-init=([], java.util.LinkedHashSet), <init>/-808729244=([java.util.LinkedHashSet], void), cast-from-var3275-to-var1967=([java.util.LinkedHashSet], java.util.Set), capturingGroupNames/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.util.Set), length/-134980193=([java.lang.String], int), limit/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int)}
; {var763=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var186=r0, var3166=r1, var3919=null_type, var3056=r2, var1596=java.lang.Object, var3275=java.util.LinkedHashSet, var1901=$r3, var1967=java.util.Set, var2897=$r4, var1658=$i0}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var763, r0=var186, r1=var3166, null_type=var3919, r2=var3056, java.lang.Object=var1596, java.util.LinkedHashSet=var3275, $r3=var1901, java.util.Set=var1967, $r4=var2897, $i0=var1658}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> = r1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$flags> = r2;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r3 = new java.util.LinkedHashSet;	specialinvoke $r3.<java.util.LinkedHashSet: void <init>()>();	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.util.Set capturingGroupNames> = $r3;	$r4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i0 = virtualinvoke $r4.<java.lang.String: int length()>();	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> = $i0;	return
;block_num 1