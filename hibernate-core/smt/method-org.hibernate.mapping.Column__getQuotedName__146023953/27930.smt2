(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2648 0)
(declare-sort var318 0)
(declare-sort var2763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun quoted/568060284 (var2648) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun openQuote/1212220691 (var318) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun name/568060284 (var2648) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun closeQuote/952993073 (var318) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2763_safeInterning/-733881672 (String) String)
(declare-const null-var2648 var2648)
(declare-const null-var318 var318)
(declare-const var3827 var2648) ; Statement: r0 := @this: org.hibernate.mapping.Column 
(assert (not (= var3827 null-var2648)))
(declare-const var1822 var318) ; Statement: r3 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var1822 null-var318)))
(define-const var856 Bool (quoted/568060284 var3827)) ; Statement: $z0 = r0.<org.hibernate.mapping.Column: boolean quoted> 
 ; Statement: if $z0 == 0 goto $r8 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert (not (= (ite var856 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3927 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3927)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3927!1 String)
(assert (= var3927!1 ""))
(assert true)
(define-const var3096 Int (openQuote/1212220691 var1822)) ; Statement: $c0 = virtualinvoke r3.<org.hibernate.dialect.Dialect: char openQuote()>() 
(assert true)
(define-const var1515 String (append/-1166366385 var3927!1 var3096)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var3927!2 String)
(assert (str.prefixof var3927!1 var3927!2))
(define-const var1382 String (name/568060284 var3827)) ; Statement: $r4 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert true)
(define-const var3854 String (append/672562846 var1515 var1382)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1515!1 String)
(assert (= var1515!1 (str.++ var1515 var1382)))
(assert true)
(define-const var2655 Int (closeQuote/952993073 var1822)) ; Statement: $c1 = virtualinvoke r3.<org.hibernate.dialect.Dialect: char closeQuote()>() 
(assert true)
(define-const var3282 String (append/-1166366385 var3854 var2655)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var3854!1 String)
(assert (str.prefixof var3854 var3854!1))
(assert true)
(define-const var1033 String (toString/-2075883882 var3282)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(define-const var2923 String (var2763_safeInterning/-733881672 var1033)) ; Statement: $r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r8) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {quoted/568060284=([org.hibernate.mapping.Column], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), openQuote/1212220691=([org.hibernate.dialect.Dialect], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), name/568060284=([org.hibernate.mapping.Column], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), closeQuote/952993073=([org.hibernate.dialect.Dialect], char), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2763_safeInterning/-733881672=([java.lang.String], java.lang.String)}
; {var2648=org.hibernate.mapping.Column, var3827=r0, var318=org.hibernate.dialect.Dialect, var1822=r3, var856=$z0, var3927=$r2, var3096=$c0, var1515=$r5, var1382=$r4, var3854=$r6, var2655=$c1, var3282=$r7, var1033=$r8, var2763=org.hibernate.internal.util.StringHelper, var2923=$r1}
; {org.hibernate.mapping.Column=var2648, r0=var3827, org.hibernate.dialect.Dialect=var318, r3=var1822, $z0=var856, $r2=var3927, $c0=var3096, $r5=var1515, $r4=var1382, $r6=var3854, $c1=var2655, $r7=var3282, $r8=var1033, org.hibernate.internal.util.StringHelper=var2763, $r1=var2923}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.Column;	r3 := @parameter0: org.hibernate.dialect.Dialect;	$z0 = r0.<org.hibernate.mapping.Column: boolean quoted>;	if $z0 == 0 goto $r8 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$c0 = virtualinvoke r3.<org.hibernate.dialect.Dialect: char openQuote()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r4 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$c1 = virtualinvoke r3.<org.hibernate.dialect.Dialect: char closeQuote()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r8)];	$r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r8);	return $r1
;block_num 3