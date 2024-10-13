(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var840 0)
(declare-sort var3740 0)
(declare-sort var3509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/564067946 (var3509) void)
(declare-fun cast-from-var840-to-var3509 (var840) var3509)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun glob/1469125217 (var840) String)
(declare-fun buildPattern/-1612237998 (var840) void)
(declare-const null-var840 var840)
(declare-const null-String String)
(declare-const var3469 var840) ; Statement: r0 := @this: freemarker.cache.PathGlobMatcher 
(assert (not (= var3469 null-var840)))
(declare-const var2845 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2845 null-String)))
(assert true)
;(assert (<init>/564067946 (cast-from-var840-to-var3509 var3469))) ; Statement: specialinvoke r0.<freemarker.cache.TemplateSourceMatcher: void <init>()>() 

(declare-const var3469!1 var840)
(assert true)
(define-const var1975 Bool (startsWith/-1785782452 var2845 "/")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto r0.<freemarker.cache.PathGlobMatcher: java.lang.String glob> = r1 
(assert (= (ite var1975 1 0) 0)) ; Cond: $z0 == 0 
(declare-const var3469!2 var840)
(assert (not (= var3469!2 null-var840)))
(assert (= (glob/1469125217 var3469!2) var2845)) ; Statement: r0.<freemarker.cache.PathGlobMatcher: java.lang.String glob> = r1 
(assert true)
;(assert (buildPattern/-1612237998 var3469!2)) ; Statement: specialinvoke r0.<freemarker.cache.PathGlobMatcher: void buildPattern()>() 

(declare-const var3469!3 var840)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/564067946=([freemarker.cache.TemplateSourceMatcher], void), cast-from-var840-to-var3509=([freemarker.cache.PathGlobMatcher], freemarker.cache.TemplateSourceMatcher), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), glob/1469125217=([freemarker.cache.PathGlobMatcher], java.lang.String), buildPattern/-1612237998=([freemarker.cache.PathGlobMatcher], void)}
; {var840=freemarker.cache.PathGlobMatcher, var3469=r0, var2845=r1, var3740=null_type, var3509=freemarker.cache.TemplateSourceMatcher, var1975=$z0}
; {freemarker.cache.PathGlobMatcher=var840, r0=var3469, r1=var2845, null_type=var3740, freemarker.cache.TemplateSourceMatcher=var3509, $z0=var1975}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.cache.PathGlobMatcher;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<freemarker.cache.TemplateSourceMatcher: void <init>()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto r0.<freemarker.cache.PathGlobMatcher: java.lang.String glob> = r1;	r0.<freemarker.cache.PathGlobMatcher: java.lang.String glob> = r1;	specialinvoke r0.<freemarker.cache.PathGlobMatcher: void buildPattern()>();	return
;block_num 2