(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2665 0)
(declare-sort var3230 0)
(declare-sort var2771 0)
(declare-sort var3145 0)
(declare-sort var1548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun explicitParameterInfoMap/-1218835167 (var2665) var2771)
(declare-fun var2771_values/371402559 (var2771) var3145)
(declare-fun var3145_iterator/-1617794947 (var3145) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1548-init () var1548)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1548 String) void)
(declare-const null-var2665 var2665)
(declare-const null-String String)
(declare-const var1529 var2665) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter 
(assert (not (= var1529 null-var2665)))
(declare-const var3623 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3623 null-String)))
(define-const var2219 var2771 (explicitParameterInfoMap/-1218835167 var1529)) ; Statement: $r1 = r0.<org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter: java.util.Map explicitParameterInfoMap> 
(define-const var1564 var3145 (var2771_values/371402559 var2219)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.util.Collection values()>() 
(define-const var3636 Iterator (var3145_iterator/-1617794947 var1564)) ; Statement: r3 = interfaceinvoke $r2.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3766 Bool (Iterator_hasNext/-1669924200 var3636)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.IllegalArgumentException 
(assert (= (ite var3766 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1180 var1548 var1548-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var580 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var580)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var580!1 String)
(assert (= var580!1 ""))
(assert true)
(define-const var950 String (append/672562846 var580!1 "Unable to locate parameter registered with that name [")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate parameter registered with that name [") 
(declare-const var580!2 String)
(assert (= var580!2 (str.++ var580!1 "Unable to locate parameter registered with that name [")))
(assert true)
(define-const var309 String (append/672562846 var950 var3623)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var950!1 String)
(assert (= var950!1 (str.++ var950 var3623)))
(assert true)
(define-const var3089 String (append/672562846 var309 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var309!1 String)
(assert (= var309!1 (str.++ var309 "]")))
(assert true)
(define-const var2261 String (toString/-2075883882 var3089)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1180 var2261)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var1180!1 var1548)
(declare-const var2261!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {explicitParameterInfoMap/-1218835167=([org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter], java.util.Map), var2771_values/371402559=([java.util.Map], java.util.Collection), var3145_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1548-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2665=org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter, var1529=r0, var3623=r6, var3230=null_type, var2771=java.util.Map, var2219=$r1, var3145=java.util.Collection, var1564=$r2, var3636=r3, var3766=$z0, var1548=java.lang.IllegalArgumentException, var1180=$r4, var580=$r5, var950=$r7, var309=$r8, var3089=$r9, var2261=$r10}
; {org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter=var2665, r0=var1529, r6=var3623, null_type=var3230, java.util.Map=var2771, $r1=var2219, java.util.Collection=var3145, $r2=var1564, r3=var3636, $z0=var3766, java.lang.IllegalArgumentException=var1548, $r4=var1180, $r5=var580, $r7=var950, $r8=var309, $r9=var3089, $r10=var2261}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter;	r6 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter: java.util.Map explicitParameterInfoMap>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.util.Collection values()>();	r3 = interfaceinvoke $r2.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate parameter registered with that name [");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 3