(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1392 0)
(declare-sort var3846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3846-init () var3846)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1711511507 (var3846 String Int) void)
(declare-const null-var1392 var1392)
(declare-const null-Int Int)
(declare-const var882 var1392) ; Statement: r6 := @this: org.javacc.utils.ConditionParserTokenManager 
(assert (not (= var882 null-var1392)))
(declare-const var1159 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1159 null-Int)))
 ; Statement: if i0 >= 4 goto $r0 = new org.javacc.utils.TokenMgrError 
(assert (>= var1159 4)) ; Cond: i0 >= 4 
(define-const var2798 var3846 var3846-init) ; Statement: $r0 = new org.javacc.utils.TokenMgrError 
(define-const var3785 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3785)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3785!1 String)
(assert (= var3785!1 ""))
(assert true)
(define-const var2338 String (append/672562846 var3785!1 "Error: Ignoring invalid lexical state : ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: Ignoring invalid lexical state : ") 
(declare-const var3785!2 String)
(assert (= var3785!2 (str.++ var3785!1 "Error: Ignoring invalid lexical state : ")))
(assert true)
(define-const var1391 String (append/-1001720160 var2338 var1159)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2338!1 String)
(assert (str.prefixof var2338 var2338!1))
(assert true)
(define-const var559 String (append/672562846 var1391 ". State unchanged.")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". State unchanged.") 
(declare-const var1391!1 String)
(assert (= var1391!1 (str.++ var1391 ". State unchanged.")))
(assert true)
(define-const var3321 String (toString/-2075883882 var559)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1711511507 var2798 var3321 2)) ; Statement: specialinvoke $r0.<org.javacc.utils.TokenMgrError: void <init>(java.lang.String,int)>($r5, 2) 

(declare-const var2798!1 var3846)
(declare-const var3321!1 String)
(declare-const var3344 Int)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3846-init=([], org.javacc.utils.TokenMgrError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1711511507=([org.javacc.utils.TokenMgrError, java.lang.String, int], void)}
; {var1392=org.javacc.utils.ConditionParserTokenManager, var882=r6, var1159=i0, var3846=org.javacc.utils.TokenMgrError, var2798=$r0, var3785=$r1, var2338=$r2, var1391=$r3, var559=$r4, var3321=$r5, var3344=2}
; {org.javacc.utils.ConditionParserTokenManager=var1392, r6=var882, i0=var1159, org.javacc.utils.TokenMgrError=var3846, $r0=var2798, $r1=var3785, $r2=var2338, $r3=var1391, $r4=var559, $r5=var3321, 2=var3344}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.javacc.utils.ConditionParserTokenManager;	i0 := @parameter0: int;	if i0 >= 4 goto $r0 = new org.javacc.utils.TokenMgrError;	$r0 = new org.javacc.utils.TokenMgrError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: Ignoring invalid lexical state : ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". State unchanged.");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.javacc.utils.TokenMgrError: void <init>(java.lang.String,int)>($r5, 2);	throw $r0
;block_num 2