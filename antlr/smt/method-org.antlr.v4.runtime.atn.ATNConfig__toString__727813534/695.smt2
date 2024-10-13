(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2637 0)
(declare-sort var3274 0)
(declare-sort var330 0)
(declare-sort var3153 0)
(declare-sort var2294 0)
(declare-sort var3775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun state/-2092381073 (var2637) var330)
(declare-fun append/-1031950772 (String var3153) String)
(declare-fun cast-from-var330-to-var3153 (var330) var3153)
(declare-fun context/-2092381073 (var2637) var2294)
(declare-fun semanticContext/-2092381073 (var2637) var3775)
(declare-fun getOuterContextDepth/-631984862 (var2637) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2637 var2637)
(declare-const null-var3274 var3274)
(declare-const null-Bool Bool)
(declare-const null-var2294 var2294)
(declare-const null-var3775 var3775)
(declare-const var1299 var2637) ; Statement: r1 := @this: org.antlr.v4.runtime.atn.ATNConfig 
(assert (not (= var1299 null-var2637)))
(declare-const var3452 var3274) ; Statement: r12 := @parameter0: org.antlr.v4.runtime.Recognizer 
(assert (not (= var3452 null-var3274)))
(declare-const var3433 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3433 null-Bool)))
(define-const var872 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var872)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var872!1 String)
(assert (= var872!1 ""))
(assert true)
;(assert (append/-1166366385 var872!1 40)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var872!2 String)
(assert (str.prefixof var872!1 var872!2))
(define-const var80 var330 (state/-2092381073 var1299)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state> 
(assert true)
;(assert (append/-1031950772 var872!2 (cast-from-var330-to-var3153 var80))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var872!3 String)
(assert (str.prefixof var872!2 var872!3))
 ; Statement: if z0 == 0 goto $r3 = r1.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.PredictionContext context> 
(assert (= (ite var3433 1 0) 0)) ; Cond: z0 == 0 
(define-const var1983 var2294 (context/-2092381073 var1299)) ; Statement: $r3 = r1.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.PredictionContext context> 
 ; Statement: if $r3 == null goto $r4 = r1.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.SemanticContext semanticContext> 
(assert (= var1983 null-var2294)) ; Cond: $r3 == null 
(define-const var1892 var3775 (semanticContext/-2092381073 var1299)) ; Statement: $r4 = r1.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.SemanticContext semanticContext> 
 ; Statement: if $r4 == null goto $i2 = virtualinvoke r1.<org.antlr.v4.runtime.atn.ATNConfig: int getOuterContextDepth()>() 
(assert (= var1892 null-var3775)) ; Cond: $r4 == null 
(assert true)
(define-const var589 Int (getOuterContextDepth/-631984862 var1299)) ; Statement: $i2 = virtualinvoke r1.<org.antlr.v4.runtime.atn.ATNConfig: int getOuterContextDepth()>() 
 ; Statement: if $i2 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (<= var589 0)) ; Cond: $i2 <= 0 
(assert true)
;(assert (append/-1166366385 var872!3 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var872!4 String)
(assert (str.prefixof var872!3 var872!4))
(assert true)
(define-const var1109 String (toString/-2075883882 var872!4)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), state/-2092381073=([org.antlr.v4.runtime.atn.ATNConfig], org.antlr.v4.runtime.atn.ATNState), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var330-to-var3153=([org.antlr.v4.runtime.atn.ATNState], java.lang.Object), context/-2092381073=([org.antlr.v4.runtime.atn.ATNConfig], org.antlr.v4.runtime.atn.PredictionContext), semanticContext/-2092381073=([org.antlr.v4.runtime.atn.ATNConfig], org.antlr.v4.runtime.atn.SemanticContext), getOuterContextDepth/-631984862=([org.antlr.v4.runtime.atn.ATNConfig], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2637=org.antlr.v4.runtime.atn.ATNConfig, var1299=r1, var3274=org.antlr.v4.runtime.Recognizer, var3452=r12, var3433=z0, var872=$r0, var330=org.antlr.v4.runtime.atn.ATNState, var80=$r2, var3153=java.lang.Object, var2294=org.antlr.v4.runtime.atn.PredictionContext, var1983=$r3, var3775=org.antlr.v4.runtime.atn.SemanticContext, var1892=$r4, var589=$i2, var1109=$r5}
; {org.antlr.v4.runtime.atn.ATNConfig=var2637, r1=var1299, org.antlr.v4.runtime.Recognizer=var3274, r12=var3452, z0=var3433, $r0=var872, org.antlr.v4.runtime.atn.ATNState=var330, $r2=var80, java.lang.Object=var3153, org.antlr.v4.runtime.atn.PredictionContext=var2294, $r3=var1983, org.antlr.v4.runtime.atn.SemanticContext=var3775, $r4=var1892, $i2=var589, $r5=var1109}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.atn.ATNConfig;	r12 := @parameter0: org.antlr.v4.runtime.Recognizer;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r2 = r1.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	if z0 == 0 goto $r3 = r1.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.PredictionContext context>;	$r3 = r1.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.PredictionContext context>;	if $r3 == null goto $r4 = r1.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.SemanticContext semanticContext>;	$r4 = r1.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.SemanticContext semanticContext>;	if $r4 == null goto $i2 = virtualinvoke r1.<org.antlr.v4.runtime.atn.ATNConfig: int getOuterContextDepth()>();	$i2 = virtualinvoke r1.<org.antlr.v4.runtime.atn.ATNConfig: int getOuterContextDepth()>();	if $i2 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5