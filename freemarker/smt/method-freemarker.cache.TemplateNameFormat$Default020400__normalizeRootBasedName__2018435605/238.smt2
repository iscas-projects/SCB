(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var446 0)
(declare-sort var490 0)
(declare-sort var2072 0)
(declare-sort var2505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2072_access$300/-1019093091 (String) void)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2505-init () var2505)
(declare-fun <init>/730290330 (var2505 String String) void)
(declare-const null-var446 var446)
(declare-const null-String String)
(declare-const var1114 var446) ; Statement: r1 := @this: freemarker.cache.TemplateNameFormat$Default020400 
(assert (not (= var1114 null-var446)))
(declare-const var3861 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3861 null-String)))
;(assert (var2072_access$300/-1019093091 var3861)) ; Statement: staticinvoke <freemarker.cache.TemplateNameFormat: void access$300(java.lang.String)>(r0) 

(declare-const var3861!1 String)
(assert true)
(define-const var2398 Int (indexOf/-1037706067 var3861!1 92)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92) 
(define-const var2108 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i0 == $i4 goto i1 = specialinvoke r1.<freemarker.cache.TemplateNameFormat$Default020400: int findSchemeSectionEnd(java.lang.String)>(r0) 
(assert (not (= var2398 var2108))) ; Negate: Cond: $i0 == $i4  
(define-const var2416 var2505 var2505-init) ; Statement: $r14 = new freemarker.template.MalformedTemplateNameException 
(assert true)
;(assert (<init>/730290330 var2416 var3861!1 "Backslash (\u0022\u005c\u0022) is not allowed in template names. Use slash (\u0022/\u0022) instead.")) ; Statement: specialinvoke $r14.<freemarker.template.MalformedTemplateNameException: void <init>(java.lang.String,java.lang.String)>(r0, "Backslash (\"\\\") is not allowed in template names. Use slash (\"/\") instead.") 

(declare-const var2416!1 var2505)
(declare-const var3861!2 String)
(declare-const var2585 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2072_access$300/-1019093091=([java.lang.String], void), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var2505-init=([], freemarker.template.MalformedTemplateNameException), <init>/730290330=([freemarker.template.MalformedTemplateNameException, java.lang.String, java.lang.String], void)}
; {var446=freemarker.cache.TemplateNameFormat$Default020400, var1114=r1, var3861=r0, var490=null_type, var2072=freemarker.cache.TemplateNameFormat, var2398=$i0, var2108=$i4, var2505=freemarker.template.MalformedTemplateNameException, var2416=$r14, var2585="Backslash (\"\\\") is not allowed in template names. Use slash (\"/\") instead."}
; {freemarker.cache.TemplateNameFormat$Default020400=var446, r1=var1114, r0=var3861, null_type=var490, freemarker.cache.TemplateNameFormat=var2072, $i0=var2398, $i4=var2108, freemarker.template.MalformedTemplateNameException=var2505, $r14=var2416, "Backslash (\"\\\") is not allowed in template names. Use slash (\"/\") instead."=var2585}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: freemarker.cache.TemplateNameFormat$Default020400;	r0 := @parameter0: java.lang.String;	staticinvoke <freemarker.cache.TemplateNameFormat: void access$300(java.lang.String)>(r0);	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92);	$i4 = (int) -1;	if $i0 == $i4 goto i1 = specialinvoke r1.<freemarker.cache.TemplateNameFormat$Default020400: int findSchemeSectionEnd(java.lang.String)>(r0);	$r14 = new freemarker.template.MalformedTemplateNameException;	specialinvoke $r14.<freemarker.template.MalformedTemplateNameException: void <init>(java.lang.String,java.lang.String)>(r0, "Backslash (\"\\\") is not allowed in template names. Use slash (\"/\") instead.");	throw $r14
;block_num 2