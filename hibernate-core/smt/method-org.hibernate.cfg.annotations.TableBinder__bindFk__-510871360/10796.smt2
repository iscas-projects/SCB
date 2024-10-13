(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1981 0)
(declare-sort var1392 0)
(declare-sort var1117 0)
(declare-sort var3774 0)
(declare-sort var2562 0)
(declare-sort var2785 0)
(declare-sort var519 0)
(declare-sort var2921 0)
(declare-sort var397 0)
(declare-sort var1560 0)
(declare-sort var1658 0)
(declare-sort var47 0)
(declare-sort var700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMappedBy/727483696 (var1392) String)
(declare-fun var2562_isNotEmpty/-74719548 (String) Bool)
(declare-fun getEntityName/-2043384209 (var1981) String)
(declare-fun var2785_debugf/1063386898 (var2785 String var2921 var2921) void)
(declare-fun cast-from-String-to-var2921 (String) var2921)
(declare-fun getRecursiveProperty/573603697 (var1981 String) var397)
(declare-fun getValue/1709201904 (var397) var1560)
(declare-fun cast-from-var1560-to-var1658 (var1560) var1658)
(declare-fun getElement/1419751324 (var1658) var1560)
(declare-fun var47-init () var47)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var47 String) void)
(declare-fun cast-from-var47-to-var700 (var47) var700)
(declare-const null-var1981 var1981)
(declare-const null-__Array__Int__var1392__ (Array Int var1392))
(declare-const null-var1117 var1117)
(declare-const null-Bool Bool)
(declare-const null-var3774 var3774)
(declare-const var519-LOG var2785)
(declare-const null-var1560 var1560)
(declare-const var607 var1981) ; Statement: r7 := @parameter0: org.hibernate.mapping.PersistentClass 
(assert (not (= var607 null-var1981)))
(declare-const var3119 var1981) ; Statement: r0 := @parameter1: org.hibernate.mapping.PersistentClass 
(assert (not (= var3119 null-var1981)))
(declare-const var306 (Array Int var1392)) ; Statement: r1 := @parameter2: org.hibernate.cfg.Ejb3JoinColumn[] 
(assert (not (= var306 null-__Array__Int__var1392__)))
(declare-const var890 var1117) ; Statement: r10 := @parameter3: org.hibernate.mapping.SimpleValue 
(assert (not (= var890 null-var1117)))
(declare-const var2333 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2333 null-Bool)))
(declare-const var809 var3774) ; Statement: r8 := @parameter5: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var809 null-var3774)))
 ; Statement: if r0 == null goto $r2 = r1[0] 
(assert (not (= var3119 null-var1981))) ; Negate: Cond: r0 == null  
(define-const var247 var1981 var3119) ; Statement: r90 = r0 
 ; Statement: goto [?= $r92 = r1[0]] 
(assert true) ; Non Conditional
(define-const var3518 var1392 (select var306 0)) ; Statement: $r92 = r1[0] 
(assert true)
(define-const var2052 String (getMappedBy/727483696 var3518)) ; Statement: $r93 = virtualinvoke $r92.<org.hibernate.cfg.Ejb3JoinColumn: java.lang.String getMappedBy()>() 
(define-const var3664 Bool (var2562_isNotEmpty/-74719548 var2052)) ; Statement: $z9 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r93) 
 ; Statement: if $z9 == 0 goto $r6 = r1[0] 
(assert (not (= (ite var3664 1 0) 0))) ; Negate: Cond: $z9 == 0  
(define-const var272 var2785 var519-LOG) ; Statement: $r72 = <org.hibernate.cfg.annotations.TableBinder: org.hibernate.internal.CoreMessageLogger LOG> 
(assert true)
(define-const var1227 String (getEntityName/-2043384209 var247)) ; Statement: $r73 = virtualinvoke r90.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
;(assert (var2785_debugf/1063386898 var272 "Retrieving property %s.%s" (cast-from-String-to-var2921 var1227) (cast-from-String-to-var2921 var2052))) ; Statement: interfaceinvoke $r72.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("Retrieving property %s.%s", $r73, $r93) 

(declare-const var272!1 var2785)
(declare-const var3627 String)
(declare-const var1227!1 String)
(declare-const var2052!1 String)
(define-const var2133 var1392 (select var306 0)) ; Statement: $r74 = r1[0] 
(assert true)
(define-const var364 String (getMappedBy/727483696 var2133)) ; Statement: $r75 = virtualinvoke $r74.<org.hibernate.cfg.Ejb3JoinColumn: java.lang.String getMappedBy()>() 
(assert true)
(define-const var3679 var397 (getRecursiveProperty/573603697 var247 var364)) ; Statement: r94 = virtualinvoke r90.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Property getRecursiveProperty(java.lang.String)>($r75) 
(assert true)
(define-const var3864 var1560 (getValue/1709201904 var3679)) ; Statement: $r76 = virtualinvoke r94.<org.hibernate.mapping.Property: org.hibernate.mapping.Value getValue()>() 
(define-const var2034 Bool true) ; Statement: $z8 = $r76 instanceof org.hibernate.mapping.Collection 
 ; Statement: if $z8 == 0 goto $r77 = virtualinvoke r94.<org.hibernate.mapping.Property: org.hibernate.mapping.Value getValue()>() 
(assert (not (= (ite var2034 1 0) 0))) ; Negate: Cond: $z8 == 0  
(assert true)
(define-const var3659 var1560 (getValue/1709201904 var3679)) ; Statement: $r81 = virtualinvoke r94.<org.hibernate.mapping.Property: org.hibernate.mapping.Value getValue()>() 
(define-const var2466 var1658 (cast-from-var1560-to-var1658 var3659)) ; Statement: r95 = (org.hibernate.mapping.Collection) $r81 
(assert true)
(define-const var2635 var1560 (getElement/1419751324 var2466)) ; Statement: r96 = virtualinvoke r95.<org.hibernate.mapping.Collection: org.hibernate.mapping.Value getElement()>() 
 ; Statement: if r96 != null goto r97 = interfaceinvoke r96.<org.hibernate.mapping.Value: java.util.Iterator getColumnIterator()>() 
(assert (not (not (= var2635 null-var1560)))) ; Negate: Cond: r96 != null  
(define-const var2636 var47 var47-init) ; Statement: $r111 = new org.hibernate.AnnotationException 
(define-const var2166 String String-init) ; Statement: $r110 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2166)) ; Statement: specialinvoke $r110.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2166!1 String)
(assert (= var2166!1 ""))
(assert true)
(define-const var3141 String (append/672562846 var2166!1 "Illegal use of mappedBy on both sides of the relationship: ")) ; Statement: $r85 = virtualinvoke $r110.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal use of mappedBy on both sides of the relationship: ") 
(declare-const var2166!2 String)
(assert (= var2166!2 (str.++ var2166!1 "Illegal use of mappedBy on both sides of the relationship: ")))
(assert true)
(define-const var3053 String (getEntityName/-2043384209 var247)) ; Statement: $r84 = virtualinvoke r90.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
(assert true)
(define-const var199 String (append/672562846 var3141 var3053)) ; Statement: $r86 = virtualinvoke $r85.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r84) 
(declare-const var3141!1 String)
(assert (= var3141!1 (str.++ var3141 var3053)))
(assert true)
(define-const var471 String (append/672562846 var199 ".")) ; Statement: $r87 = virtualinvoke $r86.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var199!1 String)
(assert (= var199!1 (str.++ var199 ".")))
(assert true)
(define-const var592 String (append/672562846 var471 var2052!1)) ; Statement: $r88 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r93) 
(declare-const var471!1 String)
(assert (= var471!1 (str.++ var471 var2052!1)))
(assert true)
(define-const var1296 String (toString/-2075883882 var592)) ; Statement: $r89 = virtualinvoke $r88.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var2636 var1296)) ; Statement: specialinvoke $r111.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r89) 

(declare-const var2636!1 var47)
(declare-const var1296!1 String)
(define-const var3970 var700 (cast-from-var47-to-var700 var2636!1)) ; Statement: $r122 = (java.lang.Throwable) $r111 
 ; Statement: throw $r122 
(check-sat)
(get-model)
(get-unsat-core)
; {getMappedBy/727483696=([org.hibernate.cfg.Ejb3JoinColumn], java.lang.String), var2562_isNotEmpty/-74719548=([java.lang.String], boolean), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), var2785_debugf/1063386898=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-String-to-var2921=([java.lang.String], java.lang.Object), getRecursiveProperty/573603697=([org.hibernate.mapping.PersistentClass, java.lang.String], org.hibernate.mapping.Property), getValue/1709201904=([org.hibernate.mapping.Property], org.hibernate.mapping.Value), cast-from-var1560-to-var1658=([org.hibernate.mapping.Value], org.hibernate.mapping.Collection), getElement/1419751324=([org.hibernate.mapping.Collection], org.hibernate.mapping.Value), var47-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var47-to-var700=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var1981=org.hibernate.mapping.PersistentClass, var607=r7, var3119=r0, var1392=org.hibernate.cfg.Ejb3JoinColumn, var306=r1, var1117=org.hibernate.mapping.SimpleValue, var890=r10, var2333=z2, var3774=org.hibernate.boot.spi.MetadataBuildingContext, var809=r8, var247=r90, var3518=$r92, var2052=$r93, var2562=org.hibernate.internal.util.StringHelper, var3664=$z9, var2785=org.hibernate.internal.CoreMessageLogger, var519=org.hibernate.cfg.annotations.TableBinder, var272=$r72, var1227=$r73, var2921=java.lang.Object, var3627="Retrieving property %s.%s", var2133=$r74, var364=$r75, var397=org.hibernate.mapping.Property, var3679=r94, var1560=org.hibernate.mapping.Value, var3864=$r76, var2034=$z8, var3659=$r81, var1658=org.hibernate.mapping.Collection, var2466=r95, var2635=r96, var47=org.hibernate.AnnotationException, var2636=$r111, var2166=$r110, var3141=$r85, var3053=$r84, var199=$r86, var471=$r87, var592=$r88, var1296=$r89, var700=java.lang.Throwable, var3970=$r122}
; {org.hibernate.mapping.PersistentClass=var1981, r7=var607, r0=var3119, org.hibernate.cfg.Ejb3JoinColumn=var1392, r1=var306, org.hibernate.mapping.SimpleValue=var1117, r10=var890, z2=var2333, org.hibernate.boot.spi.MetadataBuildingContext=var3774, r8=var809, r90=var247, $r92=var3518, $r93=var2052, org.hibernate.internal.util.StringHelper=var2562, $z9=var3664, org.hibernate.internal.CoreMessageLogger=var2785, org.hibernate.cfg.annotations.TableBinder=var519, $r72=var272, $r73=var1227, java.lang.Object=var2921, "Retrieving property %s.%s"=var3627, $r74=var2133, $r75=var364, org.hibernate.mapping.Property=var397, r94=var3679, org.hibernate.mapping.Value=var1560, $r76=var3864, $z8=var2034, $r81=var3659, org.hibernate.mapping.Collection=var1658, r95=var2466, r96=var2635, org.hibernate.AnnotationException=var47, $r111=var2636, $r110=var2166, $r85=var3141, $r84=var3053, $r86=var199, $r87=var471, $r88=var592, $r89=var1296, java.lang.Throwable=var700, $r122=var3970}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: org.hibernate.mapping.PersistentClass;	r0 := @parameter1: org.hibernate.mapping.PersistentClass;	r1 := @parameter2: org.hibernate.cfg.Ejb3JoinColumn[];	r10 := @parameter3: org.hibernate.mapping.SimpleValue;	z2 := @parameter4: boolean;	r8 := @parameter5: org.hibernate.boot.spi.MetadataBuildingContext;	if r0 == null goto $r2 = r1[0];	r90 = r0;	goto [?= $r92 = r1[0]];	$r92 = r1[0];	$r93 = virtualinvoke $r92.<org.hibernate.cfg.Ejb3JoinColumn: java.lang.String getMappedBy()>();	$z9 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>($r93);	if $z9 == 0 goto $r6 = r1[0];	$r72 = <org.hibernate.cfg.annotations.TableBinder: org.hibernate.internal.CoreMessageLogger LOG>;	$r73 = virtualinvoke r90.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	interfaceinvoke $r72.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("Retrieving property %s.%s", $r73, $r93);	$r74 = r1[0];	$r75 = virtualinvoke $r74.<org.hibernate.cfg.Ejb3JoinColumn: java.lang.String getMappedBy()>();	r94 = virtualinvoke r90.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Property getRecursiveProperty(java.lang.String)>($r75);	$r76 = virtualinvoke r94.<org.hibernate.mapping.Property: org.hibernate.mapping.Value getValue()>();	$z8 = $r76 instanceof org.hibernate.mapping.Collection;	if $z8 == 0 goto $r77 = virtualinvoke r94.<org.hibernate.mapping.Property: org.hibernate.mapping.Value getValue()>();	$r81 = virtualinvoke r94.<org.hibernate.mapping.Property: org.hibernate.mapping.Value getValue()>();	r95 = (org.hibernate.mapping.Collection) $r81;	r96 = virtualinvoke r95.<org.hibernate.mapping.Collection: org.hibernate.mapping.Value getElement()>();	if r96 != null goto r97 = interfaceinvoke r96.<org.hibernate.mapping.Value: java.util.Iterator getColumnIterator()>();	$r111 = new org.hibernate.AnnotationException;	$r110 = new java.lang.StringBuilder;	specialinvoke $r110.<java.lang.StringBuilder: void <init>()>();	$r85 = virtualinvoke $r110.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal use of mappedBy on both sides of the relationship: ");	$r84 = virtualinvoke r90.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	$r86 = virtualinvoke $r85.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r84);	$r87 = virtualinvoke $r86.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r88 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r93);	$r89 = virtualinvoke $r88.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r111.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r89);	$r122 = (java.lang.Throwable) $r111;	throw $r122
;block_num 6