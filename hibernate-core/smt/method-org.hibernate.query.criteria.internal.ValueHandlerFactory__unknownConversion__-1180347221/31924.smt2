(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var657 0)
(declare-sort var2044 0)
(declare-sort var1883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2044-init () var2044)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var657) String)
(declare-fun var1883_typeName/1067204317 (var657) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2044 String) void)
(declare-const null-var657 var657)
(declare-const null-ClassObject ClassObject)
(declare-const var477 var657) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var477 null-var657)))
(declare-const var1886 ClassObject) ; Statement: r8 := @parameter1: java.lang.Class 
(assert (not (= var1886 null-ClassObject)))
(define-const var2807 var2044 var2044-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var889 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var889)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var889!1 String)
(assert (= var889!1 ""))
(assert true)
(define-const var3120 String (append/672562846 var889!1 "Unaware how to convert value [")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unaware how to convert value [") 
(declare-const var889!2 String)
(assert (= var889!2 (str.++ var889!1 "Unaware how to convert value [")))
(assert true)
(define-const var471 String (append/-1031950772 var3120 var477)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3120!1 String)
(assert (str.prefixof var3120 var3120!1))
(assert true)
(define-const var1545 String (append/672562846 var471 " : ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ") 
(declare-const var471!1 String)
(assert (= var471!1 (str.++ var471 " : ")))
(define-const var2525 String (var1883_typeName/1067204317 var477)) ; Statement: $r5 = staticinvoke <org.hibernate.query.criteria.internal.ValueHandlerFactory: java.lang.String typeName(java.lang.Object)>(r2) 
(assert true)
(define-const var3109 String (append/672562846 var1545 var2525)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1545!1 String)
(assert (= var1545!1 (str.++ var1545 var2525)))
(assert true)
(define-const var2362 String (append/672562846 var3109 "] to requested type [")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] to requested type [") 
(declare-const var3109!1 String)
(assert (= var3109!1 (str.++ var3109 "] to requested type [")))
(assert true)
(define-const var2642 String (getName/-1958580599 var1886)) ; Statement: $r9 = virtualinvoke r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3377 String (append/672562846 var2362 var2642)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2362!1 String)
(assert (= var2362!1 (str.++ var2362 var2642)))
(assert true)
(define-const var1266 String (append/672562846 var3377 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3377!1 String)
(assert (= var3377!1 (str.++ var3377 "]")))
(assert true)
(define-const var3216 String (toString/-2075883882 var1266)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2807 var3216)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var2807!1 var2044)
(declare-const var3216!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2044-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), var1883_typeName/1067204317=([java.lang.Object], java.lang.String), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var657=java.lang.Object, var477=r2, var1886=r8, var2044=java.lang.IllegalArgumentException, var2807=$r0, var889=$r1, var3120=$r3, var471=$r4, var1545=$r6, var1883=org.hibernate.query.criteria.internal.ValueHandlerFactory, var2525=$r5, var3109=$r7, var2362=$r10, var2642=$r9, var3377=$r11, var1266=$r12, var3216=$r13}
; {java.lang.Object=var657, r2=var477, r8=var1886, java.lang.IllegalArgumentException=var2044, $r0=var2807, $r1=var889, $r3=var3120, $r4=var471, $r6=var1545, org.hibernate.query.criteria.internal.ValueHandlerFactory=var1883, $r5=var2525, $r7=var3109, $r10=var2362, $r9=var2642, $r11=var3377, $r12=var1266, $r13=var3216}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Object;	r8 := @parameter1: java.lang.Class;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unaware how to convert value [");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ");	$r5 = staticinvoke <org.hibernate.query.criteria.internal.ValueHandlerFactory: java.lang.String typeName(java.lang.Object)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] to requested type [");	$r9 = virtualinvoke r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	return $r0
;block_num 1