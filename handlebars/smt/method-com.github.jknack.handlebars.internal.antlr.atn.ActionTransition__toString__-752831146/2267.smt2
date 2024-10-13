(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ruleIndex/1258299454 (var264) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun actionIndex/1258299454 (var264) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var264 var264)
(declare-const var3433 var264) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.ActionTransition 
(assert (not (= var3433 null-var264)))
(define-const var1239 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1239)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1239!1 String)
(assert (= var1239!1 ""))
(assert true)
(define-const var2319 String (append/672562846 var1239!1 "action_")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("action_") 
(declare-const var1239!2 String)
(assert (= var1239!2 (str.++ var1239!1 "action_")))
(define-const var3213 Int (ruleIndex/1258299454 var3433)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ActionTransition: int ruleIndex> 
(assert true)
(define-const var3598 String (append/-1001720160 var2319 var3213)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2319!1 String)
(assert (str.prefixof var2319 var2319!1))
(assert true)
(define-const var2370 String (append/672562846 var3598 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3598!1 String)
(assert (= var3598!1 (str.++ var3598 ":")))
(define-const var3819 Int (actionIndex/1258299454 var3433)) ; Statement: $i1 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ActionTransition: int actionIndex> 
(assert true)
(define-const var3519 String (append/-1001720160 var2370 var3819)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2370!1 String)
(assert (str.prefixof var2370 var2370!1))
(assert true)
(define-const var448 String (toString/-2075883882 var3519)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ruleIndex/1258299454=([com.github.jknack.handlebars.internal.antlr.atn.ActionTransition], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), actionIndex/1258299454=([com.github.jknack.handlebars.internal.antlr.atn.ActionTransition], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var264=com.github.jknack.handlebars.internal.antlr.atn.ActionTransition, var3433=r1, var1239=$r0, var2319=$r2, var3213=$i0, var3598=$r3, var2370=$r4, var3819=$i1, var3519=$r5, var448=$r6}
; {com.github.jknack.handlebars.internal.antlr.atn.ActionTransition=var264, r1=var3433, $r0=var1239, $r2=var2319, $i0=var3213, $r3=var3598, $r4=var2370, $i1=var3819, $r5=var3519, $r6=var448}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.ActionTransition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("action_");	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ActionTransition: int ruleIndex>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i1 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ActionTransition: int actionIndex>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1