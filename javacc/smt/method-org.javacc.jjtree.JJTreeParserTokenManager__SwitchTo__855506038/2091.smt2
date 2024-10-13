(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2711 0)
(declare-sort var1170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1170-init () var1170)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/675441356 (var1170 String Int) void)
(declare-const null-var2711 var2711)
(declare-const null-Int Int)
(declare-const var1826 var2711) ; Statement: r6 := @this: org.javacc.jjtree.JJTreeParserTokenManager 
(assert (not (= var1826 null-var2711)))
(declare-const var580 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var580 null-Int)))
 ; Statement: if i0 >= 4 goto $r0 = new org.javacc.jjtree.TokenMgrError 
(assert (>= var580 4)) ; Cond: i0 >= 4 
(define-const var2498 var1170 var1170-init) ; Statement: $r0 = new org.javacc.jjtree.TokenMgrError 
(define-const var2916 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2916)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2916!1 String)
(assert (= var2916!1 ""))
(assert true)
(define-const var3974 String (append/672562846 var2916!1 "Error: Ignoring invalid lexical state : ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: Ignoring invalid lexical state : ") 
(declare-const var2916!2 String)
(assert (= var2916!2 (str.++ var2916!1 "Error: Ignoring invalid lexical state : ")))
(assert true)
(define-const var878 String (append/-1001720160 var3974 var580)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3974!1 String)
(assert (str.prefixof var3974 var3974!1))
(assert true)
(define-const var121 String (append/672562846 var878 ". State unchanged.")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". State unchanged.") 
(declare-const var878!1 String)
(assert (= var878!1 (str.++ var878 ". State unchanged.")))
(assert true)
(define-const var3985 String (toString/-2075883882 var121)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/675441356 var2498 var3985 2)) ; Statement: specialinvoke $r0.<org.javacc.jjtree.TokenMgrError: void <init>(java.lang.String,int)>($r5, 2) 

(declare-const var2498!1 var1170)
(declare-const var3985!1 String)
(declare-const var165 Int)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1170-init=([], org.javacc.jjtree.TokenMgrError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/675441356=([org.javacc.jjtree.TokenMgrError, java.lang.String, int], void)}
; {var2711=org.javacc.jjtree.JJTreeParserTokenManager, var1826=r6, var580=i0, var1170=org.javacc.jjtree.TokenMgrError, var2498=$r0, var2916=$r1, var3974=$r2, var878=$r3, var121=$r4, var3985=$r5, var165=2}
; {org.javacc.jjtree.JJTreeParserTokenManager=var2711, r6=var1826, i0=var580, org.javacc.jjtree.TokenMgrError=var1170, $r0=var2498, $r1=var2916, $r2=var3974, $r3=var878, $r4=var121, $r5=var3985, 2=var165}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.javacc.jjtree.JJTreeParserTokenManager;	i0 := @parameter0: int;	if i0 >= 4 goto $r0 = new org.javacc.jjtree.TokenMgrError;	$r0 = new org.javacc.jjtree.TokenMgrError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: Ignoring invalid lexical state : ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". State unchanged.");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.javacc.jjtree.TokenMgrError: void <init>(java.lang.String,int)>($r5, 2);	throw $r0
;block_num 2