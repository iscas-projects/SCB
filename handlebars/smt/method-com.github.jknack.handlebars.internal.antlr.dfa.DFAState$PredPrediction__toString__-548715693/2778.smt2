(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2397 0)
(declare-sort var126 0)
(declare-sort var638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pred/-1070656781 (var2397) var126)
(declare-fun append/-1031950772 (String var638) String)
(declare-fun cast-from-var126-to-var638 (var126) var638)
(declare-fun alt/-1070656781 (var2397) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2397 var2397)
(declare-const var3082 var2397) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.dfa.DFAState$PredPrediction 
(assert (not (= var3082 null-var2397)))
(define-const var2401 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2401)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2401!1 String)
(assert (= var2401!1 ""))
(assert true)
(define-const var13 String (append/672562846 var2401!1 "(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2401!2 String)
(assert (= var2401!2 (str.++ var2401!1 "(")))
(define-const var1657 var126 (pred/-1070656781 var3082)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState$PredPrediction: com.github.jknack.handlebars.internal.antlr.atn.SemanticContext pred> 
(assert true)
(define-const var2492 String (append/-1031950772 var13 (cast-from-var126-to-var638 var1657))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var13!1 String)
(assert (str.prefixof var13 var13!1))
(assert true)
(define-const var1333 String (append/672562846 var2492 ", ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2492!1 String)
(assert (= var2492!1 (str.++ var2492 ", ")))
(define-const var612 Int (alt/-1070656781 var3082)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState$PredPrediction: int alt> 
(assert true)
(define-const var1567 String (append/-1001720160 var1333 var612)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1333!1 String)
(assert (str.prefixof var1333 var1333!1))
(assert true)
(define-const var3717 String (append/672562846 var1567 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1567!1 String)
(assert (= var1567!1 (str.++ var1567 ")")))
(assert true)
(define-const var1777 String (toString/-2075883882 var3717)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pred/-1070656781=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState$PredPrediction], com.github.jknack.handlebars.internal.antlr.atn.SemanticContext), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var126-to-var638=([com.github.jknack.handlebars.internal.antlr.atn.SemanticContext], java.lang.Object), alt/-1070656781=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState$PredPrediction], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2397=com.github.jknack.handlebars.internal.antlr.dfa.DFAState$PredPrediction, var3082=r1, var2401=$r0, var13=$r3, var126=com.github.jknack.handlebars.internal.antlr.atn.SemanticContext, var1657=$r2, var638=java.lang.Object, var2492=$r4, var1333=$r5, var612=$i0, var1567=$r6, var3717=$r7, var1777=$r8}
; {com.github.jknack.handlebars.internal.antlr.dfa.DFAState$PredPrediction=var2397, r1=var3082, $r0=var2401, $r3=var13, com.github.jknack.handlebars.internal.antlr.atn.SemanticContext=var126, $r2=var1657, java.lang.Object=var638, $r4=var2492, $r5=var1333, $i0=var612, $r6=var1567, $r7=var3717, $r8=var1777}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.dfa.DFAState$PredPrediction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r2 = r1.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState$PredPrediction: com.github.jknack.handlebars.internal.antlr.atn.SemanticContext pred>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState$PredPrediction: int alt>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1