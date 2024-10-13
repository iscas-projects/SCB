(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3495 0)
(declare-sort var1975 0)
(declare-sort var829 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkInitialized/-275573097 (var3495) void)
(declare-fun getIdentifierPropertyNames/-2121330974 (var3495) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var829) String)
(declare-fun cast-from-String-to-var829 (String) var829)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1975_debug/-547240102 (var1975 var829) void)
(declare-const null-var3495 var3495)
(declare-const null-Int Int)
(declare-const var3495-LOG var1975)
(declare-const var3099 var3495) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.FromElementType 
(assert (not (= var3099 null-var3495)))
(declare-const var97 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var97 null-Int)))
(assert true)
;(assert (checkInitialized/-275573097 var3099)) ; Statement: specialinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElementType: void checkInitialized()>() 

(declare-const var3099!1 var3495)
(assert true)
(define-const var338 (Array Int String) (getIdentifierPropertyNames/-2121330974 var3099!1)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElementType: java.lang.String[] getIdentifierPropertyNames()>() 
(define-const var1357 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1357)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1357!1 String)
(assert (= var1357!1 ""))
(define-const var1782 Int 0) ; Statement: i4 = 0 
(define-const var1934 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var3080 Int (getLength-Arr-String-1 var338)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i5 >= $i0 goto $r4 = <org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.internal.CoreMessageLogger LOG> 
(assert (>= var1934 var3080)) ; Cond: i5 >= $i0 
(define-const var2389 var1975 var3495-LOG) ; Statement: $r4 = <org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var2163 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2163)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2163!1 String)
(assert (= var2163!1 ""))
(assert true)
(define-const var2350 String (append/672562846 var2163!1 "Rendered scalar ID select column(s): ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Rendered scalar ID select column(s): ") 
(declare-const var2163!2 String)
(assert (= var2163!2 (str.++ var2163!1 "Rendered scalar ID select column(s): ")))
(assert true)
(define-const var1142 String (append/-1031950772 var2350 (cast-from-String-to-var829 var1357!1))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2350!1 String)
(assert (str.prefixof var2350 var2350!1))
(assert true)
(define-const var3244 String (toString/-2075883882 var1142)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1975_debug/-547240102 var2389 (cast-from-String-to-var829 var3244))) ; Statement: interfaceinvoke $r4.<org.hibernate.internal.CoreMessageLogger: void debug(java.lang.Object)>($r7) 

(declare-const var2389!1 var1975)
(declare-const var3244!1 String)
(assert true)
(define-const var1495 String (toString/-2075883882 var1357!1)) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {checkInitialized/-275573097=([org.hibernate.hql.internal.ast.tree.FromElementType], void), getIdentifierPropertyNames/-2121330974=([org.hibernate.hql.internal.ast.tree.FromElementType], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-String-1=([java.lang.String[]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var829=([java.lang.StringBuilder], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1975_debug/-547240102=([org.hibernate.internal.CoreMessageLogger, java.lang.Object], void)}
; {var3495=org.hibernate.hql.internal.ast.tree.FromElementType, var3099=r0, var97=i3, var338=r1, var1357=$r2, var1782=i4, var1934=i5, var3080=$i0, var1975=org.hibernate.internal.CoreMessageLogger, var2389=$r4, var2163=$r3, var2350=$r5, var829=java.lang.Object, var1142=$r6, var3244=$r7, var1495=$r8}
; {org.hibernate.hql.internal.ast.tree.FromElementType=var3495, r0=var3099, i3=var97, r1=var338, $r2=var1357, i4=var1782, i5=var1934, $i0=var3080, org.hibernate.internal.CoreMessageLogger=var1975, $r4=var2389, $r3=var2163, $r5=var2350, java.lang.Object=var829, $r6=var1142, $r7=var3244, $r8=var1495}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.FromElementType;	i3 := @parameter0: int;	specialinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElementType: void checkInitialized()>();	r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElementType: java.lang.String[] getIdentifierPropertyNames()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	i4 = 0;	i5 = 0;	$i0 = lengthof r1;	if i5 >= $i0 goto $r4 = <org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.internal.CoreMessageLogger LOG>;	$r4 = <org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.internal.CoreMessageLogger LOG>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Rendered scalar ID select column(s): ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r4.<org.hibernate.internal.CoreMessageLogger: void debug(java.lang.Object)>($r7);	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3