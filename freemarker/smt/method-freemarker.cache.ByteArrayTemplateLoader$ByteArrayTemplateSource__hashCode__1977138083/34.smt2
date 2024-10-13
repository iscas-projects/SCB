(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2654 0)
(declare-sort var1573 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1985573908 (var2654) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2654 var2654)
(declare-const null-String String)
(declare-const var656 var2654) ; Statement: r0 := @this: freemarker.cache.ByteArrayTemplateLoader$ByteArrayTemplateSource 
(assert (not (= var656 null-var2654)))
(define-const var3081 String (name/-1985573908 var656)) ; Statement: $r1 = r0.<freemarker.cache.ByteArrayTemplateLoader$ByteArrayTemplateSource: java.lang.String name> 
 ; Statement: if $r1 != null goto $r2 = r0.<freemarker.cache.ByteArrayTemplateLoader$ByteArrayTemplateSource: java.lang.String name> 
(assert (not (= var3081 null-String))) ; Cond: $r1 != null 
(define-const var819 String (name/-1985573908 var656)) ; Statement: $r2 = r0.<freemarker.cache.ByteArrayTemplateLoader$ByteArrayTemplateSource: java.lang.String name> 
(assert true)
(define-const var795 Int (hashCode/-467973558 var819)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1742 Int (+ 31 var795)) ; Statement: $i0 = 31 + $i1 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1985573908=([freemarker.cache.ByteArrayTemplateLoader$ByteArrayTemplateSource], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2654=freemarker.cache.ByteArrayTemplateLoader$ByteArrayTemplateSource, var656=r0, var3081=$r1, var1573=null_type, var819=$r2, var795=$i1, var1742=$i0}
; {freemarker.cache.ByteArrayTemplateLoader$ByteArrayTemplateSource=var2654, r0=var656, $r1=var3081, null_type=var1573, $r2=var819, $i1=var795, $i0=var1742}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: freemarker.cache.ByteArrayTemplateLoader$ByteArrayTemplateSource;	$r1 = r0.<freemarker.cache.ByteArrayTemplateLoader$ByteArrayTemplateSource: java.lang.String name>;	if $r1 != null goto $r2 = r0.<freemarker.cache.ByteArrayTemplateLoader$ByteArrayTemplateSource: java.lang.String name>;	$r2 = r0.<freemarker.cache.ByteArrayTemplateLoader$ByteArrayTemplateSource: java.lang.String name>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i0 = 31 + $i1;	return $i0
;block_num 3