(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3471 0)
(declare-sort var2715 0)
(declare-sort var1486 0)
(declare-sort var3099 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun explicitParameterInfoMap/-1218835167 (var3471) var2715)
(declare-fun var2715_values/371402559 (var2715) var1486)
(declare-fun var1486_iterator/-1617794947 (var1486) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3099-init () var3099)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3099 String) void)
(declare-const null-var3471 var3471)
(declare-const null-Int Int)
(declare-const var307 var3471) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter 
(assert (not (= var307 null-var3471)))
(declare-const var3905 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3905 null-Int)))
(define-const var3206 var2715 (explicitParameterInfoMap/-1218835167 var307)) ; Statement: $r1 = r0.<org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter: java.util.Map explicitParameterInfoMap> 
(define-const var1910 var1486 (var2715_values/371402559 var3206)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.util.Collection values()>() 
(define-const var1784 Iterator (var1486_iterator/-1617794947 var1910)) ; Statement: r3 = interfaceinvoke $r2.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2824 Bool (Iterator_hasNext/-1669924200 var1784)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.IllegalArgumentException 
(assert (= (ite var2824 1 0) 0)) ; Cond: $z0 == 0 
(define-const var16 var3099 var3099-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var2807 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2807)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2807!1 String)
(assert (= var2807!1 ""))
(assert true)
(define-const var2957 String (append/672562846 var2807!1 "Unable to locate parameter registered at position [")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate parameter registered at position [") 
(declare-const var2807!2 String)
(assert (= var2807!2 (str.++ var2807!1 "Unable to locate parameter registered at position [")))
(assert true)
(define-const var2741 String (append/-1001720160 var2957 var3905)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2957!1 String)
(assert (str.prefixof var2957 var2957!1))
(assert true)
(define-const var3299 String (append/672562846 var2741 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2741!1 String)
(assert (= var2741!1 (str.++ var2741 "]")))
(assert true)
(define-const var3963 String (toString/-2075883882 var3299)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var16 var3963)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var16!1 var3099)
(declare-const var3963!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {explicitParameterInfoMap/-1218835167=([org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter], java.util.Map), var2715_values/371402559=([java.util.Map], java.util.Collection), var1486_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3099-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3471=org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter, var307=r0, var3905=i0, var2715=java.util.Map, var3206=$r1, var1486=java.util.Collection, var1910=$r2, var1784=r3, var2824=$z0, var3099=java.lang.IllegalArgumentException, var16=$r4, var2807=$r5, var2957=$r6, var2741=$r7, var3299=$r8, var3963=$r9}
; {org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter=var3471, r0=var307, i0=var3905, java.util.Map=var2715, $r1=var3206, java.util.Collection=var1486, $r2=var1910, r3=var1784, $z0=var2824, java.lang.IllegalArgumentException=var3099, $r4=var16, $r5=var2807, $r6=var2957, $r7=var2741, $r8=var3299, $r9=var3963}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter;	i0 := @parameter0: int;	$r1 = r0.<org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter: java.util.Map explicitParameterInfoMap>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.util.Collection values()>();	r3 = interfaceinvoke $r2.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate parameter registered at position [");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 3