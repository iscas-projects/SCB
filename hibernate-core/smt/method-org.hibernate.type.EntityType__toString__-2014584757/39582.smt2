(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2152 0)
(declare-sort var1815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1815) ClassObject)
(declare-fun cast-from-var2152-to-var1815 (var2152) var1815)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getAssociatedEntityName/1229864409 (var2152) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2152 var2152)
(declare-const var3583 var2152) ; Statement: r1 := @this: org.hibernate.type.EntityType 
(assert (not (= var3583 null-var2152)))
(define-const var3606 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3606)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3606!1 String)
(assert (= var3606!1 ""))
(assert true)
(define-const var1396 ClassObject (getClass/1258963082 (cast-from-var2152-to-var1815 var3583))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1619 String (getName/-1958580599 var1396)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3750 String (append/672562846 var3606!1 var1619)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3606!2 String)
(assert (= var3606!2 (str.++ var3606!1 var1619)))
(assert true)
(define-const var3612 String (append/-1166366385 var3750 40)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3750!1 String)
(assert (str.prefixof var3750 var3750!1))
(assert true)
(define-const var1871 String (getAssociatedEntityName/1229864409 var3583)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.type.EntityType: java.lang.String getAssociatedEntityName()>() 
(assert true)
(define-const var3017 String (append/672562846 var3612 var1871)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3612!1 String)
(assert (= var3612!1 (str.++ var3612 var1871)))
(assert true)
(define-const var1163 String (append/-1166366385 var3017 41)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3017!1 String)
(assert (str.prefixof var3017 var3017!1))
(assert true)
(define-const var3816 String (toString/-2075883882 var1163)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2152-to-var1815=([org.hibernate.type.EntityType], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getAssociatedEntityName/1229864409=([org.hibernate.type.EntityType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2152=org.hibernate.type.EntityType, var3583=r1, var3606=$r0, var1815=java.lang.Object, var1396=$r2, var1619=$r3, var3750=$r4, var3612=$r6, var1871=$r5, var3017=$r7, var1163=$r8, var3816=$r9}
; {org.hibernate.type.EntityType=var2152, r1=var3583, $r0=var3606, java.lang.Object=var1815, $r2=var1396, $r3=var1619, $r4=var3750, $r6=var3612, $r5=var1871, $r7=var3017, $r8=var1163, $r9=var3816}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.type.EntityType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = virtualinvoke r1.<org.hibernate.type.EntityType: java.lang.String getAssociatedEntityName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1