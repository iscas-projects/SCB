(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2307 0)
(declare-sort var3463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getReturnedClass/-1468116676 (var3463) ClassObject)
(declare-fun cast-from-var2307-to-var3463 (var2307) var3463)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getRole/-121726340 (var2307) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2307 var2307)
(declare-const var2058 var2307) ; Statement: r1 := @this: org.hibernate.type.CollectionType 
(assert (not (= var2058 null-var2307)))
(define-const var3311 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3311)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3311!1 String)
(assert (= var3311!1 ""))
(assert true)
(define-const var2973 ClassObject (getReturnedClass/-1468116676 (cast-from-var2307-to-var3463 var2058))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.type.CollectionType: java.lang.Class getReturnedClass()>() 
(assert true)
(define-const var1375 String (getName/-1958580599 var2973)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2619 String (append/672562846 var3311!1 var1375)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3311!2 String)
(assert (= var3311!2 (str.++ var3311!1 var1375)))
(assert true)
(define-const var248 String (append/-1166366385 var2619 40)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var2619!1 String)
(assert (str.prefixof var2619 var2619!1))
(assert true)
(define-const var2744 String (getRole/-121726340 var2058)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.type.CollectionType: java.lang.String getRole()>() 
(assert true)
(define-const var957 String (append/672562846 var248 var2744)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var248!1 String)
(assert (= var248!1 (str.++ var248 var2744)))
(assert true)
(define-const var1772 String (append/-1166366385 var957 41)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var957!1 String)
(assert (str.prefixof var957 var957!1))
(assert true)
(define-const var2954 String (toString/-2075883882 var1772)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getReturnedClass/-1468116676=([org.hibernate.type.Type], java.lang.Class), cast-from-var2307-to-var3463=([org.hibernate.type.CollectionType], org.hibernate.type.Type), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getRole/-121726340=([org.hibernate.type.CollectionType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2307=org.hibernate.type.CollectionType, var2058=r1, var3311=$r0, var3463=org.hibernate.type.Type, var2973=$r2, var1375=$r3, var2619=$r4, var248=$r6, var2744=$r5, var957=$r7, var1772=$r8, var2954=$r9}
; {org.hibernate.type.CollectionType=var2307, r1=var2058, $r0=var3311, org.hibernate.type.Type=var3463, $r2=var2973, $r3=var1375, $r4=var2619, $r6=var248, $r5=var2744, $r7=var957, $r8=var1772, $r9=var2954}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.type.CollectionType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.type.CollectionType: java.lang.Class getReturnedClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = virtualinvoke r1.<org.hibernate.type.CollectionType: java.lang.String getRole()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1