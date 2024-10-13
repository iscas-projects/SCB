(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3704 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ruleIndex/871070073 (var3704) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun predIndex/871070073 (var3704) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3704 var3704)
(declare-const var1889 var3704) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition 
(assert (not (= var1889 null-var3704)))
(define-const var3526 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3526)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3526!1 String)
(assert (= var3526!1 ""))
(assert true)
(define-const var1689 String (append/672562846 var3526!1 "pred_")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pred_") 
(declare-const var3526!2 String)
(assert (= var3526!2 (str.++ var3526!1 "pred_")))
(define-const var2711 Int (ruleIndex/871070073 var1889)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition: int ruleIndex> 
(assert true)
(define-const var1872 String (append/-1001720160 var1689 var2711)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1689!1 String)
(assert (str.prefixof var1689 var1689!1))
(assert true)
(define-const var3769 String (append/672562846 var1872 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1872!1 String)
(assert (= var1872!1 (str.++ var1872 ":")))
(define-const var1918 Int (predIndex/871070073 var1889)) ; Statement: $i1 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition: int predIndex> 
(assert true)
(define-const var807 String (append/-1001720160 var3769 var1918)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3769!1 String)
(assert (str.prefixof var3769 var3769!1))
(assert true)
(define-const var2130 String (toString/-2075883882 var807)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ruleIndex/871070073=([com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), predIndex/871070073=([com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3704=com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition, var1889=r1, var3526=$r0, var1689=$r2, var2711=$i0, var1872=$r3, var3769=$r4, var1918=$i1, var807=$r5, var2130=$r6}
; {com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition=var3704, r1=var1889, $r0=var3526, $r2=var1689, $i0=var2711, $r3=var1872, $r4=var3769, $i1=var1918, $r5=var807, $r6=var2130}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pred_");	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition: int ruleIndex>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i1 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition: int predIndex>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1