(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var172 0)
(declare-sort var2699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getNodeTypeSymbol/-2110269805 (var172) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getChildrenCanonicalForm/123097860 (var2699) String)
(declare-fun cast-from-var172-to-var2699 (var172) var2699)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var172 var172)
(declare-const null-Bool Bool)
(declare-const var3567 var172) ; Statement: r0 := @this: freemarker.core.RecoveryBlock 
(assert (not (= var3567 null-var172)))
(declare-const var45 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var45 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.RecoveryBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (not (= (ite var45 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1984 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1984)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1984!1 String)
(assert (= var1984!1 ""))
(assert true)
(define-const var3940 String (append/-1166366385 var1984!1 60)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60) 
(declare-const var1984!2 String)
(assert (str.prefixof var1984!1 var1984!2))
(assert true)
(define-const var3916 String (getNodeTypeSymbol/-2110269805 var3567)) ; Statement: $r3 = virtualinvoke r0.<freemarker.core.RecoveryBlock: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var1678 String (append/672562846 var3940 var3916)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3940!1 String)
(assert (= var3940!1 (str.++ var3940 var3916)))
(assert true)
;(assert (append/-1166366385 var1678 62)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var1678!1 String)
(assert (str.prefixof var1678 var1678!1))
(assert true)
(define-const var3469 String (getChildrenCanonicalForm/123097860 (cast-from-var172-to-var2699 var3567))) ; Statement: $r6 = virtualinvoke r0.<freemarker.core.RecoveryBlock: java.lang.String getChildrenCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var1984!2 var3469)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1984!3 String)
(assert (= var1984!3 (str.++ var1984!2 var3469)))
(assert true)
(define-const var3481 String (toString/-2075883882 var1984!3)) ; Statement: $r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getNodeTypeSymbol/-2110269805=([freemarker.core.RecoveryBlock], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getChildrenCanonicalForm/123097860=([freemarker.core.TemplateElement], java.lang.String), cast-from-var172-to-var2699=([freemarker.core.RecoveryBlock], freemarker.core.TemplateElement), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var172=freemarker.core.RecoveryBlock, var3567=r0, var45=z0, var1984=$r2, var3940=$r4, var3916=$r3, var1678=$r5, var2699=freemarker.core.TemplateElement, var3469=$r6, var3481=$r7}
; {freemarker.core.RecoveryBlock=var172, r0=var3567, z0=var45, $r2=var1984, $r4=var3940, $r3=var3916, $r5=var1678, freemarker.core.TemplateElement=var2699, $r6=var3469, $r7=var3481}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.RecoveryBlock;	z0 := @parameter0: boolean;	if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.RecoveryBlock: java.lang.String getNodeTypeSymbol()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60);	$r3 = virtualinvoke r0.<freemarker.core.RecoveryBlock: java.lang.String getNodeTypeSymbol()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r6 = virtualinvoke r0.<freemarker.core.RecoveryBlock: java.lang.String getChildrenCanonicalForm()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2