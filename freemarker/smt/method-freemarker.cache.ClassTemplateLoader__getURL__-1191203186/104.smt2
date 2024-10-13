(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3309 0)
(declare-sort var1135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun basePackagePath/498632177 (var3309) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3309_isSchemeless/743253647 (String) Bool)
(declare-const null-var3309 var3309)
(declare-const null-String String)
(declare-const var711 var3309) ; Statement: r1 := @this: freemarker.cache.ClassTemplateLoader 
(assert (not (= var711 null-var3309)))
(declare-const var627 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var627 null-String)))
(define-const var3182 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3182)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3182!1 String)
(assert (= var3182!1 ""))
(define-const var2594 String (basePackagePath/498632177 var711)) ; Statement: $r2 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.String basePackagePath> 
(assert true)
(define-const var371 String (append/672562846 var3182!1 var2594)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3182!2 String)
(assert (= var3182!2 (str.++ var3182!1 var2594)))
(assert true)
(define-const var2184 String (append/672562846 var371 var627)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var371!1 String)
(assert (= var371!1 (str.++ var371 var627)))
(assert true)
(define-const var2555 String (toString/-2075883882 var2184)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var570 String (basePackagePath/498632177 var711)) ; Statement: $r7 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.String basePackagePath> 
(assert true)
(define-const var983 Bool (= var570 "/")) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("/") 
 ; Statement: if $z0 == 0 goto $r8 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.Class resourceLoaderClass> 
(assert (not (= (ite var983 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3713 Bool (var3309_isSchemeless/743253647 var2555)) ; Statement: $z1 = staticinvoke <freemarker.cache.ClassTemplateLoader: boolean isSchemeless(java.lang.String)>(r6) 
 ; Statement: if $z1 != 0 goto $r8 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.Class resourceLoaderClass> 
(assert (not (not (= (ite var3713 1 0) 0)))) ; Negate: Cond: $z1 != 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), basePackagePath/498632177=([freemarker.cache.ClassTemplateLoader], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3309_isSchemeless/743253647=([java.lang.String], boolean)}
; {var3309=freemarker.cache.ClassTemplateLoader, var711=r1, var627=r3, var1135=null_type, var3182=$r0, var2594=$r2, var371=$r4, var2184=$r5, var2555=r6, var570=$r7, var983=$z0, var3713=$z1}
; {freemarker.cache.ClassTemplateLoader=var3309, r1=var711, r3=var627, null_type=var1135, $r0=var3182, $r2=var2594, $r4=var371, $r5=var2184, r6=var2555, $r7=var570, $z0=var983, $z1=var3713}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: freemarker.cache.ClassTemplateLoader;	r3 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.String basePackagePath>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.String basePackagePath>;	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("/");	if $z0 == 0 goto $r8 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.Class resourceLoaderClass>;	$z1 = staticinvoke <freemarker.cache.ClassTemplateLoader: boolean isSchemeless(java.lang.String)>(r6);	if $z1 != 0 goto $r8 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.Class resourceLoaderClass>;	return null
;block_num 3