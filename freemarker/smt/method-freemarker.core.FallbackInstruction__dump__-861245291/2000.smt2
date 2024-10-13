(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getNodeTypeSymbol/1231466367 (var3340) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3340 var3340)
(declare-const null-Bool Bool)
(declare-const var1859 var3340) ; Statement: r0 := @this: freemarker.core.FallbackInstruction 
(assert (not (= var1859 null-var3340)))
(declare-const var3067 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3067 null-Bool)))
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.FallbackInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert (not (= (ite var3067 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2798 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2798)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2798!1 String)
(assert (= var2798!1 ""))
(assert true)
(define-const var2046 String (append/672562846 var2798!1 "<")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var2798!2 String)
(assert (= var2798!2 (str.++ var2798!1 "<")))
(assert true)
(define-const var3556 String (getNodeTypeSymbol/1231466367 var1859)) ; Statement: $r2 = virtualinvoke r0.<freemarker.core.FallbackInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var3999 String (append/672562846 var2046 var3556)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2046!1 String)
(assert (= var2046!1 (str.++ var2046 var3556)))
(assert true)
(define-const var876 String (append/672562846 var3999 "/>")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/>") 
(declare-const var3999!1 String)
(assert (= var3999!1 (str.++ var3999 "/>")))
(assert true)
(define-const var2571 String (toString/-2075883882 var876)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r6] 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getNodeTypeSymbol/1231466367=([freemarker.core.FallbackInstruction], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3340=freemarker.core.FallbackInstruction, var1859=r0, var3067=z0, var2798=$r1, var2046=$r3, var3556=$r2, var3999=$r4, var876=$r5, var2571=$r6}
; {freemarker.core.FallbackInstruction=var3340, r0=var1859, z0=var3067, $r1=var2798, $r3=var2046, $r2=var3556, $r4=var3999, $r5=var876, $r6=var2571}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.FallbackInstruction;	z0 := @parameter0: boolean;	if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.FallbackInstruction: java.lang.String getNodeTypeSymbol()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r2 = virtualinvoke r0.<freemarker.core.FallbackInstruction: java.lang.String getNodeTypeSymbol()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/>");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r6];	return $r6
;block_num 3