(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3151 0)
(declare-sort var225 0)
(declare-sort var2711 0)
(declare-sort var1459 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2711-init () var2711)
(declare-fun getText/-1257402952 (var1459) String)
(declare-fun cast-from-var225-to-var1459 (var225) var1459)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun <init>/962181953 (var2711 String) void)
(declare-const null-var3151 var3151)
(declare-const null-var225 var225)
(declare-const var3241 var3151) ; Statement: r4 := @this: com.github.jknack.handlebars.internal.TemplateBuilder 
(assert (not (= var3241 null-var3151)))
(declare-const var2544 var225) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$StringParamContext 
(assert (not (= var2544 null-var225)))
(define-const var393 var2711 var2711-init) ; Statement: $r0 = new com.github.jknack.handlebars.internal.StrParam 
(assert true)
(define-const var3562 String (getText/-1257402952 (cast-from-var225-to-var1459 var2544))) ; Statement: $r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$StringParamContext: java.lang.String getText()>() 
(assert true)
(define-const var1483 String (replace/2138489945 var3562 (cast-from-String-to-String "\u005c\u0022") (cast-from-String-to-String "\u0022"))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\\\"", "\"") 
(assert true)
;(assert (<init>/962181953 var393 var1483)) ; Statement: specialinvoke $r0.<com.github.jknack.handlebars.internal.StrParam: void <init>(java.lang.String)>($r3) 

(declare-const var393!1 var2711)
(declare-const var1483!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2711-init=([], com.github.jknack.handlebars.internal.StrParam), getText/-1257402952=([com.github.jknack.handlebars.internal.antlr.RuleContext], java.lang.String), cast-from-var225-to-var1459=([com.github.jknack.handlebars.internal.HbsParser$StringParamContext], com.github.jknack.handlebars.internal.antlr.RuleContext), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), <init>/962181953=([com.github.jknack.handlebars.internal.StrParam, java.lang.String], void)}
; {var3151=com.github.jknack.handlebars.internal.TemplateBuilder, var3241=r4, var225=com.github.jknack.handlebars.internal.HbsParser$StringParamContext, var2544=r1, var2711=com.github.jknack.handlebars.internal.StrParam, var393=$r0, var1459=com.github.jknack.handlebars.internal.antlr.RuleContext, var3562=$r2, var1483=$r3}
; {com.github.jknack.handlebars.internal.TemplateBuilder=var3151, r4=var3241, com.github.jknack.handlebars.internal.HbsParser$StringParamContext=var225, r1=var2544, com.github.jknack.handlebars.internal.StrParam=var2711, $r0=var393, com.github.jknack.handlebars.internal.antlr.RuleContext=var1459, $r2=var3562, $r3=var1483}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r4 := @this: com.github.jknack.handlebars.internal.TemplateBuilder;	r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$StringParamContext;	$r0 = new com.github.jknack.handlebars.internal.StrParam;	$r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$StringParamContext: java.lang.String getText()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\\\"", "\"");	specialinvoke $r0.<com.github.jknack.handlebars.internal.StrParam: void <init>(java.lang.String)>($r3);	return $r0
;block_num 1