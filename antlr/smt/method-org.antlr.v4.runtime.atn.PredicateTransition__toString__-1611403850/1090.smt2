(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1299 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ruleIndex/45271710 (var1299) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun predIndex/45271710 (var1299) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1299 var1299)
(declare-const var944 var1299) ; Statement: r1 := @this: org.antlr.v4.runtime.atn.PredicateTransition 
(assert (not (= var944 null-var1299)))
(define-const var826 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var826)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var826!1 String)
(assert (= var826!1 ""))
(assert true)
(define-const var3864 String (append/672562846 var826!1 "pred_")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pred_") 
(declare-const var826!2 String)
(assert (= var826!2 (str.++ var826!1 "pred_")))
(define-const var1480 Int (ruleIndex/45271710 var944)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.atn.PredicateTransition: int ruleIndex> 
(assert true)
(define-const var1476 String (append/-1001720160 var3864 var1480)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3864!1 String)
(assert (str.prefixof var3864 var3864!1))
(assert true)
(define-const var2108 String (append/672562846 var1476 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1476!1 String)
(assert (= var1476!1 (str.++ var1476 ":")))
(define-const var1092 Int (predIndex/45271710 var944)) ; Statement: $i1 = r1.<org.antlr.v4.runtime.atn.PredicateTransition: int predIndex> 
(assert true)
(define-const var2841 String (append/-1001720160 var2108 var1092)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2108!1 String)
(assert (str.prefixof var2108 var2108!1))
(assert true)
(define-const var3415 String (toString/-2075883882 var2841)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ruleIndex/45271710=([org.antlr.v4.runtime.atn.PredicateTransition], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), predIndex/45271710=([org.antlr.v4.runtime.atn.PredicateTransition], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1299=org.antlr.v4.runtime.atn.PredicateTransition, var944=r1, var826=$r0, var3864=$r2, var1480=$i0, var1476=$r3, var2108=$r4, var1092=$i1, var2841=$r5, var3415=$r6}
; {org.antlr.v4.runtime.atn.PredicateTransition=var1299, r1=var944, $r0=var826, $r2=var3864, $i0=var1480, $r3=var1476, $r4=var2108, $i1=var1092, $r5=var2841, $r6=var3415}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.atn.PredicateTransition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pred_");	$i0 = r1.<org.antlr.v4.runtime.atn.PredicateTransition: int ruleIndex>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i1 = r1.<org.antlr.v4.runtime.atn.PredicateTransition: int predIndex>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1