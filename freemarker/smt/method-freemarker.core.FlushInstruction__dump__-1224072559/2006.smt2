(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getNodeTypeSymbol/-232786821 (var3631) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3631 var3631)
(declare-const null-Bool Bool)
(declare-const var485 var3631) ; Statement: r0 := @this: freemarker.core.FlushInstruction 
(assert (not (= var485 null-var3631)))
(declare-const var189 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var189 null-Bool)))
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.FlushInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert (not (= (ite var189 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3067 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3067)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3067!1 String)
(assert (= var3067!1 ""))
(assert true)
(define-const var3822 String (append/672562846 var3067!1 "<")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var3067!2 String)
(assert (= var3067!2 (str.++ var3067!1 "<")))
(assert true)
(define-const var1006 String (getNodeTypeSymbol/-232786821 var485)) ; Statement: $r2 = virtualinvoke r0.<freemarker.core.FlushInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var1965 String (append/672562846 var3822 var1006)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3822!1 String)
(assert (= var3822!1 (str.++ var3822 var1006)))
(assert true)
(define-const var672 String (append/672562846 var1965 "/>")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/>") 
(declare-const var1965!1 String)
(assert (= var1965!1 (str.++ var1965 "/>")))
(assert true)
(define-const var3712 String (toString/-2075883882 var672)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r6] 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getNodeTypeSymbol/-232786821=([freemarker.core.FlushInstruction], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3631=freemarker.core.FlushInstruction, var485=r0, var189=z0, var3067=$r1, var3822=$r3, var1006=$r2, var1965=$r4, var672=$r5, var3712=$r6}
; {freemarker.core.FlushInstruction=var3631, r0=var485, z0=var189, $r1=var3067, $r3=var3822, $r2=var1006, $r4=var1965, $r5=var672, $r6=var3712}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.FlushInstruction;	z0 := @parameter0: boolean;	if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.FlushInstruction: java.lang.String getNodeTypeSymbol()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r2 = virtualinvoke r0.<freemarker.core.FlushInstruction: java.lang.String getNodeTypeSymbol()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/>");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r6];	return $r6
;block_num 3