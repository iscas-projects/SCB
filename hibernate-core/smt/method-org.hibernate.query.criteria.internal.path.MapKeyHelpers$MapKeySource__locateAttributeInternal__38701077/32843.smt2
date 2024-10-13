(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1049 0)
(declare-sort var1076 0)
(declare-sort var1360 0)
(declare-sort var1724 0)
(declare-sort var3323 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1360-init () var1360)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun mapJoin/-814705285 (var1049) var1724)
(declare-fun var3323_getPathIdentifier/-1280971676 (var3323) String)
(declare-fun cast-from-var1724-to-var3323 (var1724) var3323)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1360 String) void)
(declare-const null-var1049 var1049)
(declare-const null-String String)
(declare-const var2823 var1049) ; Statement: r2 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource 
(assert (not (= var2823 null-var1049)))
(declare-const var820 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var820 null-String)))
(define-const var769 var1360 var1360-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var1650 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1650)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1650!1 String)
(assert (= var1650!1 ""))
(assert true)
(define-const var1852 String (append/672562846 var1650!1 "Map [")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Map [") 
(declare-const var1650!2 String)
(assert (= var1650!2 (str.++ var1650!1 "Map [")))
(define-const var1096 var1724 (mapJoin/-814705285 var2823)) ; Statement: $r3 = r2.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource: org.hibernate.query.criteria.internal.MapJoinImplementor mapJoin> 
(define-const var2470 String (var3323_getPathIdentifier/-1280971676 (cast-from-var1724-to-var3323 var1096))) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.query.criteria.internal.MapJoinImplementor: java.lang.String getPathIdentifier()>() 
(assert true)
(define-const var319 String (append/672562846 var1852 var2470)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1852!1 String)
(assert (= var1852!1 (str.++ var1852 var2470)))
(assert true)
(define-const var547 String (append/672562846 var319 "] cannot be dereferenced")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be dereferenced") 
(declare-const var319!1 String)
(assert (= var319!1 (str.++ var319 "] cannot be dereferenced")))
(assert true)
(define-const var25 String (toString/-2075883882 var547)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var769 var25)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var769!1 var1360)
(declare-const var25!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1360-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), mapJoin/-814705285=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource], org.hibernate.query.criteria.internal.MapJoinImplementor), var3323_getPathIdentifier/-1280971676=([org.hibernate.query.criteria.internal.PathSource], java.lang.String), cast-from-var1724-to-var3323=([org.hibernate.query.criteria.internal.MapJoinImplementor], org.hibernate.query.criteria.internal.PathSource), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1049=org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource, var2823=r2, var820=r9, var1076=null_type, var1360=java.lang.IllegalArgumentException, var769=$r0, var1650=$r1, var1852=$r5, var1724=org.hibernate.query.criteria.internal.MapJoinImplementor, var1096=$r3, var3323=org.hibernate.query.criteria.internal.PathSource, var2470=$r4, var319=$r6, var547=$r7, var25=$r8}
; {org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource=var1049, r2=var2823, r9=var820, null_type=var1076, java.lang.IllegalArgumentException=var1360, $r0=var769, $r1=var1650, $r5=var1852, org.hibernate.query.criteria.internal.MapJoinImplementor=var1724, $r3=var1096, org.hibernate.query.criteria.internal.PathSource=var3323, $r4=var2470, $r6=var319, $r7=var547, $r8=var25}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource;	r9 := @parameter0: java.lang.String;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Map [");	$r3 = r2.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource: org.hibernate.query.criteria.internal.MapJoinImplementor mapJoin>;	$r4 = interfaceinvoke $r3.<org.hibernate.query.criteria.internal.MapJoinImplementor: java.lang.String getPathIdentifier()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be dereferenced");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r0
;block_num 1