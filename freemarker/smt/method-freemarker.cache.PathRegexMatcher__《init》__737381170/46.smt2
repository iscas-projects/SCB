(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2764 0)
(declare-sort var526 0)
(declare-sort var710 0)
(declare-sort var2118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/564067946 (var710) void)
(declare-fun cast-from-var2764-to-var710 (var2764) var710)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2118-init () var2118)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2118 String) void)
(declare-const null-var2764 var2764)
(declare-const null-String String)
(declare-const var3536 var2764) ; Statement: r0 := @this: freemarker.cache.PathRegexMatcher 
(assert (not (= var3536 null-var2764)))
(declare-const var2574 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2574 null-String)))
(assert true)
;(assert (<init>/564067946 (cast-from-var2764-to-var710 var3536))) ; Statement: specialinvoke r0.<freemarker.cache.TemplateSourceMatcher: void <init>()>() 

(declare-const var3536!1 var2764)
(assert true)
(define-const var2896 Bool (startsWith/-1785782452 var2574 "/")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r2 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>(r1) 
(assert (not (= (ite var2896 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1045 var2118 var2118-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var2480 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2480)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2480!1 String)
(assert (= var2480!1 ""))
(assert true)
(define-const var2940 String (append/672562846 var2480!1 "Absolute template paths need no inital \u0022/\u0022; remove it from: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Absolute template paths need no inital \"/\"; remove it from: ") 
(declare-const var2480!2 String)
(assert (= var2480!2 (str.++ var2480!1 "Absolute template paths need no inital \u0022/\u0022; remove it from: ")))
(assert true)
(define-const var2328 String (append/672562846 var2940 var2574)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2940!1 String)
(assert (= var2940!1 (str.++ var2940 var2574)))
(assert true)
(define-const var749 String (toString/-2075883882 var2328)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1045 var749)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var1045!1 var2118)
(declare-const var749!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/564067946=([freemarker.cache.TemplateSourceMatcher], void), cast-from-var2764-to-var710=([freemarker.cache.PathRegexMatcher], freemarker.cache.TemplateSourceMatcher), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2118-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2764=freemarker.cache.PathRegexMatcher, var3536=r0, var2574=r1, var526=null_type, var710=freemarker.cache.TemplateSourceMatcher, var2896=$z0, var2118=java.lang.IllegalArgumentException, var1045=$r3, var2480=$r4, var2940=$r5, var2328=$r6, var749=$r7}
; {freemarker.cache.PathRegexMatcher=var2764, r0=var3536, r1=var2574, null_type=var526, freemarker.cache.TemplateSourceMatcher=var710, $z0=var2896, java.lang.IllegalArgumentException=var2118, $r3=var1045, $r4=var2480, $r5=var2940, $r6=var2328, $r7=var749}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.cache.PathRegexMatcher;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<freemarker.cache.TemplateSourceMatcher: void <init>()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r2 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>(r1);	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Absolute template paths need no inital \"/\"; remove it from: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 2