(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3873 0)
(declare-sort var3850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/-2055460083 (var3873) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun exp/-40720937 (var3873) var3850)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3873 var3873)
(declare-const null-Bool Bool)
(declare-const null-var3850 var3850)
(declare-const var871 var3873) ; Statement: r1 := @this: freemarker.core.ReturnInstruction 
(assert (not (= var871 null-var3873)))
(declare-const var37 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var37 null-Bool)))
(define-const var1524 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1524)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1524!1 String)
(assert (= var1524!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.ReturnInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var37 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2397 String (getNodeTypeSymbol/-2055460083 var871)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.ReturnInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var1524!1 var2397)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1524!2 String)
(assert (= var1524!2 (str.++ var1524!1 var2397)))
(define-const var911 var3850 (exp/-40720937 var871)) ; Statement: $r3 = r1.<freemarker.core.ReturnInstruction: freemarker.core.Expression exp> 
 ; Statement: if $r3 == null goto (branch) 
(assert (= var911 null-var3850)) ; Cond: $r3 == null 
 ; Statement: if z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var37 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2360 String (toString/-2075883882 var1524!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/-2055460083=([freemarker.core.ReturnInstruction], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), exp/-40720937=([freemarker.core.ReturnInstruction], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3873=freemarker.core.ReturnInstruction, var871=r1, var37=z0, var1524=$r0, var2397=$r2, var3850=freemarker.core.Expression, var911=$r3, var2360=$r4}
; {freemarker.core.ReturnInstruction=var3873, r1=var871, z0=var37, $r0=var1524, $r2=var2397, freemarker.core.Expression=var3850, $r3=var911, $r4=var2360}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.ReturnInstruction;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.ReturnInstruction: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.ReturnInstruction: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<freemarker.core.ReturnInstruction: freemarker.core.Expression exp>;	if $r3 == null goto (branch);	if z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4