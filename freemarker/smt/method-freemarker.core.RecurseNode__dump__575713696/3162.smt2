(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2909 0)
(declare-sort var3310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/92060746 (var2909) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun targetNode/-503261126 (var2909) var3310)
(declare-fun namespaces/-503261126 (var2909) var3310)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2909 var2909)
(declare-const null-Bool Bool)
(declare-const null-var3310 var3310)
(declare-const var116 var2909) ; Statement: r1 := @this: freemarker.core.RecurseNode 
(assert (not (= var116 null-var2909)))
(declare-const var3361 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3361 null-Bool)))
(define-const var3258 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3258)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3258!1 String)
(assert (= var3258!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.RecurseNode: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var3361 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var499 String (getNodeTypeSymbol/92060746 var116)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.RecurseNode: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var3258!1 var499)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3258!2 String)
(assert (= var3258!2 (str.++ var3258!1 var499)))
(define-const var1482 var3310 (targetNode/-503261126 var116)) ; Statement: $r3 = r1.<freemarker.core.RecurseNode: freemarker.core.Expression targetNode> 
 ; Statement: if $r3 == null goto $r4 = r1.<freemarker.core.RecurseNode: freemarker.core.Expression namespaces> 
(assert (= var1482 null-var3310)) ; Cond: $r3 == null 
(define-const var1567 var3310 (namespaces/-503261126 var116)) ; Statement: $r4 = r1.<freemarker.core.RecurseNode: freemarker.core.Expression namespaces> 
 ; Statement: if $r4 == null goto (branch) 
(assert (= var1567 null-var3310)) ; Cond: $r4 == null 
 ; Statement: if z0 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3361 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1337 String (toString/-2075883882 var3258!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/92060746=([freemarker.core.RecurseNode], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), targetNode/-503261126=([freemarker.core.RecurseNode], freemarker.core.Expression), namespaces/-503261126=([freemarker.core.RecurseNode], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2909=freemarker.core.RecurseNode, var116=r1, var3361=z0, var3258=$r0, var499=$r2, var3310=freemarker.core.Expression, var1482=$r3, var1567=$r4, var1337=$r5}
; {freemarker.core.RecurseNode=var2909, r1=var116, z0=var3361, $r0=var3258, $r2=var499, freemarker.core.Expression=var3310, $r3=var1482, $r4=var1567, $r5=var1337}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.RecurseNode;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.RecurseNode: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.RecurseNode: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<freemarker.core.RecurseNode: freemarker.core.Expression targetNode>;	if $r3 == null goto $r4 = r1.<freemarker.core.RecurseNode: freemarker.core.Expression namespaces>;	$r4 = r1.<freemarker.core.RecurseNode: freemarker.core.Expression namespaces>;	if $r4 == null goto (branch);	if z0 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5