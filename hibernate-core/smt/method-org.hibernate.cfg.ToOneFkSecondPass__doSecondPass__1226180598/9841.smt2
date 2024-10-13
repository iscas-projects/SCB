(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2858 0)
(declare-sort var3167 0)
(declare-sort var1039 0)
(declare-sort var1122 0)
(declare-sort var1888 0)
(declare-sort var1608 0)
(declare-sort var1927 0)
(declare-sort var1490 0)
(declare-sort var3179 0)
(declare-sort var542 0)
(declare-sort var3125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-1793336806 (var1122) var1039)
(declare-fun cast-from-var2858-to-var1122 (var2858) var1122)
(declare-fun cast-from-var1039-to-var1888 (var1039) var1888)
(declare-fun getReferencedEntityName/448027244 (var1608) String)
(declare-fun cast-from-var1888-to-var1608 (var1888) var1608)
(declare-fun var3167_get/1088891777 (var3167 var1927) var1927)
(declare-fun cast-from-String-to-var1927 (String) var1927)
(declare-fun cast-from-var1927-to-var1490 (var1927) var1490)
(declare-fun var3179-init () var3179)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityClassName/-697059323 (var2858) String)
(declare-fun path/-697059323 (var2858) String)
(declare-fun var542_qualify/-1563731603 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var3179 String) void)
(declare-fun cast-from-var3179-to-var3125 (var3179) var3125)
(declare-const null-var2858 var2858)
(declare-const null-var3167 var3167)
(declare-const null-var1490 var1490)
(declare-const var1865 var2858) ; Statement: r0 := @this: org.hibernate.cfg.ToOneFkSecondPass 
(assert (not (= var1865 null-var2858)))
(declare-const var3347 var3167) ; Statement: r14 := @parameter0: java.util.Map 
(assert (not (= var3347 null-var3167)))
(define-const var556 var1039 (value/-1793336806 (cast-from-var2858-to-var1122 var1865))) ; Statement: $r1 = r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.mapping.SimpleValue value> 
(define-const var2514 Bool false) ; Statement: $z0 = $r1 instanceof org.hibernate.mapping.ManyToOne 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.mapping.SimpleValue value> 
(assert (not (= (ite var2514 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2286 var1039 (value/-1793336806 (cast-from-var2858-to-var1122 var1865))) ; Statement: $r12 = r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.mapping.SimpleValue value> 
(define-const var3215 var1888 (cast-from-var1039-to-var1888 var2286)) ; Statement: r13 = (org.hibernate.mapping.ManyToOne) $r12 
(assert true)
(define-const var3495 String (getReferencedEntityName/448027244 (cast-from-var1888-to-var1608 var3215))) ; Statement: $r15 = virtualinvoke r13.<org.hibernate.mapping.ManyToOne: java.lang.String getReferencedEntityName()>() 
(define-const var3695 var1927 (var3167_get/1088891777 var3347 (cast-from-String-to-var1927 var3495))) ; Statement: $r16 = interfaceinvoke r14.<java.util.Map: java.lang.Object get(java.lang.Object)>($r15) 
(define-const var2092 var1490 (cast-from-var1927-to-var1490 var3695)) ; Statement: r17 = (org.hibernate.mapping.PersistentClass) $r16 
 ; Statement: if r17 != null goto $r18 = r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String path> 
(assert (not (not (= var2092 null-var1490)))) ; Negate: Cond: r17 != null  
(define-const var2009 var3179 var3179-init) ; Statement: $r36 = new org.hibernate.AnnotationException 
(define-const var684 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var684)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var684!1 String)
(assert (= var684!1 ""))
(assert true)
(define-const var1769 String (append/672562846 var684!1 "@OneToOne or @ManyToOne on ")) ; Statement: $r29 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@OneToOne or @ManyToOne on ") 
(declare-const var684!2 String)
(assert (= var684!2 (str.++ var684!1 "@OneToOne or @ManyToOne on ")))
(define-const var2335 String (entityClassName/-697059323 var1865)) ; Statement: $r27 = r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String entityClassName> 
(define-const var1728 String (path/-697059323 var1865)) ; Statement: $r26 = r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String path> 
(define-const var1090 String (var542_qualify/-1563731603 var2335 var1728)) ; Statement: $r28 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r27, $r26) 
(assert true)
(define-const var1400 String (append/672562846 var1769 var1090)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var1769!1 String)
(assert (= var1769!1 (str.++ var1769 var1090)))
(assert true)
(define-const var759 String (append/672562846 var1400 " references an unknown entity: ")) ; Statement: $r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" references an unknown entity: ") 
(declare-const var1400!1 String)
(assert (= var1400!1 (str.++ var1400 " references an unknown entity: ")))
(assert true)
(define-const var3670 String (getReferencedEntityName/448027244 (cast-from-var1888-to-var1608 var3215))) ; Statement: $r31 = virtualinvoke r13.<org.hibernate.mapping.ManyToOne: java.lang.String getReferencedEntityName()>() 
(assert true)
(define-const var36 String (append/672562846 var759 var3670)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31) 
(declare-const var759!1 String)
(assert (= var759!1 (str.++ var759 var3670)))
(assert true)
(define-const var3911 String (toString/-2075883882 var36)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var2009 var3911)) ; Statement: specialinvoke $r36.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r34) 

(declare-const var2009!1 var3179)
(declare-const var3911!1 String)
(define-const var2802 var3125 (cast-from-var3179-to-var3125 var2009!1)) ; Statement: $r39 = (java.lang.Throwable) $r36 
 ; Statement: throw $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-1793336806=([org.hibernate.cfg.FkSecondPass], org.hibernate.mapping.SimpleValue), cast-from-var2858-to-var1122=([org.hibernate.cfg.ToOneFkSecondPass], org.hibernate.cfg.FkSecondPass), cast-from-var1039-to-var1888=([org.hibernate.mapping.SimpleValue], org.hibernate.mapping.ManyToOne), getReferencedEntityName/448027244=([org.hibernate.mapping.ToOne], java.lang.String), cast-from-var1888-to-var1608=([org.hibernate.mapping.ManyToOne], org.hibernate.mapping.ToOne), var3167_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1927=([java.lang.String], java.lang.Object), cast-from-var1927-to-var1490=([java.lang.Object], org.hibernate.mapping.PersistentClass), var3179-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityClassName/-697059323=([org.hibernate.cfg.ToOneFkSecondPass], java.lang.String), path/-697059323=([org.hibernate.cfg.ToOneFkSecondPass], java.lang.String), var542_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var3179-to-var3125=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var2858=org.hibernate.cfg.ToOneFkSecondPass, var1865=r0, var3167=java.util.Map, var3347=r14, var1039=org.hibernate.mapping.SimpleValue, var1122=org.hibernate.cfg.FkSecondPass, var556=$r1, var2514=$z0, var2286=$r12, var1888=org.hibernate.mapping.ManyToOne, var3215=r13, var1608=org.hibernate.mapping.ToOne, var3495=$r15, var1927=java.lang.Object, var3695=$r16, var1490=org.hibernate.mapping.PersistentClass, var2092=r17, var3179=org.hibernate.AnnotationException, var2009=$r36, var684=$r35, var1769=$r29, var2335=$r27, var1728=$r26, var542=org.hibernate.internal.util.StringHelper, var1090=$r28, var1400=$r30, var759=$r32, var3670=$r31, var36=$r33, var3911=$r34, var3125=java.lang.Throwable, var2802=$r39}
; {org.hibernate.cfg.ToOneFkSecondPass=var2858, r0=var1865, java.util.Map=var3167, r14=var3347, org.hibernate.mapping.SimpleValue=var1039, org.hibernate.cfg.FkSecondPass=var1122, $r1=var556, $z0=var2514, $r12=var2286, org.hibernate.mapping.ManyToOne=var1888, r13=var3215, org.hibernate.mapping.ToOne=var1608, $r15=var3495, java.lang.Object=var1927, $r16=var3695, org.hibernate.mapping.PersistentClass=var1490, r17=var2092, org.hibernate.AnnotationException=var3179, $r36=var2009, $r35=var684, $r29=var1769, $r27=var2335, $r26=var1728, org.hibernate.internal.util.StringHelper=var542, $r28=var1090, $r30=var1400, $r32=var759, $r31=var3670, $r33=var36, $r34=var3911, java.lang.Throwable=var3125, $r39=var2802}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.ToOneFkSecondPass;	r14 := @parameter0: java.util.Map;	$r1 = r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.mapping.SimpleValue value>;	$z0 = $r1 instanceof org.hibernate.mapping.ManyToOne;	if $z0 == 0 goto $r2 = r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.mapping.SimpleValue value>;	$r12 = r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.mapping.SimpleValue value>;	r13 = (org.hibernate.mapping.ManyToOne) $r12;	$r15 = virtualinvoke r13.<org.hibernate.mapping.ManyToOne: java.lang.String getReferencedEntityName()>();	$r16 = interfaceinvoke r14.<java.util.Map: java.lang.Object get(java.lang.Object)>($r15);	r17 = (org.hibernate.mapping.PersistentClass) $r16;	if r17 != null goto $r18 = r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String path>;	$r36 = new org.hibernate.AnnotationException;	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@OneToOne or @ManyToOne on ");	$r27 = r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String entityClassName>;	$r26 = r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String path>;	$r28 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r27, $r26);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" references an unknown entity: ");	$r31 = virtualinvoke r13.<org.hibernate.mapping.ManyToOne: java.lang.String getReferencedEntityName()>();	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r36.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r34);	$r39 = (java.lang.Throwable) $r36;	throw $r39
;block_num 3