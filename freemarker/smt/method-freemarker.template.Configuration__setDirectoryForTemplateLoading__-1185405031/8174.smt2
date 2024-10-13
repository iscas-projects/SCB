(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2994 0)
(declare-sort var869 0)
(declare-sort var62 0)
(declare-sort var105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTemplateLoader/1911659821 (var2994) var62)
(declare-fun cast-from-var62-to-var105 (var62) var105)
(declare-fun baseDir/-807310563 (var105) var869)
(declare-fun getCanonicalPath/2030784441 (var869) String)
(declare-const null-var2994 var2994)
(declare-const null-var869 var869)
(declare-const var634 var2994) ; Statement: r0 := @this: freemarker.template.Configuration 
(assert (not (= var634 null-var2994)))
(declare-const var802 var869) ; Statement: r3 := @parameter0: java.io.File 
(assert (not (= var802 null-var869)))
(assert true)
(define-const var346 var62 (getTemplateLoader/1911659821 var634)) ; Statement: r1 = virtualinvoke r0.<freemarker.template.Configuration: freemarker.cache.TemplateLoader getTemplateLoader()>() 
(define-const var1674 Bool true) ; Statement: $z0 = r1 instanceof freemarker.cache.FileTemplateLoader 
 ; Statement: if $z0 == 0 goto $r2 = new freemarker.cache.FileTemplateLoader 
(assert (not (= (ite var1674 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2307 var105 (cast-from-var62-to-var105 var346)) ; Statement: $r4 = (freemarker.cache.FileTemplateLoader) r1 
(define-const var3352 var869 (baseDir/-807310563 var2307)) ; Statement: $r5 = $r4.<freemarker.cache.FileTemplateLoader: java.io.File baseDir> 
(assert true)
(define-const var284 String (getCanonicalPath/2030784441 var3352)) ; Statement: r6 = virtualinvoke $r5.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var1393 String (getCanonicalPath/2030784441 var802)) ; Statement: $r7 = virtualinvoke r3.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var2087 Bool (= var284 var1393)) ; Statement: $z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
 ; Statement: if $z1 == 0 goto $r2 = new freemarker.cache.FileTemplateLoader 
(assert (not (= (ite var2087 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getTemplateLoader/1911659821=([freemarker.template.Configuration], freemarker.cache.TemplateLoader), cast-from-var62-to-var105=([freemarker.cache.TemplateLoader], freemarker.cache.FileTemplateLoader), baseDir/-807310563=([freemarker.cache.FileTemplateLoader], java.io.File), getCanonicalPath/2030784441=([java.io.File], java.lang.String)}
; {var2994=freemarker.template.Configuration, var634=r0, var869=java.io.File, var802=r3, var62=freemarker.cache.TemplateLoader, var346=r1, var1674=$z0, var105=freemarker.cache.FileTemplateLoader, var2307=$r4, var3352=$r5, var284=r6, var1393=$r7, var2087=$z1}
; {freemarker.template.Configuration=var2994, r0=var634, java.io.File=var869, r3=var802, freemarker.cache.TemplateLoader=var62, r1=var346, $z0=var1674, freemarker.cache.FileTemplateLoader=var105, $r4=var2307, $r5=var3352, r6=var284, $r7=var1393, $z1=var2087}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.template.Configuration;	r3 := @parameter0: java.io.File;	r1 = virtualinvoke r0.<freemarker.template.Configuration: freemarker.cache.TemplateLoader getTemplateLoader()>();	$z0 = r1 instanceof freemarker.cache.FileTemplateLoader;	if $z0 == 0 goto $r2 = new freemarker.cache.FileTemplateLoader;	$r4 = (freemarker.cache.FileTemplateLoader) r1;	$r5 = $r4.<freemarker.cache.FileTemplateLoader: java.io.File baseDir>;	r6 = virtualinvoke $r5.<java.io.File: java.lang.String getCanonicalPath()>();	$r7 = virtualinvoke r3.<java.io.File: java.lang.String getCanonicalPath()>();	$z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>($r7);	if $z1 == 0 goto $r2 = new freemarker.cache.FileTemplateLoader;	return
;block_num 3