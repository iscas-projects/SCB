(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3622 0)
(declare-sort var1487 0)
(declare-sort var265 0)
(declare-sort var419 0)
(declare-sort var1176 0)
(declare-sort var512 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun state/-95796982 (var3622) var265)
(declare-fun append/-1031950772 (String var419) String)
(declare-fun cast-from-var265-to-var419 (var265) var419)
(declare-fun context/-95796982 (var3622) var1176)
(declare-fun semanticContext/-95796982 (var3622) var512)
(declare-fun getOuterContextDepth/1580123487 (var3622) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3622 var3622)
(declare-const null-var1487 var1487)
(declare-const null-Bool Bool)
(declare-const null-var1176 var1176)
(declare-const null-var512 var512)
(declare-const var2860 var3622) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (not (= var2860 null-var3622)))
(declare-const var2208 var1487) ; Statement: r12 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer 
(assert (not (= var2208 null-var1487)))
(declare-const var2165 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2165 null-Bool)))
(define-const var3797 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3797)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3797!1 String)
(assert (= var3797!1 ""))
(assert true)
;(assert (append/-1166366385 var3797!1 40)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3797!2 String)
(assert (str.prefixof var3797!1 var3797!2))
(define-const var140 var265 (state/-95796982 var2860)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.ATNState state> 
(assert true)
;(assert (append/-1031950772 var3797!2 (cast-from-var265-to-var419 var140))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3797!3 String)
(assert (str.prefixof var3797!2 var3797!3))
 ; Statement: if z0 == 0 goto $r3 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext context> 
(assert (= (ite var2165 1 0) 0)) ; Cond: z0 == 0 
(define-const var2294 var1176 (context/-95796982 var2860)) ; Statement: $r3 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext context> 
 ; Statement: if $r3 == null goto $r4 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.SemanticContext semanticContext> 
(assert (= var2294 null-var1176)) ; Cond: $r3 == null 
(define-const var3858 var512 (semanticContext/-95796982 var2860)) ; Statement: $r4 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.SemanticContext semanticContext> 
 ; Statement: if $r4 == null goto $i2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: int getOuterContextDepth()>() 
(assert (= var3858 null-var512)) ; Cond: $r4 == null 
(assert true)
(define-const var2470 Int (getOuterContextDepth/1580123487 var2860)) ; Statement: $i2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: int getOuterContextDepth()>() 
 ; Statement: if $i2 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (<= var2470 0)) ; Cond: $i2 <= 0 
(assert true)
;(assert (append/-1166366385 var3797!3 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3797!4 String)
(assert (str.prefixof var3797!3 var3797!4))
(assert true)
(define-const var3036 String (toString/-2075883882 var3797!4)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), state/-95796982=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig], com.github.jknack.handlebars.internal.antlr.atn.ATNState), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var265-to-var419=([com.github.jknack.handlebars.internal.antlr.atn.ATNState], java.lang.Object), context/-95796982=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig], com.github.jknack.handlebars.internal.antlr.atn.PredictionContext), semanticContext/-95796982=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig], com.github.jknack.handlebars.internal.antlr.atn.SemanticContext), getOuterContextDepth/1580123487=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3622=com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, var2860=r1, var1487=com.github.jknack.handlebars.internal.antlr.Recognizer, var2208=r12, var2165=z0, var3797=$r0, var265=com.github.jknack.handlebars.internal.antlr.atn.ATNState, var140=$r2, var419=java.lang.Object, var1176=com.github.jknack.handlebars.internal.antlr.atn.PredictionContext, var2294=$r3, var512=com.github.jknack.handlebars.internal.antlr.atn.SemanticContext, var3858=$r4, var2470=$i2, var3036=$r5}
; {com.github.jknack.handlebars.internal.antlr.atn.ATNConfig=var3622, r1=var2860, com.github.jknack.handlebars.internal.antlr.Recognizer=var1487, r12=var2208, z0=var2165, $r0=var3797, com.github.jknack.handlebars.internal.antlr.atn.ATNState=var265, $r2=var140, java.lang.Object=var419, com.github.jknack.handlebars.internal.antlr.atn.PredictionContext=var1176, $r3=var2294, com.github.jknack.handlebars.internal.antlr.atn.SemanticContext=var512, $r4=var3858, $i2=var2470, $r5=var3036}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	r12 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r2 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.ATNState state>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	if z0 == 0 goto $r3 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext context>;	$r3 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext context>;	if $r3 == null goto $r4 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.SemanticContext semanticContext>;	$r4 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.SemanticContext semanticContext>;	if $r4 == null goto $i2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: int getOuterContextDepth()>();	$i2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: int getOuterContextDepth()>();	if $i2 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5