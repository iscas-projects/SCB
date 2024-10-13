(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var118 0)
(declare-sort var3931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/-236765410 (var118) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun condition/-949324306 (var118) var3931)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var118 var118)
(declare-const null-Bool Bool)
(declare-const null-var3931 var3931)
(declare-const var2955 var118) ; Statement: r1 := @this: freemarker.core.ConditionalBlock 
(assert (not (= var2955 null-var118)))
(declare-const var1750 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1750 null-Bool)))
(define-const var3879 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3879)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3879!1 String)
(assert (= var3879!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.ConditionalBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var1750 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3056 String (getNodeTypeSymbol/-236765410 var2955)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.ConditionalBlock: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var3879!1 var3056)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3879!2 String)
(assert (= var3879!2 (str.++ var3879!1 var3056)))
(define-const var3090 var3931 (condition/-949324306 var2955)) ; Statement: $r3 = r1.<freemarker.core.ConditionalBlock: freemarker.core.Expression condition> 
 ; Statement: if $r3 == null goto (branch) 
(assert (= var3090 null-var3931)) ; Cond: $r3 == null 
 ; Statement: if z0 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1750 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3525 String (toString/-2075883882 var3879!2)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/-236765410=([freemarker.core.ConditionalBlock], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), condition/-949324306=([freemarker.core.ConditionalBlock], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var118=freemarker.core.ConditionalBlock, var2955=r1, var1750=z0, var3879=$r0, var3056=$r2, var3931=freemarker.core.Expression, var3090=$r3, var3525=$r8}
; {freemarker.core.ConditionalBlock=var118, r1=var2955, z0=var1750, $r0=var3879, $r2=var3056, freemarker.core.Expression=var3931, $r3=var3090, $r8=var3525}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.ConditionalBlock;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.ConditionalBlock: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.ConditionalBlock: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<freemarker.core.ConditionalBlock: freemarker.core.Expression condition>;	if $r3 == null goto (branch);	if z0 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 4