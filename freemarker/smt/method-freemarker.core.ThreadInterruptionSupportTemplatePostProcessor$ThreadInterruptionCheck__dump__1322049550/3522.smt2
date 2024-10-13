(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1727 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getNodeTypeSymbol/-24387528 (var1727) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1727 var1727)
(declare-const null-Bool Bool)
(declare-const var2131 var1727) ; Statement: r1 := @this: freemarker.core.ThreadInterruptionSupportTemplatePostProcessor$ThreadInterruptionCheck 
(assert (not (= var2131 null-var1727)))
(declare-const var463 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var463 null-Bool)))
 ; Statement: if z0 == 0 goto $r0 = new java.lang.StringBuilder 
(assert (= (ite var463 1 0) 0)) ; Cond: z0 == 0 
(define-const var492 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var492)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var492!1 String)
(assert (= var492!1 ""))
(assert true)
(define-const var323 String (append/672562846 var492!1 "<#--")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<#--") 
(declare-const var492!2 String)
(assert (= var492!2 (str.++ var492!1 "<#--")))
(assert true)
(define-const var3142 String (getNodeTypeSymbol/-24387528 var2131)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.ThreadInterruptionSupportTemplatePostProcessor$ThreadInterruptionCheck: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var3651 String (append/672562846 var323 var3142)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var323!1 String)
(assert (= var323!1 (str.++ var323 var3142)))
(assert true)
(define-const var1830 String (append/672562846 var3651 "--#>")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("--#>") 
(declare-const var3651!1 String)
(assert (= var3651!1 (str.++ var3651 "--#>")))
(assert true)
(define-const var1026 String (toString/-2075883882 var1830)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getNodeTypeSymbol/-24387528=([freemarker.core.ThreadInterruptionSupportTemplatePostProcessor$ThreadInterruptionCheck], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1727=freemarker.core.ThreadInterruptionSupportTemplatePostProcessor$ThreadInterruptionCheck, var2131=r1, var463=z0, var492=$r0, var323=$r3, var3142=$r2, var3651=$r4, var1830=$r5, var1026=$r6}
; {freemarker.core.ThreadInterruptionSupportTemplatePostProcessor$ThreadInterruptionCheck=var1727, r1=var2131, z0=var463, $r0=var492, $r3=var323, $r2=var3142, $r4=var3651, $r5=var1830, $r6=var1026}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.ThreadInterruptionSupportTemplatePostProcessor$ThreadInterruptionCheck;	z0 := @parameter0: boolean;	if z0 == 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<#--");	$r2 = virtualinvoke r1.<freemarker.core.ThreadInterruptionSupportTemplatePostProcessor$ThreadInterruptionCheck: java.lang.String getNodeTypeSymbol()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("--#>");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3