(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun precedence/-1760369980 (var1745) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1745 var1745)
(declare-const var1446 var1745) ; Statement: r1 := @this: org.antlr.v4.runtime.atn.SemanticContext$PrecedencePredicate 
(assert (not (= var1446 null-var1745)))
(define-const var2570 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2570)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2570!1 String)
(assert (= var2570!1 ""))
(assert true)
(define-const var940 String (append/672562846 var2570!1 "{")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var2570!2 String)
(assert (= var2570!2 (str.++ var2570!1 "{")))
(define-const var2910 Int (precedence/-1760369980 var1446)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.atn.SemanticContext$PrecedencePredicate: int precedence> 
(assert true)
(define-const var1764 String (append/-1001720160 var940 var2910)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var940!1 String)
(assert (str.prefixof var940 var940!1))
(assert true)
(define-const var2553 String (append/672562846 var1764 ">=prec}?")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">=prec}?") 
(declare-const var1764!1 String)
(assert (= var1764!1 (str.++ var1764 ">=prec}?")))
(assert true)
(define-const var2161 String (toString/-2075883882 var2553)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), precedence/-1760369980=([org.antlr.v4.runtime.atn.SemanticContext$PrecedencePredicate], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1745=org.antlr.v4.runtime.atn.SemanticContext$PrecedencePredicate, var1446=r1, var2570=$r0, var940=$r2, var2910=$i0, var1764=$r3, var2553=$r4, var2161=$r5}
; {org.antlr.v4.runtime.atn.SemanticContext$PrecedencePredicate=var1745, r1=var1446, $r0=var2570, $r2=var940, $i0=var2910, $r3=var1764, $r4=var2553, $r5=var2161}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.atn.SemanticContext$PrecedencePredicate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$i0 = r1.<org.antlr.v4.runtime.atn.SemanticContext$PrecedencePredicate: int precedence>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">=prec}?");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1