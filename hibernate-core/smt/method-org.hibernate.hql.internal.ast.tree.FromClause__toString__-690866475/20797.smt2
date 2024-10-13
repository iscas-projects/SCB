(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun level/1782915837 (var184) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var184 var184)
(declare-const var2084 var184) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.FromClause 
(assert (not (= var2084 null-var184)))
(define-const var2934 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2934)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2934!1 String)
(assert (= var2934!1 ""))
(assert true)
(define-const var1903 String (append/672562846 var2934!1 "FromClause{level=")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FromClause{level=") 
(declare-const var2934!2 String)
(assert (= var2934!2 (str.++ var2934!1 "FromClause{level=")))
(define-const var1882 Int (level/1782915837 var2084)) ; Statement: $i0 = r1.<org.hibernate.hql.internal.ast.tree.FromClause: int level> 
(assert true)
(define-const var3925 String (append/-1001720160 var1903 var1882)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1903!1 String)
(assert (str.prefixof var1903 var1903!1))
(assert true)
(define-const var1593 String (append/672562846 var3925 "}")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3925!1 String)
(assert (= var3925!1 (str.++ var3925 "}")))
(assert true)
(define-const var1867 String (toString/-2075883882 var1593)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), level/1782915837=([org.hibernate.hql.internal.ast.tree.FromClause], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var184=org.hibernate.hql.internal.ast.tree.FromClause, var2084=r1, var2934=$r0, var1903=$r2, var1882=$i0, var3925=$r3, var1593=$r4, var1867=$r5}
; {org.hibernate.hql.internal.ast.tree.FromClause=var184, r1=var2084, $r0=var2934, $r2=var1903, $i0=var1882, $r3=var3925, $r4=var1593, $r5=var1867}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.FromClause;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FromClause{level=");	$i0 = r1.<org.hibernate.hql.internal.ast.tree.FromClause: int level>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1