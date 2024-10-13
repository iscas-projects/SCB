(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var292 0)
(declare-sort var1368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun parameterSpecification/718645639 (var292) var1368)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var292 var292)
(declare-const null-var1368 var1368)
(declare-const var3000 var292) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.ParameterNode 
(assert (not (= var3000 null-var292)))
(define-const var398 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var398)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var398!1 String)
(assert (= var398!1 ""))
(assert true)
(define-const var3239 String (append/672562846 var398!1 "{")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var398!2 String)
(assert (= var398!2 (str.++ var398!1 "{")))
(define-const var275 var1368 (parameterSpecification/718645639 var3000)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.ast.tree.ParameterNode: org.hibernate.param.ParameterSpecification parameterSpecification> 
 ; Statement: if $r2 != null goto $r3 = r1.<org.hibernate.hql.internal.ast.tree.ParameterNode: org.hibernate.param.ParameterSpecification parameterSpecification> 
(assert (not (not (= var275 null-var1368)))) ; Negate: Cond: $r2 != null  
(define-const var3210 String "???") ; Statement: $r8 = "???" 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
(define-const var817 String (append/672562846 var3239 var3210)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3239!1 String)
(assert (= var3239!1 (str.++ var3239 var3210)))
(assert true)
(define-const var1644 String (append/672562846 var817 "}")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var817!1 String)
(assert (= var817!1 (str.++ var817 "}")))
(assert true)
(define-const var761 String (toString/-2075883882 var1644)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), parameterSpecification/718645639=([org.hibernate.hql.internal.ast.tree.ParameterNode], org.hibernate.param.ParameterSpecification), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var292=org.hibernate.hql.internal.ast.tree.ParameterNode, var3000=r1, var398=$r0, var3239=$r4, var1368=org.hibernate.param.ParameterSpecification, var275=$r2, var3210=$r8, var817=$r5, var1644=$r6, var761=$r7}
; {org.hibernate.hql.internal.ast.tree.ParameterNode=var292, r1=var3000, $r0=var398, $r4=var3239, org.hibernate.param.ParameterSpecification=var1368, $r2=var275, $r8=var3210, $r5=var817, $r6=var1644, $r7=var761}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.ParameterNode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r2 = r1.<org.hibernate.hql.internal.ast.tree.ParameterNode: org.hibernate.param.ParameterSpecification parameterSpecification>;	if $r2 != null goto $r3 = r1.<org.hibernate.hql.internal.ast.tree.ParameterNode: org.hibernate.param.ParameterSpecification parameterSpecification>;	$r8 = "???";	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3