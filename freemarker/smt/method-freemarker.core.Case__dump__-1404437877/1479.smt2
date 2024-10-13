(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3389 0)
(declare-sort var3252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/-1061656331 (var3389) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun condition/2020968951 (var3389) var3252)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3389 var3389)
(declare-const null-Bool Bool)
(declare-const null-var3252 var3252)
(declare-const var918 var3389) ; Statement: r1 := @this: freemarker.core.Case 
(assert (not (= var918 null-var3389)))
(declare-const var139 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var139 null-Bool)))
(define-const var1687 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1687)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1687!1 String)
(assert (= var1687!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.Case: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var139 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1220 String (getNodeTypeSymbol/-1061656331 var918)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.Case: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var1687!1 var1220)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1687!2 String)
(assert (= var1687!2 (str.++ var1687!1 var1220)))
(define-const var3763 var3252 (condition/2020968951 var918)) ; Statement: $r3 = r1.<freemarker.core.Case: freemarker.core.Expression condition> 
 ; Statement: if $r3 == null goto (branch) 
(assert (= var3763 null-var3252)) ; Cond: $r3 == null 
 ; Statement: if z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var139 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var6 String (toString/-2075883882 var1687!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/-1061656331=([freemarker.core.Case], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), condition/2020968951=([freemarker.core.Case], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3389=freemarker.core.Case, var918=r1, var139=z0, var1687=$r0, var1220=$r2, var3252=freemarker.core.Expression, var3763=$r3, var6=$r4}
; {freemarker.core.Case=var3389, r1=var918, z0=var139, $r0=var1687, $r2=var1220, freemarker.core.Expression=var3252, $r3=var3763, $r4=var6}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.Case;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.Case: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.Case: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<freemarker.core.Case: freemarker.core.Expression condition>;	if $r3 == null goto (branch);	if z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4