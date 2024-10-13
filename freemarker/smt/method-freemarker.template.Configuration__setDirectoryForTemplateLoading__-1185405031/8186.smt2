(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2727 0)
(declare-sort var2092 0)
(declare-sort var3243 0)
(declare-sort var1815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTemplateLoader/1911659821 (var2727) var3243)
(declare-fun cast-from-var3243-to-var1815 (var3243) var1815)
(declare-fun baseDir/-807310563 (var1815) var2092)
(declare-fun getCanonicalPath/2030784441 (var2092) String)
(declare-fun var1815-init () var1815)
(declare-fun <init>/-1433046466 (var1815 var2092) void)
(declare-fun setTemplateLoader/-1742899515 (var2727 var3243) void)
(declare-fun cast-from-var1815-to-var3243 (var1815) var3243)
(declare-const null-var2727 var2727)
(declare-const null-var2092 var2092)
(declare-const var2675 var2727) ; Statement: r0 := @this: freemarker.template.Configuration 
(assert (not (= var2675 null-var2727)))
(declare-const var2952 var2092) ; Statement: r3 := @parameter0: java.io.File 
(assert (not (= var2952 null-var2092)))
(assert true)
(define-const var2059 var3243 (getTemplateLoader/1911659821 var2675)) ; Statement: r1 = virtualinvoke r0.<freemarker.template.Configuration: freemarker.cache.TemplateLoader getTemplateLoader()>() 
(define-const var1804 Bool true) ; Statement: $z0 = r1 instanceof freemarker.cache.FileTemplateLoader 
 ; Statement: if $z0 == 0 goto $r2 = new freemarker.cache.FileTemplateLoader 
(assert (not (= (ite var1804 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var270 var1815 (cast-from-var3243-to-var1815 var2059)) ; Statement: $r4 = (freemarker.cache.FileTemplateLoader) r1 
(define-const var1725 var2092 (baseDir/-807310563 var270)) ; Statement: $r5 = $r4.<freemarker.cache.FileTemplateLoader: java.io.File baseDir> 
(assert true)
(define-const var2410 String (getCanonicalPath/2030784441 var1725)) ; Statement: r6 = virtualinvoke $r5.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var2055 String (getCanonicalPath/2030784441 var2952)) ; Statement: $r7 = virtualinvoke r3.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var2286 Bool (= var2410 var2055)) ; Statement: $z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
 ; Statement: if $z1 == 0 goto $r2 = new freemarker.cache.FileTemplateLoader 
(assert (= (ite var2286 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3880 var1815 var1815-init) ; Statement: $r2 = new freemarker.cache.FileTemplateLoader 
(assert true)
;(assert (<init>/-1433046466 var3880 var2952)) ; Statement: specialinvoke $r2.<freemarker.cache.FileTemplateLoader: void <init>(java.io.File)>(r3) 

(declare-const var3880!1 var1815)
(declare-const var2952!1 var2092)
(assert true)
;(assert (setTemplateLoader/-1742899515 var2675 (cast-from-var1815-to-var3243 var3880!1))) ; Statement: virtualinvoke r0.<freemarker.template.Configuration: void setTemplateLoader(freemarker.cache.TemplateLoader)>($r2) 

(declare-const var2675!1 var2727)
(declare-const var3880!2 var1815)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getTemplateLoader/1911659821=([freemarker.template.Configuration], freemarker.cache.TemplateLoader), cast-from-var3243-to-var1815=([freemarker.cache.TemplateLoader], freemarker.cache.FileTemplateLoader), baseDir/-807310563=([freemarker.cache.FileTemplateLoader], java.io.File), getCanonicalPath/2030784441=([java.io.File], java.lang.String), var1815-init=([], freemarker.cache.FileTemplateLoader), <init>/-1433046466=([freemarker.cache.FileTemplateLoader, java.io.File], void), setTemplateLoader/-1742899515=([freemarker.template.Configuration, freemarker.cache.TemplateLoader], void), cast-from-var1815-to-var3243=([freemarker.cache.FileTemplateLoader], freemarker.cache.TemplateLoader)}
; {var2727=freemarker.template.Configuration, var2675=r0, var2092=java.io.File, var2952=r3, var3243=freemarker.cache.TemplateLoader, var2059=r1, var1804=$z0, var1815=freemarker.cache.FileTemplateLoader, var270=$r4, var1725=$r5, var2410=r6, var2055=$r7, var2286=$z1, var3880=$r2}
; {freemarker.template.Configuration=var2727, r0=var2675, java.io.File=var2092, r3=var2952, freemarker.cache.TemplateLoader=var3243, r1=var2059, $z0=var1804, freemarker.cache.FileTemplateLoader=var1815, $r4=var270, $r5=var1725, r6=var2410, $r7=var2055, $z1=var2286, $r2=var3880}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.template.Configuration;	r3 := @parameter0: java.io.File;	r1 = virtualinvoke r0.<freemarker.template.Configuration: freemarker.cache.TemplateLoader getTemplateLoader()>();	$z0 = r1 instanceof freemarker.cache.FileTemplateLoader;	if $z0 == 0 goto $r2 = new freemarker.cache.FileTemplateLoader;	$r4 = (freemarker.cache.FileTemplateLoader) r1;	$r5 = $r4.<freemarker.cache.FileTemplateLoader: java.io.File baseDir>;	r6 = virtualinvoke $r5.<java.io.File: java.lang.String getCanonicalPath()>();	$r7 = virtualinvoke r3.<java.io.File: java.lang.String getCanonicalPath()>();	$z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>($r7);	if $z1 == 0 goto $r2 = new freemarker.cache.FileTemplateLoader;	$r2 = new freemarker.cache.FileTemplateLoader;	specialinvoke $r2.<freemarker.cache.FileTemplateLoader: void <init>(java.io.File)>(r3);	virtualinvoke r0.<freemarker.template.Configuration: void setTemplateLoader(freemarker.cache.TemplateLoader)>($r2);	return
;block_num 3