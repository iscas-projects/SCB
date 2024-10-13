(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3703 0)
(declare-sort var961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getNodeTypeSymbol/-680847425 (var3703) String)
(declare-fun getChildrenCanonicalForm/123097860 (var961) String)
(declare-fun cast-from-var3703-to-var961 (var3703) var961)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3703 var3703)
(declare-const null-Bool Bool)
(declare-const var433 var3703) ; Statement: r0 := @this: freemarker.core.CompressedBlock 
(assert (not (= var433 null-var3703)))
(declare-const var1215 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1215 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.CompressedBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (not (= (ite var1215 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var973 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var973)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var973!1 String)
(assert (= var973!1 ""))
(assert true)
(define-const var2222 String (append/672562846 var973!1 "<")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var973!2 String)
(assert (= var973!2 (str.++ var973!1 "<")))
(assert true)
(define-const var1652 String (getNodeTypeSymbol/-680847425 var433)) ; Statement: $r3 = virtualinvoke r0.<freemarker.core.CompressedBlock: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var410 String (append/672562846 var2222 var1652)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2222!1 String)
(assert (= var2222!1 (str.++ var2222 var1652)))
(assert true)
(define-const var1380 String (append/672562846 var410 ">")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var410!1 String)
(assert (= var410!1 (str.++ var410 ">")))
(assert true)
(define-const var1640 String (getChildrenCanonicalForm/123097860 (cast-from-var3703-to-var961 var433))) ; Statement: $r6 = virtualinvoke r0.<freemarker.core.CompressedBlock: java.lang.String getChildrenCanonicalForm()>() 
(assert true)
(define-const var704 String (append/672562846 var1380 var1640)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1380!1 String)
(assert (= var1380!1 (str.++ var1380 var1640)))
(assert true)
(define-const var990 String (append/672562846 var704 "</")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</") 
(declare-const var704!1 String)
(assert (= var704!1 (str.++ var704 "</")))
(assert true)
(define-const var2345 String (getNodeTypeSymbol/-680847425 var433)) ; Statement: $r9 = virtualinvoke r0.<freemarker.core.CompressedBlock: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var1932 String (append/672562846 var990 var2345)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var990!1 String)
(assert (= var990!1 (str.++ var990 var2345)))
(assert true)
(define-const var3567 String (append/672562846 var1932 ">")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1932!1 String)
(assert (= var1932!1 (str.++ var1932 ">")))
(assert true)
(define-const var26 String (toString/-2075883882 var3567)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getNodeTypeSymbol/-680847425=([freemarker.core.CompressedBlock], java.lang.String), getChildrenCanonicalForm/123097860=([freemarker.core.TemplateElement], java.lang.String), cast-from-var3703-to-var961=([freemarker.core.CompressedBlock], freemarker.core.TemplateElement), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3703=freemarker.core.CompressedBlock, var433=r0, var1215=z0, var973=$r2, var2222=$r4, var1652=$r3, var410=$r5, var1380=$r7, var961=freemarker.core.TemplateElement, var1640=$r6, var704=$r8, var990=$r10, var2345=$r9, var1932=$r11, var3567=$r12, var26=$r13}
; {freemarker.core.CompressedBlock=var3703, r0=var433, z0=var1215, $r2=var973, $r4=var2222, $r3=var1652, $r5=var410, $r7=var1380, freemarker.core.TemplateElement=var961, $r6=var1640, $r8=var704, $r10=var990, $r9=var2345, $r11=var1932, $r12=var3567, $r13=var26}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.CompressedBlock;	z0 := @parameter0: boolean;	if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.CompressedBlock: java.lang.String getNodeTypeSymbol()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r3 = virtualinvoke r0.<freemarker.core.CompressedBlock: java.lang.String getNodeTypeSymbol()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r6 = virtualinvoke r0.<freemarker.core.CompressedBlock: java.lang.String getChildrenCanonicalForm()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</");	$r9 = virtualinvoke r0.<freemarker.core.CompressedBlock: java.lang.String getNodeTypeSymbol()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 2