(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2202 0)
(declare-sort var3565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getNodeTypeSymbol/1377562359 (var2202) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getChildrenCanonicalForm/123097860 (var3565) String)
(declare-fun cast-from-var2202-to-var3565 (var2202) var3565)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2202 var2202)
(declare-const null-Bool Bool)
(declare-const var3236 var2202) ; Statement: r0 := @this: freemarker.core.ElseOfList 
(assert (not (= var3236 null-var2202)))
(declare-const var3242 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3242 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.ElseOfList: java.lang.String getNodeTypeSymbol()>() 
(assert (not (= (ite var3242 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3644 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3644)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3644!1 String)
(assert (= var3644!1 ""))
(assert true)
(define-const var3415 String (append/-1166366385 var3644!1 60)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60) 
(declare-const var3644!2 String)
(assert (str.prefixof var3644!1 var3644!2))
(assert true)
(define-const var958 String (getNodeTypeSymbol/1377562359 var3236)) ; Statement: $r3 = virtualinvoke r0.<freemarker.core.ElseOfList: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var240 String (append/672562846 var3415 var958)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3415!1 String)
(assert (= var3415!1 (str.++ var3415 var958)))
(assert true)
;(assert (append/-1166366385 var240 62)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var240!1 String)
(assert (str.prefixof var240 var240!1))
(assert true)
(define-const var2513 String (getChildrenCanonicalForm/123097860 (cast-from-var2202-to-var3565 var3236))) ; Statement: $r6 = virtualinvoke r0.<freemarker.core.ElseOfList: java.lang.String getChildrenCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var3644!2 var2513)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3644!3 String)
(assert (= var3644!3 (str.++ var3644!2 var2513)))
(assert true)
(define-const var3769 String (toString/-2075883882 var3644!3)) ; Statement: $r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getNodeTypeSymbol/1377562359=([freemarker.core.ElseOfList], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getChildrenCanonicalForm/123097860=([freemarker.core.TemplateElement], java.lang.String), cast-from-var2202-to-var3565=([freemarker.core.ElseOfList], freemarker.core.TemplateElement), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2202=freemarker.core.ElseOfList, var3236=r0, var3242=z0, var3644=$r2, var3415=$r4, var958=$r3, var240=$r5, var3565=freemarker.core.TemplateElement, var2513=$r6, var3769=$r7}
; {freemarker.core.ElseOfList=var2202, r0=var3236, z0=var3242, $r2=var3644, $r4=var3415, $r3=var958, $r5=var240, freemarker.core.TemplateElement=var3565, $r6=var2513, $r7=var3769}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.ElseOfList;	z0 := @parameter0: boolean;	if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.ElseOfList: java.lang.String getNodeTypeSymbol()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60);	$r3 = virtualinvoke r0.<freemarker.core.ElseOfList: java.lang.String getNodeTypeSymbol()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r6 = virtualinvoke r0.<freemarker.core.ElseOfList: java.lang.String getChildrenCanonicalForm()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2