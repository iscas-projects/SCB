(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2310 0)
(declare-sort var3567 0)
(declare-sort var179 0)
(declare-sort var1655 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun queryableCollection/1518008200 (var2310) var3567)
(declare-fun var179-init () var179)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1655) String)
(declare-fun cast-from-var2310-to-var1655 (var2310) var1655)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var179 String) void)
(declare-const null-var2310 var2310)
(declare-const null-var3567 var3567)
(declare-const var421 var2310) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.FromElementType 
(assert (not (= var421 null-var2310)))
(declare-const var2084 var3567) ; Statement: r2 := @parameter0: org.hibernate.persister.collection.QueryableCollection 
(assert (not (= var2084 null-var3567)))
(define-const var367 var3567 (queryableCollection/1518008200 var421)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.persister.collection.QueryableCollection queryableCollection> 
 ; Statement: if $r1 == null goto r0.<org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.persister.collection.QueryableCollection queryableCollection> = r2 
(assert (not (= var367 null-var3567))) ; Negate: Cond: $r1 == null  
(define-const var2512 var179 var179-init) ; Statement: $r11 = new java.lang.IllegalStateException 
(define-const var744 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var744)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var744!1 String)
(assert (= var744!1 ""))
(assert true)
(define-const var2020 String (append/672562846 var744!1 "QueryableCollection is already defined for ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("QueryableCollection is already defined for ") 
(declare-const var744!2 String)
(assert (= var744!2 (str.++ var744!1 "QueryableCollection is already defined for ")))
(assert true)
(define-const var3057 String (append/-1031950772 var2020 (cast-from-var2310-to-var1655 var421))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2020!1 String)
(assert (str.prefixof var2020 var2020!1))
(assert true)
(define-const var2344 String (append/672562846 var3057 "!")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!") 
(declare-const var3057!1 String)
(assert (= var3057!1 (str.++ var3057 "!")))
(assert true)
(define-const var3048 String (toString/-2075883882 var2344)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2512 var3048)) ; Statement: specialinvoke $r11.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16) 

(declare-const var2512!1 var179)
(declare-const var3048!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {queryableCollection/1518008200=([org.hibernate.hql.internal.ast.tree.FromElementType], org.hibernate.persister.collection.QueryableCollection), var179-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2310-to-var1655=([org.hibernate.hql.internal.ast.tree.FromElementType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2310=org.hibernate.hql.internal.ast.tree.FromElementType, var421=r0, var3567=org.hibernate.persister.collection.QueryableCollection, var2084=r2, var367=$r1, var179=java.lang.IllegalStateException, var2512=$r11, var744=$r12, var2020=$r13, var1655=java.lang.Object, var3057=$r14, var2344=$r15, var3048=$r16}
; {org.hibernate.hql.internal.ast.tree.FromElementType=var2310, r0=var421, org.hibernate.persister.collection.QueryableCollection=var3567, r2=var2084, $r1=var367, java.lang.IllegalStateException=var179, $r11=var2512, $r12=var744, $r13=var2020, java.lang.Object=var1655, $r14=var3057, $r15=var2344, $r16=var3048}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.FromElementType;	r2 := @parameter0: org.hibernate.persister.collection.QueryableCollection;	$r1 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.persister.collection.QueryableCollection queryableCollection>;	if $r1 == null goto r0.<org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.persister.collection.QueryableCollection queryableCollection> = r2;	$r11 = new java.lang.IllegalStateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("QueryableCollection is already defined for ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16);	throw $r11
;block_num 2