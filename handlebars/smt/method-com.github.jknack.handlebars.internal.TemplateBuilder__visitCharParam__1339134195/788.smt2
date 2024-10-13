(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3160 0)
(declare-sort var3697 0)
(declare-sort var2702 0)
(declare-sort var842 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2702-init () var2702)
(declare-fun getText/-1257402952 (var842) String)
(declare-fun cast-from-var3697-to-var842 (var3697) var842)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun <init>/962181953 (var2702 String) void)
(declare-const null-var3160 var3160)
(declare-const null-var3697 var3697)
(declare-const var1037 var3160) ; Statement: r4 := @this: com.github.jknack.handlebars.internal.TemplateBuilder 
(assert (not (= var1037 null-var3160)))
(declare-const var3000 var3697) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$CharParamContext 
(assert (not (= var3000 null-var3697)))
(define-const var1917 var2702 var2702-init) ; Statement: $r0 = new com.github.jknack.handlebars.internal.StrParam 
(assert true)
(define-const var3499 String (getText/-1257402952 (cast-from-var3697-to-var842 var3000))) ; Statement: $r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$CharParamContext: java.lang.String getText()>() 
(assert true)
(define-const var1719 String (replace/2138489945 var3499 (cast-from-String-to-String "\u005c\u0027") (cast-from-String-to-String "\u0027"))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\\\'", "\'") 
(assert true)
;(assert (<init>/962181953 var1917 var1719)) ; Statement: specialinvoke $r0.<com.github.jknack.handlebars.internal.StrParam: void <init>(java.lang.String)>($r3) 

(declare-const var1917!1 var2702)
(declare-const var1719!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2702-init=([], com.github.jknack.handlebars.internal.StrParam), getText/-1257402952=([com.github.jknack.handlebars.internal.antlr.RuleContext], java.lang.String), cast-from-var3697-to-var842=([com.github.jknack.handlebars.internal.HbsParser$CharParamContext], com.github.jknack.handlebars.internal.antlr.RuleContext), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), <init>/962181953=([com.github.jknack.handlebars.internal.StrParam, java.lang.String], void)}
; {var3160=com.github.jknack.handlebars.internal.TemplateBuilder, var1037=r4, var3697=com.github.jknack.handlebars.internal.HbsParser$CharParamContext, var3000=r1, var2702=com.github.jknack.handlebars.internal.StrParam, var1917=$r0, var842=com.github.jknack.handlebars.internal.antlr.RuleContext, var3499=$r2, var1719=$r3}
; {com.github.jknack.handlebars.internal.TemplateBuilder=var3160, r4=var1037, com.github.jknack.handlebars.internal.HbsParser$CharParamContext=var3697, r1=var3000, com.github.jknack.handlebars.internal.StrParam=var2702, $r0=var1917, com.github.jknack.handlebars.internal.antlr.RuleContext=var842, $r2=var3499, $r3=var1719}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r4 := @this: com.github.jknack.handlebars.internal.TemplateBuilder;	r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$CharParamContext;	$r0 = new com.github.jknack.handlebars.internal.StrParam;	$r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$CharParamContext: java.lang.String getText()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\\\'", "\'");	specialinvoke $r0.<com.github.jknack.handlebars.internal.StrParam: void <init>(java.lang.String)>($r3);	return $r0
;block_num 1