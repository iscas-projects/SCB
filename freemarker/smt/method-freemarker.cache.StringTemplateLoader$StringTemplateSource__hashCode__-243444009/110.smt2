(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3749 0)
(declare-sort var3896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/625603896 (var3749) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3749 var3749)
(declare-const null-String String)
(declare-const var2729 var3749) ; Statement: r0 := @this: freemarker.cache.StringTemplateLoader$StringTemplateSource 
(assert (not (= var2729 null-var3749)))
(define-const var2945 String (name/625603896 var2729)) ; Statement: $r1 = r0.<freemarker.cache.StringTemplateLoader$StringTemplateSource: java.lang.String name> 
 ; Statement: if $r1 != null goto $r2 = r0.<freemarker.cache.StringTemplateLoader$StringTemplateSource: java.lang.String name> 
(assert (not (= var2945 null-String))) ; Cond: $r1 != null 
(define-const var2619 String (name/625603896 var2729)) ; Statement: $r2 = r0.<freemarker.cache.StringTemplateLoader$StringTemplateSource: java.lang.String name> 
(assert true)
(define-const var2972 Int (hashCode/-467973558 var2619)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1486 Int (+ 31 var2972)) ; Statement: $i0 = 31 + $i1 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/625603896=([freemarker.cache.StringTemplateLoader$StringTemplateSource], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3749=freemarker.cache.StringTemplateLoader$StringTemplateSource, var2729=r0, var2945=$r1, var3896=null_type, var2619=$r2, var2972=$i1, var1486=$i0}
; {freemarker.cache.StringTemplateLoader$StringTemplateSource=var3749, r0=var2729, $r1=var2945, null_type=var3896, $r2=var2619, $i1=var2972, $i0=var1486}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: freemarker.cache.StringTemplateLoader$StringTemplateSource;	$r1 = r0.<freemarker.cache.StringTemplateLoader$StringTemplateSource: java.lang.String name>;	if $r1 != null goto $r2 = r0.<freemarker.cache.StringTemplateLoader$StringTemplateSource: java.lang.String name>;	$r2 = r0.<freemarker.cache.StringTemplateLoader$StringTemplateSource: java.lang.String name>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i0 = 31 + $i1;	return $i0
;block_num 3