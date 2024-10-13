(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2312 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getNodeTypeSymbol/-1490092618 (var2312) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2312 var2312)
(declare-const null-Bool Bool)
(declare-const var1624 var2312) ; Statement: r0 := @this: freemarker.core.BreakInstruction 
(assert (not (= var1624 null-var2312)))
(declare-const var1895 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1895 null-Bool)))
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.BreakInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert (not (= (ite var1895 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var476 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var476)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var476!1 String)
(assert (= var476!1 ""))
(assert true)
(define-const var1481 String (append/672562846 var476!1 "<")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var476!2 String)
(assert (= var476!2 (str.++ var476!1 "<")))
(assert true)
(define-const var1667 String (getNodeTypeSymbol/-1490092618 var1624)) ; Statement: $r2 = virtualinvoke r0.<freemarker.core.BreakInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var2969 String (append/672562846 var1481 var1667)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1481!1 String)
(assert (= var1481!1 (str.++ var1481 var1667)))
(assert true)
(define-const var3736 String (append/672562846 var2969 "/>")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/>") 
(declare-const var2969!1 String)
(assert (= var2969!1 (str.++ var2969 "/>")))
(assert true)
(define-const var2012 String (toString/-2075883882 var3736)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r6] 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getNodeTypeSymbol/-1490092618=([freemarker.core.BreakInstruction], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2312=freemarker.core.BreakInstruction, var1624=r0, var1895=z0, var476=$r1, var1481=$r3, var1667=$r2, var2969=$r4, var3736=$r5, var2012=$r6}
; {freemarker.core.BreakInstruction=var2312, r0=var1624, z0=var1895, $r1=var476, $r3=var1481, $r2=var1667, $r4=var2969, $r5=var3736, $r6=var2012}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.BreakInstruction;	z0 := @parameter0: boolean;	if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.BreakInstruction: java.lang.String getNodeTypeSymbol()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r2 = virtualinvoke r0.<freemarker.core.BreakInstruction: java.lang.String getNodeTypeSymbol()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/>");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r6];	return $r6
;block_num 3