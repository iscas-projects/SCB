(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3531 0)
(declare-sort var1472 0)
(declare-sort var2451 0)
(declare-sort var1332 0)
(declare-sort var1222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1472) ClassObject)
(declare-fun cast-from-var3531-to-var1472 (var3531) var1472)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var2451_unqualify/-238008441 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun collectionRole/-1521350829 (var3531) String)
(declare-fun key/-1521350829 (var3531) var1332)
(declare-fun var1222_infoString/1203698788 (String var1332) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3531 var3531)
(declare-const var2122 var3531) ; Statement: r1 := @this: org.hibernate.action.internal.CollectionAction 
(assert (not (= var2122 null-var3531)))
(define-const var3326 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3326)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3326!1 String)
(assert (= var3326!1 ""))
(assert true)
(define-const var2598 ClassObject (getClass/1258963082 (cast-from-var3531-to-var1472 var2122))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3833 String (getName/-1958580599 var2598)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(define-const var2944 String (var2451_unqualify/-238008441 var3833)) ; Statement: $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>($r3) 
(assert true)
(define-const var988 String (append/672562846 var3326!1 var2944)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3326!2 String)
(assert (= var3326!2 (str.++ var3326!1 var2944)))
(define-const var1603 String (collectionRole/-1521350829 var2122)) ; Statement: $r6 = r1.<org.hibernate.action.internal.CollectionAction: java.lang.String collectionRole> 
(define-const var2276 var1332 (key/-1521350829 var2122)) ; Statement: $r5 = r1.<org.hibernate.action.internal.CollectionAction: java.io.Serializable key> 
(define-const var312 String (var1222_infoString/1203698788 var1603 var2276)) ; Statement: $r7 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r6, $r5) 
(assert true)
(define-const var2433 String (append/672562846 var988 var312)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var988!1 String)
(assert (= var988!1 (str.++ var988 var312)))
(assert true)
(define-const var1739 String (toString/-2075883882 var2433)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3531-to-var1472=([org.hibernate.action.internal.CollectionAction], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), var2451_unqualify/-238008441=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), collectionRole/-1521350829=([org.hibernate.action.internal.CollectionAction], java.lang.String), key/-1521350829=([org.hibernate.action.internal.CollectionAction], java.io.Serializable), var1222_infoString/1203698788=([java.lang.String, java.io.Serializable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3531=org.hibernate.action.internal.CollectionAction, var2122=r1, var3326=$r0, var1472=java.lang.Object, var2598=$r2, var3833=$r3, var2451=org.hibernate.internal.util.StringHelper, var2944=$r4, var988=$r8, var1603=$r6, var1332=java.io.Serializable, var2276=$r5, var1222=org.hibernate.pretty.MessageHelper, var312=$r7, var2433=$r9, var1739=$r10}
; {org.hibernate.action.internal.CollectionAction=var3531, r1=var2122, $r0=var3326, java.lang.Object=var1472, $r2=var2598, $r3=var3833, org.hibernate.internal.util.StringHelper=var2451, $r4=var2944, $r8=var988, $r6=var1603, java.io.Serializable=var1332, $r5=var2276, org.hibernate.pretty.MessageHelper=var1222, $r7=var312, $r9=var2433, $r10=var1739}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.action.internal.CollectionAction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>($r3);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = r1.<org.hibernate.action.internal.CollectionAction: java.lang.String collectionRole>;	$r5 = r1.<org.hibernate.action.internal.CollectionAction: java.io.Serializable key>;	$r7 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r6, $r5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1