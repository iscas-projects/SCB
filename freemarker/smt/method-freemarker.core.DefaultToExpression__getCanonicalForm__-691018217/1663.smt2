(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var677 0)
(declare-sort var642 0)
(declare-sort var3832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun rho/1927764653 (var677) var642)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun lho/1927764653 (var677) var642)
(declare-fun getCanonicalForm/-1714059646 (var3832) String)
(declare-fun cast-from-var642-to-var3832 (var642) var3832)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var677 var677)
(declare-const null-var642 var642)
(declare-const var2787 var677) ; Statement: r0 := @this: freemarker.core.DefaultToExpression 
(assert (not (= var2787 null-var677)))
(define-const var3519 var642 (rho/1927764653 var2787)) ; Statement: $r1 = r0.<freemarker.core.DefaultToExpression: freemarker.core.Expression rho> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= var3519 null-var642)))) ; Negate: Cond: $r1 != null  
(define-const var1316 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1316)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1316!1 String)
(assert (= var1316!1 ""))
(define-const var1226 var642 (lho/1927764653 var2787)) ; Statement: $r12 = r0.<freemarker.core.DefaultToExpression: freemarker.core.Expression lho> 
(assert true)
(define-const var1293 String (getCanonicalForm/-1714059646 (cast-from-var642-to-var3832 var1226))) ; Statement: $r13 = virtualinvoke $r12.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var3252 String (append/672562846 var1316!1 var1293)) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1316!2 String)
(assert (= var1316!2 (str.++ var1316!1 var1293)))
(assert true)
(define-const var1046 String (append/-1166366385 var3252 33)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(33) 
(declare-const var3252!1 String)
(assert (str.prefixof var3252 var3252!1))
(assert true)
(define-const var51 String (toString/-2075883882 var1046)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {rho/1927764653=([freemarker.core.DefaultToExpression], freemarker.core.Expression), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), lho/1927764653=([freemarker.core.DefaultToExpression], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var642-to-var3832=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var677=freemarker.core.DefaultToExpression, var2787=r0, var642=freemarker.core.Expression, var3519=$r1, var1316=$r11, var1226=$r12, var3832=freemarker.core.TemplateObject, var1293=$r13, var3252=$r14, var1046=$r15, var51=$r16}
; {freemarker.core.DefaultToExpression=var677, r0=var2787, freemarker.core.Expression=var642, $r1=var3519, $r11=var1316, $r12=var1226, freemarker.core.TemplateObject=var3832, $r13=var1293, $r14=var3252, $r15=var1046, $r16=var51}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.DefaultToExpression;	$r1 = r0.<freemarker.core.DefaultToExpression: freemarker.core.Expression rho>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = r0.<freemarker.core.DefaultToExpression: freemarker.core.Expression lho>;	$r13 = virtualinvoke $r12.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(33);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 2