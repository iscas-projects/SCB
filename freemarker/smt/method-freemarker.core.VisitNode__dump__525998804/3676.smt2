(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var679 0)
(declare-sort var1526 0)
(declare-sort var1911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/-2066256258 (var679) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun targetNode/1133373318 (var679) var1526)
(declare-fun getCanonicalForm/-1714059646 (var1911) String)
(declare-fun cast-from-var1526-to-var1911 (var1526) var1911)
(declare-fun namespaces/1133373318 (var679) var1526)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var679 var679)
(declare-const null-Bool Bool)
(declare-const null-var1526 var1526)
(declare-const var3427 var679) ; Statement: r1 := @this: freemarker.core.VisitNode 
(assert (not (= var3427 null-var679)))
(declare-const var2188 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2188 null-Bool)))
(define-const var775 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var775)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var775!1 String)
(assert (= var775!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.VisitNode: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var2188 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1851 String (getNodeTypeSymbol/-2066256258 var3427)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.VisitNode: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var775!1 var1851)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var775!2 String)
(assert (= var775!2 (str.++ var775!1 var1851)))
(assert true)
;(assert (append/-1166366385 var775!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var775!3 String)
(assert (str.prefixof var775!2 var775!3))
(define-const var3367 var1526 (targetNode/1133373318 var3427)) ; Statement: $r3 = r1.<freemarker.core.VisitNode: freemarker.core.Expression targetNode> 
(assert true)
(define-const var3095 String (getCanonicalForm/-1714059646 (cast-from-var1526-to-var1911 var3367))) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var775!3 var3095)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var775!4 String)
(assert (= var775!4 (str.++ var775!3 var3095)))
(define-const var2365 var1526 (namespaces/1133373318 var3427)) ; Statement: $r5 = r1.<freemarker.core.VisitNode: freemarker.core.Expression namespaces> 
 ; Statement: if $r5 == null goto (branch) 
(assert (= var2365 null-var1526)) ; Cond: $r5 == null 
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2188 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2546 String (toString/-2075883882 var775!4)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/-2066256258=([freemarker.core.VisitNode], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), targetNode/1133373318=([freemarker.core.VisitNode], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var1526-to-var1911=([freemarker.core.Expression], freemarker.core.TemplateObject), namespaces/1133373318=([freemarker.core.VisitNode], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var679=freemarker.core.VisitNode, var3427=r1, var2188=z0, var775=$r0, var1851=$r2, var1526=freemarker.core.Expression, var3367=$r3, var1911=freemarker.core.TemplateObject, var3095=$r4, var2365=$r5, var2546=$r6}
; {freemarker.core.VisitNode=var679, r1=var3427, z0=var2188, $r0=var775, $r2=var1851, freemarker.core.Expression=var1526, $r3=var3367, freemarker.core.TemplateObject=var1911, $r4=var3095, $r5=var2365, $r6=var2546}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.VisitNode;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.VisitNode: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.VisitNode: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r3 = r1.<freemarker.core.VisitNode: freemarker.core.Expression targetNode>;	$r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = r1.<freemarker.core.VisitNode: freemarker.core.Expression namespaces>;	if $r5 == null goto (branch);	if z0 == 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 4