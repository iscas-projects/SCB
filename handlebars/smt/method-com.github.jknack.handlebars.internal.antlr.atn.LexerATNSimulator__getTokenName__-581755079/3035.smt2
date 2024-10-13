(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var811 var811)
(declare-const null-Int Int)
(declare-const var3502 var811) ; Statement: r5 := @this: com.github.jknack.handlebars.internal.antlr.atn.LexerATNSimulator 
(assert (not (= var3502 null-var811)))
(declare-const var2216 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2216 null-Int)))
(define-const var2674 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $r6 = new java.lang.StringBuilder 
(assert (not (= var2216 var2674))) ; Cond: i0 != $i3 
(define-const var1382 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1382)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1382!1 String)
(assert (= var1382!1 ""))
(assert true)
(define-const var407 String (append/672562846 var1382!1 "\u0027")) ; Statement: $r1 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1382!2 String)
(assert (= var1382!2 (str.++ var1382!1 "\u0027")))
(define-const var2593 Int (cast-from-Int-to-Int var2216)) ; Statement: $c1 = (char) i0 
(assert true)
(define-const var2826 String (append/-1166366385 var407 var2593)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var407!1 String)
(assert (str.prefixof var407 var407!1))
(assert true)
(define-const var3626 String (append/672562846 var2826 "\u0027")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2826!1 String)
(assert (= var2826!1 (str.++ var2826 "\u0027")))
(assert true)
(define-const var3605 String (toString/-2075883882 var3626)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var811=com.github.jknack.handlebars.internal.antlr.atn.LexerATNSimulator, var3502=r5, var2216=i0, var2674=$i3, var1382=$r6, var407=$r1, var2593=$c1, var2826=$r2, var3626=$r3, var3605=$r4}
; {com.github.jknack.handlebars.internal.antlr.atn.LexerATNSimulator=var811, r5=var3502, i0=var2216, $i3=var2674, $r6=var1382, $r1=var407, $c1=var2593, $r2=var2826, $r3=var3626, $r4=var3605}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.github.jknack.handlebars.internal.antlr.atn.LexerATNSimulator;	i0 := @parameter0: int;	$i3 = (int) -1;	if i0 != $i3 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$c1 = (char) i0;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2