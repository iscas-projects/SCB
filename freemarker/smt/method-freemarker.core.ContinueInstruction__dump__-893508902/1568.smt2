(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getNodeTypeSymbol/-2072323580 (var3857) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3857 var3857)
(declare-const null-Bool Bool)
(declare-const var1656 var3857) ; Statement: r0 := @this: freemarker.core.ContinueInstruction 
(assert (not (= var1656 null-var3857)))
(declare-const var2413 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2413 null-Bool)))
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.ContinueInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert (not (= (ite var2413 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2248 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2248)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2248!1 String)
(assert (= var2248!1 ""))
(assert true)
(define-const var2685 String (append/672562846 var2248!1 "<")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var2248!2 String)
(assert (= var2248!2 (str.++ var2248!1 "<")))
(assert true)
(define-const var1075 String (getNodeTypeSymbol/-2072323580 var1656)) ; Statement: $r2 = virtualinvoke r0.<freemarker.core.ContinueInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var2178 String (append/672562846 var2685 var1075)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2685!1 String)
(assert (= var2685!1 (str.++ var2685 var1075)))
(assert true)
(define-const var2110 String (append/672562846 var2178 "/>")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/>") 
(declare-const var2178!1 String)
(assert (= var2178!1 (str.++ var2178 "/>")))
(assert true)
(define-const var2307 String (toString/-2075883882 var2110)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r6] 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getNodeTypeSymbol/-2072323580=([freemarker.core.ContinueInstruction], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3857=freemarker.core.ContinueInstruction, var1656=r0, var2413=z0, var2248=$r1, var2685=$r3, var1075=$r2, var2178=$r4, var2110=$r5, var2307=$r6}
; {freemarker.core.ContinueInstruction=var3857, r0=var1656, z0=var2413, $r1=var2248, $r3=var2685, $r2=var1075, $r4=var2178, $r5=var2110, $r6=var2307}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.ContinueInstruction;	z0 := @parameter0: boolean;	if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.ContinueInstruction: java.lang.String getNodeTypeSymbol()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r2 = virtualinvoke r0.<freemarker.core.ContinueInstruction: java.lang.String getNodeTypeSymbol()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/>");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r6];	return $r6
;block_num 3