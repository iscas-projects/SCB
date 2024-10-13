(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3512 0)
(declare-sort var3194 0)
(declare-sort var1561 0)
(declare-sort var1096 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/564067946 (var1561) void)
(declare-fun cast-from-var3512-to-var1561 (var3512) var1561)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var1096-init () var1096)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1096 String) void)
(declare-const null-var3512 var3512)
(declare-const null-String String)
(declare-const var1725 var3512) ; Statement: r0 := @this: freemarker.cache.PathGlobMatcher 
(assert (not (= var1725 null-var3512)))
(declare-const var1073 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1073 null-String)))
(assert true)
;(assert (<init>/564067946 (cast-from-var3512-to-var1561 var1725))) ; Statement: specialinvoke r0.<freemarker.cache.TemplateSourceMatcher: void <init>()>() 

(declare-const var1725!1 var3512)
(assert true)
(define-const var1992 Bool (startsWith/-1785782452 var1073 "/")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto r0.<freemarker.cache.PathGlobMatcher: java.lang.String glob> = r1 
(assert (not (= (ite var1992 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3331 var1096 var1096-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var51 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var51)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var51!1 String)
(assert (= var51!1 ""))
(assert true)
(define-const var1718 String (append/672562846 var51!1 "Absolute template paths need no inital \u0022/\u0022; remove it from: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Absolute template paths need no inital \"/\"; remove it from: ") 
(declare-const var51!2 String)
(assert (= var51!2 (str.++ var51!1 "Absolute template paths need no inital \u0022/\u0022; remove it from: ")))
(assert true)
(define-const var2571 String (append/672562846 var1718 var1073)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1718!1 String)
(assert (= var1718!1 (str.++ var1718 var1073)))
(assert true)
(define-const var3033 String (toString/-2075883882 var2571)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3331 var3033)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var3331!1 var1096)
(declare-const var3033!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/564067946=([freemarker.cache.TemplateSourceMatcher], void), cast-from-var3512-to-var1561=([freemarker.cache.PathGlobMatcher], freemarker.cache.TemplateSourceMatcher), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var1096-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3512=freemarker.cache.PathGlobMatcher, var1725=r0, var1073=r1, var3194=null_type, var1561=freemarker.cache.TemplateSourceMatcher, var1992=$z0, var1096=java.lang.IllegalArgumentException, var3331=$r2, var51=$r3, var1718=$r4, var2571=$r5, var3033=$r6}
; {freemarker.cache.PathGlobMatcher=var3512, r0=var1725, r1=var1073, null_type=var3194, freemarker.cache.TemplateSourceMatcher=var1561, $z0=var1992, java.lang.IllegalArgumentException=var1096, $r2=var3331, $r3=var51, $r4=var1718, $r5=var2571, $r6=var3033}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.cache.PathGlobMatcher;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<freemarker.cache.TemplateSourceMatcher: void <init>()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto r0.<freemarker.cache.PathGlobMatcher: java.lang.String glob> = r1;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Absolute template paths need no inital \"/\"; remove it from: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2