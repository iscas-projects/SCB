(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1597 0)
(declare-sort var3890 0)
(declare-sort var3110 0)
(declare-sort var1340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun findTemplateSource/-1827546915 (var1597 String) var3110)
(declare-fun var1340_from/-810787417 (String var3110) var1340)
(declare-const null-var1597 var1597)
(declare-const null-String String)
(declare-const var2008 var1597) ; Statement: r3 := @this: freemarker.cache.TemplateCache 
(assert (not (= var2008 null-var1597)))
(declare-const var3198 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3198 null-String)))
(assert true)
(define-const var1987 Int (indexOf/-1037706067 var3198 42)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(42) 
(define-const var340 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i0 != $i11 goto $r18 = new java.util.StringTokenizer 
(assert (not (not (= var1987 var340)))) ; Negate: Cond: i0 != $i11  
(assert true)
(define-const var2536 var3110 (findTemplateSource/-1827546915 var2008 var3198)) ; Statement: $r10 = specialinvoke r3.<freemarker.cache.TemplateCache: java.lang.Object findTemplateSource(java.lang.String)>(r0) 
(define-const var2734 var1340 (var1340_from/-810787417 var3198 var2536)) ; Statement: $r11 = staticinvoke <freemarker.cache.TemplateLookupResult: freemarker.cache.TemplateLookupResult 'from'(java.lang.String,java.lang.Object)>(r0, $r10) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), findTemplateSource/-1827546915=([freemarker.cache.TemplateCache, java.lang.String], java.lang.Object), var1340_from/-810787417=([java.lang.String, java.lang.Object], freemarker.cache.TemplateLookupResult)}
; {var1597=freemarker.cache.TemplateCache, var2008=r3, var3198=r0, var3890=null_type, var1987=i0, var340=$i11, var3110=java.lang.Object, var2536=$r10, var1340=freemarker.cache.TemplateLookupResult, var2734=$r11}
; {freemarker.cache.TemplateCache=var1597, r3=var2008, r0=var3198, null_type=var3890, i0=var1987, $i11=var340, java.lang.Object=var3110, $r10=var2536, freemarker.cache.TemplateLookupResult=var1340, $r11=var2734}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r3 := @this: freemarker.cache.TemplateCache;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(42);	$i11 = (int) -1;	if i0 != $i11 goto $r18 = new java.util.StringTokenizer;	$r10 = specialinvoke r3.<freemarker.cache.TemplateCache: java.lang.Object findTemplateSource(java.lang.String)>(r0);	$r11 = staticinvoke <freemarker.cache.TemplateLookupResult: freemarker.cache.TemplateLookupResult 'from'(java.lang.String,java.lang.Object)>(r0, $r10);	return $r11
;block_num 2