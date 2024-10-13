(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2517 0)
(declare-sort var2301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/1692551761 (var2517) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun varName/455236115 (var2517) String)
(declare-fun namespaceExp/455236115 (var2517) var2301)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2517 var2517)
(declare-const null-Bool Bool)
(declare-const null-var2301 var2301)
(declare-const var2736 var2517) ; Statement: r1 := @this: freemarker.core.BlockAssignment 
(assert (not (= var2736 null-var2517)))
(declare-const var3772 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3772 null-Bool)))
(define-const var3494 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3494)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3494!1 String)
(assert (= var3494!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.BlockAssignment: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var3772 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var932 String (getNodeTypeSymbol/1692551761 var2736)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.BlockAssignment: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var3494!1 var932)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3494!2 String)
(assert (= var3494!2 (str.++ var3494!1 var932)))
(assert true)
;(assert (append/-1166366385 var3494!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3494!3 String)
(assert (str.prefixof var3494!2 var3494!3))
(define-const var2357 String (varName/455236115 var2736)) ; Statement: $r3 = r1.<freemarker.core.BlockAssignment: java.lang.String varName> 
(assert true)
;(assert (append/672562846 var3494!3 var2357)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3494!4 String)
(assert (= var3494!4 (str.++ var3494!3 var2357)))
(define-const var1374 var2301 (namespaceExp/455236115 var2736)) ; Statement: $r4 = r1.<freemarker.core.BlockAssignment: freemarker.core.Expression namespaceExp> 
 ; Statement: if $r4 == null goto (branch) 
(assert (= var1374 null-var2301)) ; Cond: $r4 == null 
 ; Statement: if z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = .nested_output") 
(assert (= (ite var3772 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var3494!4 " = .nested_output")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = .nested_output") 
(declare-const var3494!5 String)
(assert (= var3494!5 (str.++ var3494!4 " = .nested_output")))
(assert true) ; Non Conditional
(assert true)
(define-const var3444 String (toString/-2075883882 var3494!5)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/1692551761=([freemarker.core.BlockAssignment], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), varName/455236115=([freemarker.core.BlockAssignment], java.lang.String), namespaceExp/455236115=([freemarker.core.BlockAssignment], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2517=freemarker.core.BlockAssignment, var2736=r1, var3772=z0, var3494=$r0, var932=$r2, var2357=$r3, var2301=freemarker.core.Expression, var1374=$r4, var3444=$r5}
; {freemarker.core.BlockAssignment=var2517, r1=var2736, z0=var3772, $r0=var3494, $r2=var932, $r3=var2357, freemarker.core.Expression=var2301, $r4=var1374, $r5=var3444}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BlockAssignment;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.BlockAssignment: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.BlockAssignment: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r3 = r1.<freemarker.core.BlockAssignment: java.lang.String varName>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = r1.<freemarker.core.BlockAssignment: freemarker.core.Expression namespaceExp>;	if $r4 == null goto (branch);	if z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = .nested_output");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = .nested_output");	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5