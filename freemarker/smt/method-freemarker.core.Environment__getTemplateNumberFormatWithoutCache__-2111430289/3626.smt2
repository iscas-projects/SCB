(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2179 0)
(declare-sort var2984 0)
(declare-sort var2775 0)
(declare-sort var1183 0)
(declare-sort var1901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun get/-1746117962 (var1183 String var2775 var2179) var1901)
(declare-const null-var2179 var2179)
(declare-const null-String String)
(declare-const null-var2775 var2775)
(declare-const var1183-INSTANCE var1183)
(declare-const var689 var2179) ; Statement: r2 := @this: freemarker.core.Environment 
(assert (not (= var689 null-var2179)))
(declare-const var2521 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2521 null-String)))
(declare-const var2836 var2775) ; Statement: r1 := @parameter1: java.util.Locale 
(assert (not (= var2836 null-var2775)))
(assert true)
(define-const var681 Int (length/-134980193 var2521)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 <= 1 goto (branch) 
(assert (<= var681 1)) ; Cond: i0 <= 1 
 ; Statement: if i0 < 1 goto $r14 = <freemarker.core.JavaTemplateNumberFormatFactory: freemarker.core.JavaTemplateNumberFormatFactory INSTANCE> 
(assert (< var681 1)) ; Cond: i0 < 1 
(define-const var102 var1183 var1183-INSTANCE) ; Statement: $r14 = <freemarker.core.JavaTemplateNumberFormatFactory: freemarker.core.JavaTemplateNumberFormatFactory INSTANCE> 
(assert true)
(define-const var3381 var1901 (get/-1746117962 var102 var2521 var2836 var689)) ; Statement: $r15 = virtualinvoke $r14.<freemarker.core.JavaTemplateNumberFormatFactory: freemarker.core.TemplateNumberFormat get(java.lang.String,java.util.Locale,freemarker.core.Environment)>(r0, r1, r2) 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), get/-1746117962=([freemarker.core.JavaTemplateNumberFormatFactory, java.lang.String, java.util.Locale, freemarker.core.Environment], freemarker.core.TemplateNumberFormat)}
; {var2179=freemarker.core.Environment, var689=r2, var2521=r0, var2984=null_type, var2775=java.util.Locale, var2836=r1, var681=i0, var1183=freemarker.core.JavaTemplateNumberFormatFactory, var102=$r14, var1901=freemarker.core.TemplateNumberFormat, var3381=$r15}
; {freemarker.core.Environment=var2179, r2=var689, r0=var2521, null_type=var2984, java.util.Locale=var2775, r1=var2836, i0=var681, freemarker.core.JavaTemplateNumberFormatFactory=var1183, $r14=var102, freemarker.core.TemplateNumberFormat=var1901, $r15=var3381}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @this: freemarker.core.Environment;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.Locale;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 <= 1 goto (branch);	if i0 < 1 goto $r14 = <freemarker.core.JavaTemplateNumberFormatFactory: freemarker.core.JavaTemplateNumberFormatFactory INSTANCE>;	$r14 = <freemarker.core.JavaTemplateNumberFormatFactory: freemarker.core.JavaTemplateNumberFormatFactory INSTANCE>;	$r15 = virtualinvoke $r14.<freemarker.core.JavaTemplateNumberFormatFactory: freemarker.core.TemplateNumberFormat get(java.lang.String,java.util.Locale,freemarker.core.Environment)>(r0, r1, r2);	return $r15
;block_num 3