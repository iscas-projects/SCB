(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2751 0)
(declare-sort var3882 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/-1092656609 (var2751) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun exp/192321029 (var2751) var3882)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2751 var2751)
(declare-const null-Bool Bool)
(declare-const null-var3882 var3882)
(declare-const var2914 var2751) ; Statement: r1 := @this: freemarker.core.StopInstruction 
(assert (not (= var2914 null-var2751)))
(declare-const var3531 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3531 null-Bool)))
(define-const var2013 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2013)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2013!1 String)
(assert (= var2013!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.StopInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var3531 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1964 String (getNodeTypeSymbol/-1092656609 var2914)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.StopInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var2013!1 var1964)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2013!2 String)
(assert (= var2013!2 (str.++ var2013!1 var1964)))
(define-const var3381 var3882 (exp/192321029 var2914)) ; Statement: $r3 = r1.<freemarker.core.StopInstruction: freemarker.core.Expression exp> 
 ; Statement: if $r3 == null goto (branch) 
(assert (= var3381 null-var3882)) ; Cond: $r3 == null 
 ; Statement: if z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3531 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1720 String (toString/-2075883882 var2013!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/-1092656609=([freemarker.core.StopInstruction], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), exp/192321029=([freemarker.core.StopInstruction], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2751=freemarker.core.StopInstruction, var2914=r1, var3531=z0, var2013=$r0, var1964=$r2, var3882=freemarker.core.Expression, var3381=$r3, var1720=$r4}
; {freemarker.core.StopInstruction=var2751, r1=var2914, z0=var3531, $r0=var2013, $r2=var1964, freemarker.core.Expression=var3882, $r3=var3381, $r4=var1720}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.StopInstruction;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.StopInstruction: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.StopInstruction: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<freemarker.core.StopInstruction: freemarker.core.Expression exp>;	if $r3 == null goto (branch);	if z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4