(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1564 0)
(declare-sort var3738 0)
(declare-sort var2975 0)
(declare-sort var871 0)
(declare-sort var1038 0)
(declare-sort var1531 0)
(declare-sort var1845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/239726068 (var1564) var3738)
(declare-fun var3738_access$000/-2102252842 (var3738) var2975)
(declare-fun var2975_getFactory/1122061256 (var2975) var871)
(declare-fun var871_getTypeResolver/-73977883 (var871) var1038)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun heuristicType/653904078 (var1038 String) var1531)
(declare-fun var1845-init () var1845)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1845 String) void)
(declare-const null-var1564 var1564)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1531 var1531)
(declare-const var2718 var1564) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1 
(assert (not (= var2718 null-var1564)))
(declare-const var1029 ClassObject) ; Statement: r4 := @parameter0: java.lang.Class 
(assert (not (= var1029 null-ClassObject)))
(define-const var2786 var3738 (this$0/239726068 var2718)) ; Statement: $r1 = r0.<org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1: org.hibernate.query.criteria.internal.compile.CriteriaCompiler this$0> 
(define-const var1159 var2975 (var3738_access$000/-2102252842 var2786)) ; Statement: $r2 = staticinvoke <org.hibernate.query.criteria.internal.compile.CriteriaCompiler: org.hibernate.engine.spi.SharedSessionContractImplementor access$000(org.hibernate.query.criteria.internal.compile.CriteriaCompiler)>($r1) 
(define-const var72 var871 (var2975_getFactory/1122061256 var1159)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var883 var1038 (var871_getTypeResolver/-73977883 var72)) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.type.TypeResolver getTypeResolver()>() 
(assert true)
(define-const var3480 String (getName/-1958580599 var1029)) ; Statement: $r5 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var602 var1531 (heuristicType/653904078 var883 var3480)) ; Statement: r7 = virtualinvoke $r6.<org.hibernate.type.TypeResolver: org.hibernate.type.Type heuristicType(java.lang.String)>($r5) 
 ; Statement: if r7 != null goto $r8 = interfaceinvoke r7.<org.hibernate.type.Type: java.lang.String getName()>() 
(assert (not (not (= var602 null-var1531)))) ; Negate: Cond: r7 != null  
(define-const var1218 var1845 var1845-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var851 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var851)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var851!1 String)
(assert (= var851!1 ""))
(assert true)
(define-const var2363 String (append/672562846 var851!1 "Could not convert java type [")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not convert java type [") 
(declare-const var851!2 String)
(assert (= var851!2 (str.++ var851!1 "Could not convert java type [")))
(assert true)
(define-const var2051 String (getName/-1958580599 var1029)) ; Statement: $r11 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var882 String (append/672562846 var2363 var2051)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2363!1 String)
(assert (= var2363!1 (str.++ var2363 var2051)))
(assert true)
(define-const var1993 String (append/672562846 var882 "] to Hibernate type")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] to Hibernate type") 
(declare-const var882!1 String)
(assert (= var882!1 (str.++ var882 "] to Hibernate type")))
(assert true)
(define-const var1524 String (toString/-2075883882 var1993)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1218 var1524)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var1218!1 var1845)
(declare-const var1524!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/239726068=([org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1], org.hibernate.query.criteria.internal.compile.CriteriaCompiler), var3738_access$000/-2102252842=([org.hibernate.query.criteria.internal.compile.CriteriaCompiler], org.hibernate.engine.spi.SharedSessionContractImplementor), var2975_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var871_getTypeResolver/-73977883=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.type.TypeResolver), getName/-1958580599=([java.lang.Class], java.lang.String), heuristicType/653904078=([org.hibernate.type.TypeResolver, java.lang.String], org.hibernate.type.Type), var1845-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1564=org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1, var2718=r0, var1029=r4, var3738=org.hibernate.query.criteria.internal.compile.CriteriaCompiler, var2786=$r1, var2975=org.hibernate.engine.spi.SharedSessionContractImplementor, var1159=$r2, var871=org.hibernate.engine.spi.SessionFactoryImplementor, var72=r3, var1038=org.hibernate.type.TypeResolver, var883=$r6, var3480=$r5, var1531=org.hibernate.type.Type, var602=r7, var1845=java.lang.IllegalArgumentException, var1218=$r9, var851=$r10, var2363=$r12, var2051=$r11, var882=$r13, var1993=$r14, var1524=$r15}
; {org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1=var1564, r0=var2718, r4=var1029, org.hibernate.query.criteria.internal.compile.CriteriaCompiler=var3738, $r1=var2786, org.hibernate.engine.spi.SharedSessionContractImplementor=var2975, $r2=var1159, org.hibernate.engine.spi.SessionFactoryImplementor=var871, r3=var72, org.hibernate.type.TypeResolver=var1038, $r6=var883, $r5=var3480, org.hibernate.type.Type=var1531, r7=var602, java.lang.IllegalArgumentException=var1845, $r9=var1218, $r10=var851, $r12=var2363, $r11=var2051, $r13=var882, $r14=var1993, $r15=var1524}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1;	r4 := @parameter0: java.lang.Class;	$r1 = r0.<org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1: org.hibernate.query.criteria.internal.compile.CriteriaCompiler this$0>;	$r2 = staticinvoke <org.hibernate.query.criteria.internal.compile.CriteriaCompiler: org.hibernate.engine.spi.SharedSessionContractImplementor access$000(org.hibernate.query.criteria.internal.compile.CriteriaCompiler)>($r1);	r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r6 = interfaceinvoke r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.type.TypeResolver getTypeResolver()>();	$r5 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>();	r7 = virtualinvoke $r6.<org.hibernate.type.TypeResolver: org.hibernate.type.Type heuristicType(java.lang.String)>($r5);	if r7 != null goto $r8 = interfaceinvoke r7.<org.hibernate.type.Type: java.lang.String getName()>();	$r9 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not convert java type [");	$r11 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] to Hibernate type");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r9
;block_num 2