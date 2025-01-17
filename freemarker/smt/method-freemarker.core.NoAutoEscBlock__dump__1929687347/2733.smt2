(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3103 0)
(declare-sort var1310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getNodeTypeSymbol/2032763293 (var3103) String)
(declare-fun getChildrenCanonicalForm/123097860 (var1310) String)
(declare-fun cast-from-var3103-to-var1310 (var3103) var1310)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3103 var3103)
(declare-const null-Bool Bool)
(declare-const var1770 var3103) ; Statement: r0 := @this: freemarker.core.NoAutoEscBlock 
(assert (not (= var1770 null-var3103)))
(declare-const var3451 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3451 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.NoAutoEscBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (not (= (ite var3451 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3377 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3377)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3377!1 String)
(assert (= var3377!1 ""))
(assert true)
(define-const var2086 String (append/672562846 var3377!1 "<")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var3377!2 String)
(assert (= var3377!2 (str.++ var3377!1 "<")))
(assert true)
(define-const var3297 String (getNodeTypeSymbol/2032763293 var1770)) ; Statement: $r3 = virtualinvoke r0.<freemarker.core.NoAutoEscBlock: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var3008 String (append/672562846 var2086 var3297)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2086!1 String)
(assert (= var2086!1 (str.++ var2086 var3297)))
(assert true)
(define-const var3293 String (append/672562846 var3008 "\u0022>")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">") 
(declare-const var3008!1 String)
(assert (= var3008!1 (str.++ var3008 "\u0022>")))
(assert true)
(define-const var2267 String (getChildrenCanonicalForm/123097860 (cast-from-var3103-to-var1310 var1770))) ; Statement: $r6 = virtualinvoke r0.<freemarker.core.NoAutoEscBlock: java.lang.String getChildrenCanonicalForm()>() 
(assert true)
(define-const var947 String (append/672562846 var3293 var2267)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3293!1 String)
(assert (= var3293!1 (str.++ var3293 var2267)))
(assert true)
(define-const var1549 String (append/672562846 var947 "</")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</") 
(declare-const var947!1 String)
(assert (= var947!1 (str.++ var947 "</")))
(assert true)
(define-const var591 String (getNodeTypeSymbol/2032763293 var1770)) ; Statement: $r9 = virtualinvoke r0.<freemarker.core.NoAutoEscBlock: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var1785 String (append/672562846 var1549 var591)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1549!1 String)
(assert (= var1549!1 (str.++ var1549 var591)))
(assert true)
(define-const var30 String (append/672562846 var1785 ">")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1785!1 String)
(assert (= var1785!1 (str.++ var1785 ">")))
(assert true)
(define-const var1232 String (toString/-2075883882 var30)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getNodeTypeSymbol/2032763293=([freemarker.core.NoAutoEscBlock], java.lang.String), getChildrenCanonicalForm/123097860=([freemarker.core.TemplateElement], java.lang.String), cast-from-var3103-to-var1310=([freemarker.core.NoAutoEscBlock], freemarker.core.TemplateElement), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3103=freemarker.core.NoAutoEscBlock, var1770=r0, var3451=z0, var3377=$r2, var2086=$r4, var3297=$r3, var3008=$r5, var3293=$r7, var1310=freemarker.core.TemplateElement, var2267=$r6, var947=$r8, var1549=$r10, var591=$r9, var1785=$r11, var30=$r12, var1232=$r13}
; {freemarker.core.NoAutoEscBlock=var3103, r0=var1770, z0=var3451, $r2=var3377, $r4=var2086, $r3=var3297, $r5=var3008, $r7=var3293, freemarker.core.TemplateElement=var1310, $r6=var2267, $r8=var947, $r10=var1549, $r9=var591, $r11=var1785, $r12=var30, $r13=var1232}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.NoAutoEscBlock;	z0 := @parameter0: boolean;	if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.NoAutoEscBlock: java.lang.String getNodeTypeSymbol()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r3 = virtualinvoke r0.<freemarker.core.NoAutoEscBlock: java.lang.String getNodeTypeSymbol()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">");	$r6 = virtualinvoke r0.<freemarker.core.NoAutoEscBlock: java.lang.String getChildrenCanonicalForm()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</");	$r9 = virtualinvoke r0.<freemarker.core.NoAutoEscBlock: java.lang.String getNodeTypeSymbol()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 2