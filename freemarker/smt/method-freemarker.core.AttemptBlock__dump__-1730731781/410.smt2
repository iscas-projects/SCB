(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1802 0)
(declare-sort var3721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getNodeTypeSymbol/-1593115803 (var1802) String)
(declare-fun getChildrenCanonicalForm/123097860 (var3721) String)
(declare-fun cast-from-var1802-to-var3721 (var1802) var3721)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1802 var1802)
(declare-const null-Bool Bool)
(declare-const var982 var1802) ; Statement: r1 := @this: freemarker.core.AttemptBlock 
(assert (not (= var982 null-var1802)))
(declare-const var1371 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1371 null-Bool)))
 ; Statement: if z0 != 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (= (ite var1371 1 0) 0))) ; Cond: z0 != 0 
(define-const var2044 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2044)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2044!1 String)
(assert (= var2044!1 ""))
(assert true)
(define-const var1796 String (append/672562846 var2044!1 "<")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var2044!2 String)
(assert (= var2044!2 (str.++ var2044!1 "<")))
(assert true)
(define-const var1479 String (getNodeTypeSymbol/-1593115803 var982)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.AttemptBlock: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var157 String (append/672562846 var1796 var1479)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1796!1 String)
(assert (= var1796!1 (str.++ var1796 var1479)))
(assert true)
;(assert (append/672562846 var157 ">")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var157!1 String)
(assert (= var157!1 (str.++ var157 ">")))
(assert true)
(define-const var3053 String (getChildrenCanonicalForm/123097860 (cast-from-var1802-to-var3721 var982))) ; Statement: $r5 = virtualinvoke r1.<freemarker.core.AttemptBlock: java.lang.String getChildrenCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var2044!2 var3053)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2044!3 String)
(assert (= var2044!3 (str.++ var2044!2 var3053)))
(assert true)
(define-const var847 String (append/672562846 var2044!3 "</")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</") 
(declare-const var2044!4 String)
(assert (= var2044!4 (str.++ var2044!3 "</")))
(assert true)
(define-const var2035 String (getNodeTypeSymbol/-1593115803 var982)) ; Statement: $r6 = virtualinvoke r1.<freemarker.core.AttemptBlock: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var284 String (append/672562846 var847 var2035)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var847!1 String)
(assert (= var847!1 (str.++ var847 var2035)))
(assert true)
;(assert (append/672562846 var284 ">")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var284!1 String)
(assert (= var284!1 (str.++ var284 ">")))
(assert true)
(define-const var1294 String (toString/-2075883882 var2044!4)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getNodeTypeSymbol/-1593115803=([freemarker.core.AttemptBlock], java.lang.String), getChildrenCanonicalForm/123097860=([freemarker.core.TemplateElement], java.lang.String), cast-from-var1802-to-var3721=([freemarker.core.AttemptBlock], freemarker.core.TemplateElement), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1802=freemarker.core.AttemptBlock, var982=r1, var1371=z0, var2044=$r0, var1796=$r3, var1479=$r2, var157=$r4, var3721=freemarker.core.TemplateElement, var3053=$r5, var847=$r7, var2035=$r6, var284=$r8, var1294=$r9}
; {freemarker.core.AttemptBlock=var1802, r1=var982, z0=var1371, $r0=var2044, $r3=var1796, $r2=var1479, $r4=var157, freemarker.core.TemplateElement=var3721, $r5=var3053, $r7=var847, $r6=var2035, $r8=var284, $r9=var1294}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.AttemptBlock;	z0 := @parameter0: boolean;	if z0 != 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r2 = virtualinvoke r1.<freemarker.core.AttemptBlock: java.lang.String getNodeTypeSymbol()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r5 = virtualinvoke r1.<freemarker.core.AttemptBlock: java.lang.String getChildrenCanonicalForm()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</");	$r6 = virtualinvoke r1.<freemarker.core.AttemptBlock: java.lang.String getNodeTypeSymbol()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2