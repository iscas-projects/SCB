(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3006 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getErrorDisplay/-1721072985 (var3006 Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3006 var3006)
(declare-const null-Int Int)
(declare-const var1554 var3006) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.Lexer 
(assert (not (= var1554 null-var3006)))
(declare-const var3940 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3940 null-Int)))
(assert true)
(define-const var3430 String (getErrorDisplay/-1721072985 var1554 var3940)) ; Statement: r1 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Lexer: java.lang.String getErrorDisplay(int)>(i0) 
(define-const var212 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var212)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var212!1 String)
(assert (= var212!1 ""))
(assert true)
(define-const var2521 String (append/672562846 var212!1 "\u0027")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var212!2 String)
(assert (= var212!2 (str.++ var212!1 "\u0027")))
(assert true)
(define-const var1414 String (append/672562846 var2521 var3430)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2521!1 String)
(assert (= var2521!1 (str.++ var2521 var3430)))
(assert true)
(define-const var48 String (append/672562846 var1414 "\u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1414!1 String)
(assert (= var1414!1 (str.++ var1414 "\u0027")))
(assert true)
(define-const var2129 String (toString/-2075883882 var48)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getErrorDisplay/-1721072985=([com.github.jknack.handlebars.internal.antlr.Lexer, int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3006=com.github.jknack.handlebars.internal.antlr.Lexer, var1554=r0, var3940=i0, var3430=r1, var212=$r2, var2521=$r3, var1414=$r4, var48=$r5, var2129=$r6}
; {com.github.jknack.handlebars.internal.antlr.Lexer=var3006, r0=var1554, i0=var3940, r1=var3430, $r2=var212, $r3=var2521, $r4=var1414, $r5=var48, $r6=var2129}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.Lexer;	i0 := @parameter0: int;	r1 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Lexer: java.lang.String getErrorDisplay(int)>(i0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1