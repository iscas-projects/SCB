(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var123 0)
(declare-sort var1705 0)
(declare-sort var2053 0)
(declare-sort var2989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1876306238 (var123) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun properties/-1876306238 (var123) (Array Int var1705))
(declare-fun var2053_toString/850831938 ((Array Int var2989)) String)
(declare-fun cast-from-__Array__Int__var1705__-to-__Array__Int__var2989__ ((Array Int var1705)) (Array Int var2989))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var123 var123)
(declare-const var3182 var123) ; Statement: r1 := @this: org.hibernate.tuple.entity.EntityMetamodel 
(assert (not (= var3182 null-var123)))
(define-const var1214 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1214)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1214!1 String)
(assert (= var1214!1 ""))
(assert true)
(define-const var998 String (append/672562846 var1214!1 "EntityMetamodel(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EntityMetamodel(") 
(declare-const var1214!2 String)
(assert (= var1214!2 (str.++ var1214!1 "EntityMetamodel(")))
(define-const var3100 String (name/-1876306238 var3182)) ; Statement: $r2 = r1.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.String name> 
(assert true)
(define-const var3422 String (append/672562846 var998 var3100)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var998!1 String)
(assert (= var998!1 (str.++ var998 var3100)))
(assert true)
(define-const var2616 String (append/-1166366385 var3422 58)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var3422!1 String)
(assert (str.prefixof var3422 var3422!1))
(define-const var1375 (Array Int var1705) (properties/-1876306238 var3182)) ; Statement: $r5 = r1.<org.hibernate.tuple.entity.EntityMetamodel: org.hibernate.tuple.NonIdentifierAttribute[] properties> 
(define-const var2810 String (var2053_toString/850831938 (cast-from-__Array__Int__var1705__-to-__Array__Int__var2989__ var1375))) ; Statement: $r6 = staticinvoke <org.hibernate.internal.util.collections.ArrayHelper: java.lang.String toString(java.lang.Object[])>($r5) 
(assert true)
(define-const var248 String (append/672562846 var2616 var2810)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2616!1 String)
(assert (= var2616!1 (str.++ var2616 var2810)))
(assert true)
(define-const var212 String (append/-1166366385 var248 41)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var248!1 String)
(assert (str.prefixof var248 var248!1))
(assert true)
(define-const var1207 String (toString/-2075883882 var212)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1876306238=([org.hibernate.tuple.entity.EntityMetamodel], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), properties/-1876306238=([org.hibernate.tuple.entity.EntityMetamodel], org.hibernate.tuple.NonIdentifierAttribute[]), var2053_toString/850831938=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var1705__-to-__Array__Int__var2989__=([org.hibernate.tuple.NonIdentifierAttribute[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var123=org.hibernate.tuple.entity.EntityMetamodel, var3182=r1, var1214=$r0, var998=$r3, var3100=$r2, var3422=$r4, var2616=$r7, var1705=org.hibernate.tuple.NonIdentifierAttribute, var1375=$r5, var2053=org.hibernate.internal.util.collections.ArrayHelper, var2989=java.lang.Object, var2810=$r6, var248=$r8, var212=$r9, var1207=$r10}
; {org.hibernate.tuple.entity.EntityMetamodel=var123, r1=var3182, $r0=var1214, $r3=var998, $r2=var3100, $r4=var3422, $r7=var2616, org.hibernate.tuple.NonIdentifierAttribute=var1705, $r5=var1375, org.hibernate.internal.util.collections.ArrayHelper=var2053, java.lang.Object=var2989, $r6=var2810, $r8=var248, $r9=var212, $r10=var1207}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<org.hibernate.internal.util.collections.ArrayHelper: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tuple.entity.EntityMetamodel;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EntityMetamodel(");	$r2 = r1.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.hibernate.tuple.entity.EntityMetamodel: org.hibernate.tuple.NonIdentifierAttribute[] properties>;	$r6 = staticinvoke <org.hibernate.internal.util.collections.ArrayHelper: java.lang.String toString(java.lang.Object[])>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1