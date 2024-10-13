(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1936 0)
(declare-sort var2679 0)
(declare-sort var2885 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getType/210539742 (var2679) Int)
(declare-fun cast-from-var1936-to-var2679 (var1936) var2679)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getOriginalText/-454903794 (var2885) String)
(declare-fun cast-from-var1936-to-var2885 (var1936) var2885)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1936 var1936)
(declare-const var2816 var1936) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.IdentNode 
(assert (not (= var2816 null-var1936)))
(define-const var2593 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2593)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2593!1 String)
(assert (= var2593!1 ""))
(assert true)
(define-const var3119 Int (getType/210539742 (cast-from-var1936-to-var2679 var2816))) ; Statement: $i0 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.IdentNode: int getType()>() 
 ; Statement: if $i0 != 148 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{originalText=") 
(assert (not (= var3119 148))) ; Cond: $i0 != 148 
(assert true)
(define-const var2053 String (append/672562846 var2593!1 "{originalText=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{originalText=") 
(declare-const var2593!2 String)
(assert (= var2593!2 (str.++ var2593!1 "{originalText=")))
(assert true)
(define-const var1417 String (getOriginalText/-454903794 (cast-from-var1936-to-var2885 var2816))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.IdentNode: java.lang.String getOriginalText()>() 
(assert true)
(define-const var2229 String (append/672562846 var2053 var1417)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2053!1 String)
(assert (= var2053!1 (str.++ var2053 var1417)))
(assert true)
;(assert (append/672562846 var2229 "}")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2229!1 String)
(assert (= var2229!1 (str.++ var2229 "}")))
(assert true) ; Non Conditional
(assert true)
(define-const var642 String (toString/-2075883882 var2593!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getType/210539742=([antlr.CommonAST], int), cast-from-var1936-to-var2679=([org.hibernate.hql.internal.ast.tree.IdentNode], antlr.CommonAST), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getOriginalText/-454903794=([org.hibernate.hql.internal.ast.tree.SqlNode], java.lang.String), cast-from-var1936-to-var2885=([org.hibernate.hql.internal.ast.tree.IdentNode], org.hibernate.hql.internal.ast.tree.SqlNode), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1936=org.hibernate.hql.internal.ast.tree.IdentNode, var2816=r1, var2593=$r0, var2679=antlr.CommonAST, var3119=$i0, var2053=$r3, var2885=org.hibernate.hql.internal.ast.tree.SqlNode, var1417=$r2, var2229=$r4, var642=$r5}
; {org.hibernate.hql.internal.ast.tree.IdentNode=var1936, r1=var2816, $r0=var2593, antlr.CommonAST=var2679, $i0=var3119, $r3=var2053, org.hibernate.hql.internal.ast.tree.SqlNode=var2885, $r2=var1417, $r4=var2229, $r5=var642}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.IdentNode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.IdentNode: int getType()>();	if $i0 != 148 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{originalText=");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{originalText=");	$r2 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.IdentNode: java.lang.String getOriginalText()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3