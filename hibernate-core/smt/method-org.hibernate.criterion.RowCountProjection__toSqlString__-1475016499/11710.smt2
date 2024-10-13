(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2695 0)
(declare-sort var3811 0)
(declare-sort var808 0)
(declare-sort var206 0)
(declare-sort var413 0)
(declare-sort var2665 0)
(declare-sort var1557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getFunction/-1295092568 (var2695 var808) var206)
(declare-fun var808_getFactory/960862227 (var808) var2665)
(declare-fun var206_render/1774982098 (var206 var1557 var413 var2665) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2695 var2695)
(declare-const null-var3811 var3811)
(declare-const null-Int Int)
(declare-const null-var808 var808)
(declare-const var2695-ARGS var413)
(declare-const null-var1557 var1557)
(declare-const var2459 var2695) ; Statement: r1 := @this: org.hibernate.criterion.RowCountProjection 
(assert (not (= var2459 null-var2695)))
(declare-const var12 var3811) ; Statement: r12 := @parameter0: org.hibernate.Criteria 
(assert (not (= var12 null-var3811)))
(declare-const var3313 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3313 null-Int)))
(declare-const var2661 var808) ; Statement: r2 := @parameter2: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var2661 null-var808)))
(define-const var3585 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3585)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3585!1 String)
(assert (= var3585!1 ""))
(assert true)
(define-const var3211 var206 (getFunction/-1295092568 var2459 var2661)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.criterion.RowCountProjection: org.hibernate.dialect.function.SQLFunction getFunction(org.hibernate.criterion.CriteriaQuery)>(r2) 
(define-const var961 var413 var2695-ARGS) ; Statement: $r3 = <org.hibernate.criterion.RowCountProjection: java.util.List ARGS> 
(define-const var2474 var2665 (var808_getFactory/960862227 var2661)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3086 String (var206_render/1774982098 var3211 null-var1557 var961 var2474)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.dialect.function.SQLFunction: java.lang.String render(org.hibernate.type.Type,java.util.List,org.hibernate.engine.spi.SessionFactoryImplementor)>(null, $r3, $r4) 
(assert true)
(define-const var912 String (append/672562846 var3585!1 var3086)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3585!2 String)
(assert (= var3585!2 (str.++ var3585!1 var3086)))
(assert true)
(define-const var1069 String (append/672562846 var912 " as y")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as y") 
(declare-const var912!1 String)
(assert (= var912!1 (str.++ var912 " as y")))
(assert true)
(define-const var1051 String (append/-1001720160 var1069 var3313)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1069!1 String)
(assert (str.prefixof var1069 var1069!1))
(assert true)
(define-const var630 String (append/-1166366385 var1051 95)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(declare-const var1051!1 String)
(assert (str.prefixof var1051 var1051!1))
(assert true)
(define-const var1168 String (toString/-2075883882 var630)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getFunction/-1295092568=([org.hibernate.criterion.RowCountProjection, org.hibernate.criterion.CriteriaQuery], org.hibernate.dialect.function.SQLFunction), var808_getFactory/960862227=([org.hibernate.criterion.CriteriaQuery], org.hibernate.engine.spi.SessionFactoryImplementor), var206_render/1774982098=([org.hibernate.dialect.function.SQLFunction, org.hibernate.type.Type, java.util.List, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2695=org.hibernate.criterion.RowCountProjection, var2459=r1, var3811=org.hibernate.Criteria, var12=r12, var3313=i0, var808=org.hibernate.criterion.CriteriaQuery, var2661=r2, var3585=$r0, var206=org.hibernate.dialect.function.SQLFunction, var3211=$r5, var413=java.util.List, var961=$r3, var2665=org.hibernate.engine.spi.SessionFactoryImplementor, var2474=$r4, var1557=org.hibernate.type.Type, var3086=$r6, var912=$r7, var1069=$r8, var1051=$r9, var630=$r10, var1168=$r11}
; {org.hibernate.criterion.RowCountProjection=var2695, r1=var2459, org.hibernate.Criteria=var3811, r12=var12, i0=var3313, org.hibernate.criterion.CriteriaQuery=var808, r2=var2661, $r0=var3585, org.hibernate.dialect.function.SQLFunction=var206, $r5=var3211, java.util.List=var413, $r3=var961, org.hibernate.engine.spi.SessionFactoryImplementor=var2665, $r4=var2474, org.hibernate.type.Type=var1557, $r6=var3086, $r7=var912, $r8=var1069, $r9=var1051, $r10=var630, $r11=var1168}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.RowCountProjection;	r12 := @parameter0: org.hibernate.Criteria;	i0 := @parameter1: int;	r2 := @parameter2: org.hibernate.criterion.CriteriaQuery;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke r1.<org.hibernate.criterion.RowCountProjection: org.hibernate.dialect.function.SQLFunction getFunction(org.hibernate.criterion.CriteriaQuery)>(r2);	$r3 = <org.hibernate.criterion.RowCountProjection: java.util.List ARGS>;	$r4 = interfaceinvoke r2.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r6 = interfaceinvoke $r5.<org.hibernate.dialect.function.SQLFunction: java.lang.String render(org.hibernate.type.Type,java.util.List,org.hibernate.engine.spi.SessionFactoryImplementor)>(null, $r3, $r4);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as y");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1