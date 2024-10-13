(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2760 0)
(declare-sort var3043 0)
(declare-sort var2965 0)
(declare-sort var625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/564067946 (var2965) void)
(declare-fun cast-from-var2760-to-var2965 (var2760) var2965)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var625_compile/2141929305 (String) var625)
(declare-fun pattern/684416516 (var2760) var625)
(declare-const null-var2760 var2760)
(declare-const null-String String)
(declare-const var3020 var2760) ; Statement: r0 := @this: freemarker.cache.PathRegexMatcher 
(assert (not (= var3020 null-var2760)))
(declare-const var2857 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2857 null-String)))
(assert true)
;(assert (<init>/564067946 (cast-from-var2760-to-var2965 var3020))) ; Statement: specialinvoke r0.<freemarker.cache.TemplateSourceMatcher: void <init>()>() 

(declare-const var3020!1 var2760)
(assert true)
(define-const var1681 Bool (startsWith/-1785782452 var2857 "/")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r2 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>(r1) 
(assert (= (ite var1681 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3507 var625 (var625_compile/2141929305 var2857)) ; Statement: $r2 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>(r1) 
(declare-const var3020!2 var2760)
(assert (not (= var3020!2 null-var2760)))
(assert (= (pattern/684416516 var3020!2) var3507)) ; Statement: r0.<freemarker.cache.PathRegexMatcher: java.util.regex.Pattern pattern> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/564067946=([freemarker.cache.TemplateSourceMatcher], void), cast-from-var2760-to-var2965=([freemarker.cache.PathRegexMatcher], freemarker.cache.TemplateSourceMatcher), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var625_compile/2141929305=([java.lang.String], java.util.regex.Pattern), pattern/684416516=([freemarker.cache.PathRegexMatcher], java.util.regex.Pattern)}
; {var2760=freemarker.cache.PathRegexMatcher, var3020=r0, var2857=r1, var3043=null_type, var2965=freemarker.cache.TemplateSourceMatcher, var1681=$z0, var625=java.util.regex.Pattern, var3507=$r2}
; {freemarker.cache.PathRegexMatcher=var2760, r0=var3020, r1=var2857, null_type=var3043, freemarker.cache.TemplateSourceMatcher=var2965, $z0=var1681, java.util.regex.Pattern=var625, $r2=var3507}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.cache.PathRegexMatcher;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<freemarker.cache.TemplateSourceMatcher: void <init>()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r2 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>(r1);	$r2 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>(r1);	r0.<freemarker.cache.PathRegexMatcher: java.util.regex.Pattern pattern> = $r2;	return
;block_num 2