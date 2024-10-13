(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var302 0)
(declare-sort var3208 0)
(declare-sort var812 0)
(declare-sort var893 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun this$0/1045790627 (var302) var812)
(declare-fun var812_access$500/784421200 (var812 String) var893)
(declare-const null-var302 var302)
(declare-const null-String String)
(declare-const var1556 var302) ; Statement: r1 := @this: freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext 
(assert (not (= var1556 null-var302)))
(declare-const var654 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var654 null-String)))
(assert true)
(define-const var853 Bool (startsWith/-1785782452 var654 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r2 = r1.<freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext: freemarker.cache.TemplateCache this$0> 
(assert (= (ite var853 1 0) 0)) ; Cond: $z0 == 0 
(define-const var560 var812 (this$0/1045790627 var1556)) ; Statement: $r2 = r1.<freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext: freemarker.cache.TemplateCache this$0> 
(define-const var1061 var893 (var812_access$500/784421200 var560 var654)) ; Statement: $r3 = staticinvoke <freemarker.cache.TemplateCache: freemarker.cache.TemplateLookupResult access$500(freemarker.cache.TemplateCache,java.lang.String)>($r2, r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), this$0/1045790627=([freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext], freemarker.cache.TemplateCache), var812_access$500/784421200=([freemarker.cache.TemplateCache, java.lang.String], freemarker.cache.TemplateLookupResult)}
; {var302=freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext, var1556=r1, var654=r0, var3208=null_type, var853=$z0, var812=freemarker.cache.TemplateCache, var560=$r2, var893=freemarker.cache.TemplateLookupResult, var1061=$r3}
; {freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext=var302, r1=var1556, r0=var654, null_type=var3208, $z0=var853, freemarker.cache.TemplateCache=var812, $r2=var560, freemarker.cache.TemplateLookupResult=var893, $r3=var1061}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r2 = r1.<freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext: freemarker.cache.TemplateCache this$0>;	$r2 = r1.<freemarker.cache.TemplateCache$TemplateCacheTemplateLookupContext: freemarker.cache.TemplateCache this$0>;	$r3 = staticinvoke <freemarker.cache.TemplateCache: freemarker.cache.TemplateLookupResult access$500(freemarker.cache.TemplateCache,java.lang.String)>($r2, r0);	return $r3
;block_num 2