(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1161 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/-741804755 (var1161) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1161 var1161)
(declare-const null-Bool Bool)
(declare-const var3680 var1161) ; Statement: r1 := @this: freemarker.core.Sep 
(assert (not (= var3680 null-var1161)))
(declare-const var2131 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2131 null-Bool)))
(define-const var1292 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1292)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1292!1 String)
(assert (= var1292!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.Sep: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var2131 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2745 String (getNodeTypeSymbol/-741804755 var3680)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.Sep: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var1292!1 var2745)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1292!2 String)
(assert (= var1292!2 (str.++ var1292!1 var2745)))
 ; Statement: if z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2131 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var758 String (toString/-2075883882 var1292!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/-741804755=([freemarker.core.Sep], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1161=freemarker.core.Sep, var3680=r1, var2131=z0, var1292=$r0, var2745=$r2, var758=$r3}
; {freemarker.core.Sep=var1161, r1=var3680, z0=var2131, $r0=var1292, $r2=var2745, $r3=var758}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.Sep;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.Sep: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.Sep: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	if z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3