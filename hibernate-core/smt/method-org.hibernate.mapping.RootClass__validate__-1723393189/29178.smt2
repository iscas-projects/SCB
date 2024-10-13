(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3671 0)
(declare-sort var3490 0)
(declare-sort var3119 0)
(declare-sort var842 0)
(declare-sort var3569 0)
(declare-sort var1900 0)
(declare-sort var2132 0)
(declare-sort var1528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/-664311930 (var3119 var3490) void)
(declare-fun cast-from-var3671-to-var3119 (var3671) var3119)
(declare-fun getIdentifier/123977484 (var3671) var842)
(declare-fun var3569_isValid/-571082178 (var3569 var3490) Bool)
(declare-fun cast-from-var842-to-var3569 (var842) var3569)
(declare-fun var1900-init () var1900)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityName/-2043384209 (var3119) String)
(declare-fun var3569_getType/951709402 (var3569) var2132)
(declare-fun var2132_getName/-1292724027 (var2132) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1900 String) void)
(declare-fun cast-from-var1900-to-var1528 (var1900) var1528)
(declare-const null-var3671 var3671)
(declare-const null-var3490 var3490)
(declare-const var502 var3671) ; Statement: r0 := @this: org.hibernate.mapping.RootClass 
(assert (not (= var502 null-var3671)))
(declare-const var0 var3490) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var0 null-var3490)))
(assert true)
;(assert (validate/-664311930 (cast-from-var3671-to-var3119 var502) var0)) ; Statement: specialinvoke r0.<org.hibernate.mapping.PersistentClass: void validate(org.hibernate.engine.spi.Mapping)>(r1) 

(declare-const var502!1 var3671)
(declare-const var0!1 var3490)
(assert true)
(define-const var2909 var842 (getIdentifier/123977484 var502!1)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.mapping.RootClass: org.hibernate.mapping.KeyValue getIdentifier()>() 
(define-const var2662 Bool (var3569_isValid/-571082178 (cast-from-var842-to-var3569 var2909) var0!1)) ; Statement: $z0 = interfaceinvoke $r2.<org.hibernate.mapping.KeyValue: boolean isValid(org.hibernate.engine.spi.Mapping)>(r1) 
 ; Statement: if $z0 != 0 goto specialinvoke r0.<org.hibernate.mapping.RootClass: void checkCompositeIdentifier()>() 
(assert (not (not (= (ite var2662 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var207 var1900 var1900-init) ; Statement: $r15 = new org.hibernate.MappingException 
(define-const var157 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var157)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var157!1 String)
(assert (= var157!1 ""))
(assert true)
(define-const var1296 String (append/672562846 var157!1 "identifier mapping has wrong number of columns: ")) ; Statement: $r6 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("identifier mapping has wrong number of columns: ") 
(declare-const var157!2 String)
(assert (= var157!2 (str.++ var157!1 "identifier mapping has wrong number of columns: ")))
(assert true)
(define-const var3411 String (getEntityName/-2043384209 (cast-from-var3671-to-var3119 var502!1))) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.mapping.RootClass: java.lang.String getEntityName()>() 
(assert true)
(define-const var3621 String (append/672562846 var1296 var3411)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1296!1 String)
(assert (= var1296!1 (str.++ var1296 var3411)))
(assert true)
(define-const var1858 String (append/672562846 var3621 " type: ")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" type: ") 
(declare-const var3621!1 String)
(assert (= var3621!1 (str.++ var3621 " type: ")))
(assert true)
(define-const var3266 var842 (getIdentifier/123977484 var502!1)) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.mapping.RootClass: org.hibernate.mapping.KeyValue getIdentifier()>() 
(define-const var1391 var2132 (var3569_getType/951709402 (cast-from-var842-to-var3569 var3266))) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.mapping.KeyValue: org.hibernate.type.Type getType()>() 
(define-const var1223 String (var2132_getName/-1292724027 var1391)) ; Statement: $r10 = interfaceinvoke $r9.<org.hibernate.type.Type: java.lang.String getName()>() 
(assert true)
(define-const var233 String (append/672562846 var1858 var1223)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1858!1 String)
(assert (= var1858!1 (str.++ var1858 var1223)))
(assert true)
(define-const var489 String (toString/-2075883882 var233)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var207 var489)) ; Statement: specialinvoke $r15.<org.hibernate.MappingException: void <init>(java.lang.String)>($r13) 

(declare-const var207!1 var1900)
(declare-const var489!1 String)
(define-const var970 var1528 (cast-from-var1900-to-var1528 var207!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/-664311930=([org.hibernate.mapping.PersistentClass, org.hibernate.engine.spi.Mapping], void), cast-from-var3671-to-var3119=([org.hibernate.mapping.RootClass], org.hibernate.mapping.PersistentClass), getIdentifier/123977484=([org.hibernate.mapping.RootClass], org.hibernate.mapping.KeyValue), var3569_isValid/-571082178=([org.hibernate.mapping.Value, org.hibernate.engine.spi.Mapping], boolean), cast-from-var842-to-var3569=([org.hibernate.mapping.KeyValue], org.hibernate.mapping.Value), var1900-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), var3569_getType/951709402=([org.hibernate.mapping.Value], org.hibernate.type.Type), var2132_getName/-1292724027=([org.hibernate.type.Type], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1900-to-var1528=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3671=org.hibernate.mapping.RootClass, var502=r0, var3490=org.hibernate.engine.spi.Mapping, var0=r1, var3119=org.hibernate.mapping.PersistentClass, var842=org.hibernate.mapping.KeyValue, var2909=$r2, var3569=org.hibernate.mapping.Value, var2662=$z0, var1900=org.hibernate.MappingException, var207=$r15, var157=$r14, var1296=$r6, var3411=$r5, var3621=$r7, var1858=$r11, var3266=$r8, var2132=org.hibernate.type.Type, var1391=$r9, var1223=$r10, var233=$r12, var489=$r13, var1528=java.lang.Throwable, var970=$r16}
; {org.hibernate.mapping.RootClass=var3671, r0=var502, org.hibernate.engine.spi.Mapping=var3490, r1=var0, org.hibernate.mapping.PersistentClass=var3119, org.hibernate.mapping.KeyValue=var842, $r2=var2909, org.hibernate.mapping.Value=var3569, $z0=var2662, org.hibernate.MappingException=var1900, $r15=var207, $r14=var157, $r6=var1296, $r5=var3411, $r7=var3621, $r11=var1858, $r8=var3266, org.hibernate.type.Type=var2132, $r9=var1391, $r10=var1223, $r12=var233, $r13=var489, java.lang.Throwable=var1528, $r16=var970}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.RootClass;	r1 := @parameter0: org.hibernate.engine.spi.Mapping;	specialinvoke r0.<org.hibernate.mapping.PersistentClass: void validate(org.hibernate.engine.spi.Mapping)>(r1);	$r2 = virtualinvoke r0.<org.hibernate.mapping.RootClass: org.hibernate.mapping.KeyValue getIdentifier()>();	$z0 = interfaceinvoke $r2.<org.hibernate.mapping.KeyValue: boolean isValid(org.hibernate.engine.spi.Mapping)>(r1);	if $z0 != 0 goto specialinvoke r0.<org.hibernate.mapping.RootClass: void checkCompositeIdentifier()>();	$r15 = new org.hibernate.MappingException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("identifier mapping has wrong number of columns: ");	$r5 = virtualinvoke r0.<org.hibernate.mapping.RootClass: java.lang.String getEntityName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" type: ");	$r8 = virtualinvoke r0.<org.hibernate.mapping.RootClass: org.hibernate.mapping.KeyValue getIdentifier()>();	$r9 = interfaceinvoke $r8.<org.hibernate.mapping.KeyValue: org.hibernate.type.Type getType()>();	$r10 = interfaceinvoke $r9.<org.hibernate.type.Type: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.MappingException: void <init>(java.lang.String)>($r13);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2