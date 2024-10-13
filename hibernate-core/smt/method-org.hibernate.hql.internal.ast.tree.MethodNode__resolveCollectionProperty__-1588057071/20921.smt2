(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1078 0)
(declare-sort var516 0)
(declare-sort var314 0)
(declare-sort var1850 0)
(declare-sort var2957 0)
(declare-sort var2793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun methodName/-632286265 (var1078) String)
(declare-fun var314_getNormalizedPropertyName/2114108693 (String) String)
(declare-fun var1850-init () var1850)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2957) String)
(declare-fun cast-from-var516-to-var2957 (var516) var2957)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1580113206 (var1850 String) void)
(declare-fun cast-from-var1850-to-var2793 (var1850) var2793)
(declare-const null-var1078 var1078)
(declare-const null-var516 var516)
(declare-const var3840 var1078) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.MethodNode 
(assert (not (= var3840 null-var1078)))
(declare-const var2066 var516) ; Statement: r3 := @parameter0: antlr.collections.AST 
(assert (not (= var2066 null-var516)))
(define-const var2651 String (methodName/-632286265 var3840)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String methodName> 
(define-const var2160 String (var314_getNormalizedPropertyName/2114108693 var2651)) ; Statement: r2 = staticinvoke <org.hibernate.hql.internal.CollectionProperties: java.lang.String getNormalizedPropertyName(java.lang.String)>($r1) 
(define-const var415 Bool true) ; Statement: $z0 = r3 instanceof org.hibernate.hql.internal.ast.tree.FromReferenceNode 
 ; Statement: if $z0 == 0 goto $r46 = new antlr.SemanticException 
(assert (= (ite var415 1 0) 0)) ; Cond: $z0 == 0 
(define-const var306 var1850 var1850-init) ; Statement: $r46 = new antlr.SemanticException 
(define-const var764 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var764)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var764!1 String)
(assert (= var764!1 ""))
(assert true)
(define-const var2850 String (append/672562846 var764!1 "Unexpected expression ")) ; Statement: $r6 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected expression ") 
(declare-const var764!2 String)
(assert (= var764!2 (str.++ var764!1 "Unexpected expression ")))
(assert true)
(define-const var3364 String (append/-1031950772 var2850 (cast-from-var516-to-var2957 var2066))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var2850!1 String)
(assert (str.prefixof var2850 var2850!1))
(assert true)
(define-const var349 String (append/672562846 var3364 " found for collection function ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" found for collection function ") 
(declare-const var3364!1 String)
(assert (= var3364!1 (str.++ var3364 " found for collection function ")))
(assert true)
(define-const var3748 String (append/672562846 var349 var2160)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var349!1 String)
(assert (= var349!1 (str.++ var349 var2160)))
(assert true)
(define-const var3063 String (toString/-2075883882 var3748)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1580113206 var306 var3063)) ; Statement: specialinvoke $r46.<antlr.SemanticException: void <init>(java.lang.String)>($r10) 

(declare-const var306!1 var1850)
(declare-const var3063!1 String)
(define-const var744 var2793 (cast-from-var1850-to-var2793 var306!1)) ; Statement: $r47 = (java.lang.Throwable) $r46 
 ; Statement: throw $r47 
(check-sat)
(get-model)
(get-unsat-core)
; {methodName/-632286265=([org.hibernate.hql.internal.ast.tree.MethodNode], java.lang.String), var314_getNormalizedPropertyName/2114108693=([java.lang.String], java.lang.String), var1850-init=([], antlr.SemanticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var516-to-var2957=([antlr.collections.AST], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1580113206=([antlr.SemanticException, java.lang.String], void), cast-from-var1850-to-var2793=([antlr.SemanticException], java.lang.Throwable)}
; {var1078=org.hibernate.hql.internal.ast.tree.MethodNode, var3840=r0, var516=antlr.collections.AST, var2066=r3, var2651=$r1, var314=org.hibernate.hql.internal.CollectionProperties, var2160=r2, var415=$z0, var1850=antlr.SemanticException, var306=$r46, var764=$r45, var2850=$r6, var2957=java.lang.Object, var3364=$r7, var349=$r8, var3748=$r9, var3063=$r10, var2793=java.lang.Throwable, var744=$r47}
; {org.hibernate.hql.internal.ast.tree.MethodNode=var1078, r0=var3840, antlr.collections.AST=var516, r3=var2066, $r1=var2651, org.hibernate.hql.internal.CollectionProperties=var314, r2=var2160, $z0=var415, antlr.SemanticException=var1850, $r46=var306, $r45=var764, $r6=var2850, java.lang.Object=var2957, $r7=var3364, $r8=var349, $r9=var3748, $r10=var3063, java.lang.Throwable=var2793, $r47=var744}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.MethodNode;	r3 := @parameter0: antlr.collections.AST;	$r1 = r0.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String methodName>;	r2 = staticinvoke <org.hibernate.hql.internal.CollectionProperties: java.lang.String getNormalizedPropertyName(java.lang.String)>($r1);	$z0 = r3 instanceof org.hibernate.hql.internal.ast.tree.FromReferenceNode;	if $z0 == 0 goto $r46 = new antlr.SemanticException;	$r46 = new antlr.SemanticException;	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected expression ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" found for collection function ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r46.<antlr.SemanticException: void <init>(java.lang.String)>($r10);	$r47 = (java.lang.Throwable) $r46;	throw $r47
;block_num 2