(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3671 0)
(declare-sort var2040 0)
(declare-sort var2724 0)
(declare-sort var3943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2724_access$300/-1019093091 (String) void)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun var2724_access$400/806774627 (String) var3943)
(declare-const null-var3671 var3671)
(declare-const null-String String)
(declare-const var3755 var3671) ; Statement: r16 := @this: freemarker.cache.TemplateNameFormat$Default020300 
(assert (not (= var3755 null-var3671)))
(declare-const var527 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var527 null-String)))
;(assert (var2724_access$300/-1019093091 var527)) ; Statement: staticinvoke <freemarker.cache.TemplateNameFormat: void access$300(java.lang.String)>(r0) 

(declare-const var527!1 String)
(define-const var658 String var527!1) ; Statement: r17 = r0 
(assert true) ; Non Conditional
(assert true)
(define-const var3863 Int (indexOf/-1209756239 var658 "/../")) ; Statement: $i5 = virtualinvoke r17.<java.lang.String: int indexOf(java.lang.String)>("/../") 
 ; Statement: if $i5 != 0 goto $i14 = (int) -1 
(assert (not (not (= var3863 0)))) ; Negate: Cond: $i5 != 0  
(define-const var3674 var3943 (var2724_access$400/806774627 var527!1)) ; Statement: $r15 = staticinvoke <freemarker.cache.TemplateNameFormat: freemarker.template.MalformedTemplateNameException access$400(java.lang.String)>(r0) 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2724_access$300/-1019093091=([java.lang.String], void), indexOf/-1209756239=([java.lang.String, java.lang.String], int), var2724_access$400/806774627=([java.lang.String], freemarker.template.MalformedTemplateNameException)}
; {var3671=freemarker.cache.TemplateNameFormat$Default020300, var3755=r16, var527=r0, var2040=null_type, var2724=freemarker.cache.TemplateNameFormat, var658=r17, var3863=$i5, var3943=freemarker.template.MalformedTemplateNameException, var3674=$r15}
; {freemarker.cache.TemplateNameFormat$Default020300=var3671, r16=var3755, r0=var527, null_type=var2040, freemarker.cache.TemplateNameFormat=var2724, r17=var658, $i5=var3863, freemarker.template.MalformedTemplateNameException=var3943, $r15=var3674}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r16 := @this: freemarker.cache.TemplateNameFormat$Default020300;	r0 := @parameter0: java.lang.String;	staticinvoke <freemarker.cache.TemplateNameFormat: void access$300(java.lang.String)>(r0);	r17 = r0;	$i5 = virtualinvoke r17.<java.lang.String: int indexOf(java.lang.String)>("/../");	if $i5 != 0 goto $i14 = (int) -1;	$r15 = staticinvoke <freemarker.cache.TemplateNameFormat: freemarker.template.MalformedTemplateNameException access$400(java.lang.String)>(r0);	throw $r15
;block_num 3