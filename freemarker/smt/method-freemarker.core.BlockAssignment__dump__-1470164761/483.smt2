(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1662 0)
(declare-sort var597 0)
(declare-sort var3099 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/1692551761 (var1662) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun varName/455236115 (var1662) String)
(declare-fun namespaceExp/455236115 (var1662) var597)
(declare-fun getChildrenCanonicalForm/123097860 (var3099) String)
(declare-fun cast-from-var1662-to-var3099 (var1662) var3099)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1662 var1662)
(declare-const null-Bool Bool)
(declare-const null-var597 var597)
(declare-const var3307 var1662) ; Statement: r1 := @this: freemarker.core.BlockAssignment 
(assert (not (= var3307 null-var1662)))
(declare-const var3547 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3547 null-Bool)))
(define-const var1471 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1471)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1471!1 String)
(assert (= var1471!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.BlockAssignment: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var3547 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3183 String (getNodeTypeSymbol/1692551761 var3307)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.BlockAssignment: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var1471!1 var3183)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1471!2 String)
(assert (= var1471!2 (str.++ var1471!1 var3183)))
(assert true)
;(assert (append/-1166366385 var1471!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1471!3 String)
(assert (str.prefixof var1471!2 var1471!3))
(define-const var3188 String (varName/455236115 var3307)) ; Statement: $r3 = r1.<freemarker.core.BlockAssignment: java.lang.String varName> 
(assert true)
;(assert (append/672562846 var1471!3 var3188)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1471!4 String)
(assert (= var1471!4 (str.++ var1471!3 var3188)))
(define-const var2745 var597 (namespaceExp/455236115 var3307)) ; Statement: $r4 = r1.<freemarker.core.BlockAssignment: freemarker.core.Expression namespaceExp> 
 ; Statement: if $r4 == null goto (branch) 
(assert (= var2745 null-var597)) ; Cond: $r4 == null 
 ; Statement: if z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = .nested_output") 
(assert (not (= (ite var3547 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (append/-1166366385 var1471!4 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var1471!5 String)
(assert (str.prefixof var1471!4 var1471!5))
(assert true)
(define-const var1345 String (getChildrenCanonicalForm/123097860 (cast-from-var1662-to-var3099 var3307))) ; Statement: $r6 = virtualinvoke r1.<freemarker.core.BlockAssignment: java.lang.String getChildrenCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var1471!5 var1345)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1471!6 String)
(assert (= var1471!6 (str.++ var1471!5 var1345)))
(assert true)
;(assert (append/672562846 var1471!6 "</")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</") 
(declare-const var1471!7 String)
(assert (= var1471!7 (str.++ var1471!6 "</")))
(assert true)
(define-const var54 String (getNodeTypeSymbol/1692551761 var3307)) ; Statement: $r7 = virtualinvoke r1.<freemarker.core.BlockAssignment: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var1471!7 var54)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1471!8 String)
(assert (= var1471!8 (str.++ var1471!7 var54)))
(assert true)
;(assert (append/-1166366385 var1471!8 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var1471!9 String)
(assert (str.prefixof var1471!8 var1471!9))
 ; Statement: goto [?= $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var667 String (toString/-2075883882 var1471!9)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/1692551761=([freemarker.core.BlockAssignment], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), varName/455236115=([freemarker.core.BlockAssignment], java.lang.String), namespaceExp/455236115=([freemarker.core.BlockAssignment], freemarker.core.Expression), getChildrenCanonicalForm/123097860=([freemarker.core.TemplateElement], java.lang.String), cast-from-var1662-to-var3099=([freemarker.core.BlockAssignment], freemarker.core.TemplateElement), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1662=freemarker.core.BlockAssignment, var3307=r1, var3547=z0, var1471=$r0, var3183=$r2, var3188=$r3, var597=freemarker.core.Expression, var2745=$r4, var3099=freemarker.core.TemplateElement, var1345=$r6, var54=$r7, var667=$r5}
; {freemarker.core.BlockAssignment=var1662, r1=var3307, z0=var3547, $r0=var1471, $r2=var3183, $r3=var3188, freemarker.core.Expression=var597, $r4=var2745, freemarker.core.TemplateElement=var3099, $r6=var1345, $r7=var54, $r5=var667}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BlockAssignment;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.BlockAssignment: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.BlockAssignment: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r3 = r1.<freemarker.core.BlockAssignment: java.lang.String varName>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = r1.<freemarker.core.BlockAssignment: freemarker.core.Expression namespaceExp>;	if $r4 == null goto (branch);	if z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = .nested_output");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r6 = virtualinvoke r1.<freemarker.core.BlockAssignment: java.lang.String getChildrenCanonicalForm()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</");	$r7 = virtualinvoke r1.<freemarker.core.BlockAssignment: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	goto [?= $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5