(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3198 0)
(declare-sort var2083 0)
(declare-sort var2823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDataType/-1224251918 (var3198) var2083)
(declare-fun append/-1031950772 (String var2823) String)
(declare-fun cast-from-var2083-to-var2823 (var2083) var2823)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3198 var3198)
(declare-const var778 var3198) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.BinaryArithmeticOperatorNode 
(assert (not (= var778 null-var3198)))
(define-const var2938 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2938)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2938!1 String)
(assert (= var2938!1 ""))
(assert true)
(define-const var964 String (append/672562846 var2938!1 "{dataType=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{dataType=") 
(declare-const var2938!2 String)
(assert (= var2938!2 (str.++ var2938!1 "{dataType=")))
(assert true)
(define-const var1309 var2083 (getDataType/-1224251918 var778)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.BinaryArithmeticOperatorNode: org.hibernate.type.Type getDataType()>() 
(assert true)
(define-const var863 String (append/-1031950772 var964 (cast-from-var2083-to-var2823 var1309))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var964!1 String)
(assert (str.prefixof var964 var964!1))
(assert true)
(define-const var3341 String (append/672562846 var863 "}")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var863!1 String)
(assert (= var863!1 (str.++ var863 "}")))
(assert true)
(define-const var3181 String (toString/-2075883882 var3341)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDataType/-1224251918=([org.hibernate.hql.internal.ast.tree.BinaryArithmeticOperatorNode], org.hibernate.type.Type), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2083-to-var2823=([org.hibernate.type.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3198=org.hibernate.hql.internal.ast.tree.BinaryArithmeticOperatorNode, var778=r1, var2938=$r0, var964=$r3, var2083=org.hibernate.type.Type, var1309=$r2, var2823=java.lang.Object, var863=$r4, var3341=$r5, var3181=$r6}
; {org.hibernate.hql.internal.ast.tree.BinaryArithmeticOperatorNode=var3198, r1=var778, $r0=var2938, $r3=var964, org.hibernate.type.Type=var2083, $r2=var1309, java.lang.Object=var2823, $r4=var863, $r5=var3341, $r6=var3181}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.BinaryArithmeticOperatorNode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{dataType=");	$r2 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.BinaryArithmeticOperatorNode: org.hibernate.type.Type getDataType()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1