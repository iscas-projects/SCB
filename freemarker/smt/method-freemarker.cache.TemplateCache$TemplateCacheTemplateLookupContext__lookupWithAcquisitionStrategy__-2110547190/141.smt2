(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3576 0)
(declare-sort var3012 0)
(declare-sort var1719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var1719-init () var1719)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1719 String) void)
(declare-const null-var3576 var3576)
(declare-const null-String String)
(declare-const var2194 var3576) ; Statement: r1 := @this: freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext 
(assert (not (= var2194 null-var3576)))
(declare-const var2620 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2620 null-String)))
(assert true)
(define-const var78 Bool (startsWith/-1785782452 var2620 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r2 = r1.<freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext: freemarker.cache.TemplateCache this$0> 
(assert (not (= (ite var78 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var798 var1719 var1719-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var1137 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1137)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1137!1 String)
(assert (= var1137!1 ""))
(assert true)
(define-const var3233 String (append/672562846 var1137!1 "Non-normalized name, starts with \u0022/\u0022: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Non-normalized name, starts with \"/\": ") 
(declare-const var1137!2 String)
(assert (= var1137!2 (str.++ var1137!1 "Non-normalized name, starts with \u0022/\u0022: ")))
(assert true)
(define-const var75 String (append/672562846 var3233 var2620)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3233!1 String)
(assert (= var3233!1 (str.++ var3233 var2620)))
(assert true)
(define-const var3124 String (toString/-2075883882 var75)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var798 var3124)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var798!1 var1719)
(declare-const var3124!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var1719-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3576=freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext, var2194=r1, var2620=r0, var3012=null_type, var78=$z0, var1719=java.lang.IllegalArgumentException, var798=$r4, var1137=$r5, var3233=$r6, var75=$r7, var3124=$r8}
; {freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext=var3576, r1=var2194, r0=var2620, null_type=var3012, $z0=var78, java.lang.IllegalArgumentException=var1719, $r4=var798, $r5=var1137, $r6=var3233, $r7=var75, $r8=var3124}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r2 = r1.<freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext: freemarker.cache.TemplateCache this$0>;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Non-normalized name, starts with \"/\": ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2