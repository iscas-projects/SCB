(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1240 0)
(declare-sort var3257 0)
(declare-sort var178 0)
(declare-sort var2241 0)
(declare-sort var2207 0)
(declare-sort var2728 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2241-init () var2241)
(declare-fun <init>/-201242697 (var2241) void)
(declare-fun var2207-init () var2207)
(declare-fun getLength-Arr-var3257-1 ((Array Int var3257)) Int)
(declare-fun <init>/1228603609 (var2207 Int) void)
(declare-fun var2728-init () var2728)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1240) ClassObject)
(declare-fun append/-1031950772 (String var1240) String)
(declare-fun cast-from-ClassObject-to-var1240 (ClassObject) var1240)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var2728 String) void)
(declare-const null-var1240 var1240)
(declare-const null-__Array__Int__var3257__ (Array Int var3257))
(declare-const null-var178 var178)
(declare-const var2666 var1240) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var2666 null-var1240)))
(declare-const var2732 (Array Int var3257)) ; Statement: r2 := @parameter1: org.hibernate.cfg.Ejb3JoinColumn[] 
(assert (not (= var2732 null-__Array__Int__var3257__)))
(declare-const var146 var178) ; Statement: r25 := @parameter2: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var146 null-var178)))
(define-const var3750 var2241 var2241-init) ; Statement: $r0 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3750)) ; Statement: specialinvoke $r0.<java.util.HashMap: void <init>()>() 

(declare-const var3750!1 var2241)
(define-const var1471 var2207 var2207-init) ; Statement: $r1 = new java.util.ArrayList 
(define-const var1215 Int (getLength-Arr-var3257-1 var2732)) ; Statement: $i0 = lengthof r2 
(assert true)
;(assert (<init>/1228603609 var1471 var1215)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>(int)>($i0) 

(declare-const var1471!1 var2207)
(declare-const var1215!1 Int)
(define-const var3347 Bool false) ; Statement: $z0 = r3 instanceof org.hibernate.mapping.PersistentClass 
 ; Statement: if $z0 == 0 goto $z1 = r3 instanceof org.hibernate.mapping.Join 
(assert (= (ite var3347 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2723 Bool false) ; Statement: $z1 = r3 instanceof org.hibernate.mapping.Join 
 ; Statement: if $z1 == 0 goto $r4 = new org.hibernate.AssertionFailure 
(assert (= (ite var2723 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2420 var2728 var2728-init) ; Statement: $r4 = new org.hibernate.AssertionFailure 
 ; Statement: if r3 != null goto $r5 = new java.lang.StringBuilder 
(assert (not (= var2666 null-var1240))) ; Cond: r3 != null 
(define-const var752 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var752)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var752!1 String)
(assert (= var752!1 ""))
(assert true)
(define-const var3552 String (append/672562846 var752!1 "columnOwner neither PersistentClass nor Join: ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("columnOwner neither PersistentClass nor Join: ") 
(declare-const var752!2 String)
(assert (= var752!2 (str.++ var752!1 "columnOwner neither PersistentClass nor Join: ")))
(assert true)
(define-const var884 ClassObject (getClass/1258963082 var2666)) ; Statement: $r6 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1318 String (append/-1031950772 var3552 (cast-from-ClassObject-to-var1240 var884))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3552!1 String)
(assert (str.prefixof var3552 var3552!1))
(assert true)
(define-const var2189 String (toString/-2075883882 var1318)) ; Statement: $r32 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/1590914260 var2420 var2189)) ; Statement: specialinvoke $r4.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r32) 

(declare-const var2420!1 var2728)
(declare-const var2189!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2241-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var2207-init=([], java.util.ArrayList), getLength-Arr-var3257-1=([org.hibernate.cfg.Ejb3JoinColumn[]], int), <init>/1228603609=([java.util.ArrayList, int], void), var2728-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1240=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var1240=java.lang.Object, var2666=r3, var3257=org.hibernate.cfg.Ejb3JoinColumn, var2732=r2, var178=org.hibernate.boot.spi.MetadataBuildingContext, var146=r25, var2241=java.util.HashMap, var3750=$r0, var2207=java.util.ArrayList, var1471=$r1, var1215=$i0, var3347=$z0, var2723=$z1, var2728=org.hibernate.AssertionFailure, var2420=$r4, var752=$r5, var3552=$r7, var884=$r6, var1318=$r8, var2189=$r32}
; {java.lang.Object=var1240, r3=var2666, org.hibernate.cfg.Ejb3JoinColumn=var3257, r2=var2732, org.hibernate.boot.spi.MetadataBuildingContext=var178, r25=var146, java.util.HashMap=var2241, $r0=var3750, java.util.ArrayList=var2207, $r1=var1471, $i0=var1215, $z0=var3347, $z1=var2723, org.hibernate.AssertionFailure=var2728, $r4=var2420, $r5=var752, $r7=var3552, $r6=var884, $r8=var1318, $r32=var2189}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.Object;	r2 := @parameter1: org.hibernate.cfg.Ejb3JoinColumn[];	r25 := @parameter2: org.hibernate.boot.spi.MetadataBuildingContext;	$r0 = new java.util.HashMap;	specialinvoke $r0.<java.util.HashMap: void <init>()>();	$r1 = new java.util.ArrayList;	$i0 = lengthof r2;	specialinvoke $r1.<java.util.ArrayList: void <init>(int)>($i0);	$z0 = r3 instanceof org.hibernate.mapping.PersistentClass;	if $z0 == 0 goto $z1 = r3 instanceof org.hibernate.mapping.Join;	$z1 = r3 instanceof org.hibernate.mapping.Join;	if $z1 == 0 goto $r4 = new org.hibernate.AssertionFailure;	$r4 = new org.hibernate.AssertionFailure;	if r3 != null goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("columnOwner neither PersistentClass nor Join: ");	$r6 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r32 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r32);	throw $r4
;block_num 5