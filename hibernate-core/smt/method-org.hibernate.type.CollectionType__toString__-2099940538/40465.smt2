(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1119 0)
(declare-sort var1769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1769) ClassObject)
(declare-fun cast-from-var1119-to-var1769 (var1119) var1769)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getRole/-121726340 (var1119) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1119 var1119)
(declare-const var2630 var1119) ; Statement: r1 := @this: org.hibernate.type.CollectionType 
(assert (not (= var2630 null-var1119)))
(define-const var1510 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1510)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1510!1 String)
(assert (= var1510!1 ""))
(assert true)
(define-const var2891 ClassObject (getClass/1258963082 (cast-from-var1119-to-var1769 var2630))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1937 String (getName/-1958580599 var2891)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3045 String (append/672562846 var1510!1 var1937)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1510!2 String)
(assert (= var1510!2 (str.++ var1510!1 var1937)))
(assert true)
(define-const var2378 String (append/-1166366385 var3045 40)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3045!1 String)
(assert (str.prefixof var3045 var3045!1))
(assert true)
(define-const var288 String (getRole/-121726340 var2630)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.type.CollectionType: java.lang.String getRole()>() 
(assert true)
(define-const var3291 String (append/672562846 var2378 var288)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2378!1 String)
(assert (= var2378!1 (str.++ var2378 var288)))
(assert true)
(define-const var1312 String (append/-1166366385 var3291 41)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3291!1 String)
(assert (str.prefixof var3291 var3291!1))
(assert true)
(define-const var3846 String (toString/-2075883882 var1312)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1119-to-var1769=([org.hibernate.type.CollectionType], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getRole/-121726340=([org.hibernate.type.CollectionType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1119=org.hibernate.type.CollectionType, var2630=r1, var1510=$r0, var1769=java.lang.Object, var2891=$r2, var1937=$r3, var3045=$r4, var2378=$r6, var288=$r5, var3291=$r7, var1312=$r8, var3846=$r9}
; {org.hibernate.type.CollectionType=var1119, r1=var2630, $r0=var1510, java.lang.Object=var1769, $r2=var2891, $r3=var1937, $r4=var3045, $r6=var2378, $r5=var288, $r7=var3291, $r8=var1312, $r9=var3846}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.type.CollectionType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = virtualinvoke r1.<org.hibernate.type.CollectionType: java.lang.String getRole()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1