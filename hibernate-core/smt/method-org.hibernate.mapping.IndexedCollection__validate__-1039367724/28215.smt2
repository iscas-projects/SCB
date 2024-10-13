(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3058 0)
(declare-sort var867 0)
(declare-sort var2530 0)
(declare-sort var3807 0)
(declare-sort var1466 0)
(declare-sort var3105 0)
(declare-sort var3525 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/649804871 (var2530 var867) void)
(declare-fun cast-from-var3058-to-var2530 (var3058) var2530)
(declare-fun getIndex/317790361 (var3058) var3807)
(declare-fun var3807_isValid/-571082178 (var3807 var867) Bool)
(declare-fun var1466-init () var1466)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRole/-486327642 (var2530) String)
(declare-fun var3807_getType/951709402 (var3807) var3105)
(declare-fun var3105_getName/-1292724027 (var3105) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1466 String) void)
(declare-fun cast-from-var1466-to-var3525 (var1466) var3525)
(declare-const null-var3058 var3058)
(declare-const null-var867 var867)
(declare-const var3058-$assertionsDisabled Bool)
(declare-const var3515 var3058) ; Statement: r0 := @this: org.hibernate.mapping.IndexedCollection 
(assert (not (= var3515 null-var3058)))
(declare-const var3364 var867) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var3364 null-var867)))
(assert true)
;(assert (validate/649804871 (cast-from-var3058-to-var2530 var3515) var3364)) ; Statement: specialinvoke r0.<org.hibernate.mapping.Collection: void validate(org.hibernate.engine.spi.Mapping)>(r1) 

(declare-const var3515!1 var3058)
(declare-const var3364!1 var867)
(define-const var1187 Bool var3058-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.mapping.IndexedCollection: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getIndex()>() 
(assert (not (= (ite var1187 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var878 var3807 (getIndex/317790361 var3515!1)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getIndex()>() 
(define-const var3695 Bool (var3807_isValid/-571082178 var878 var3364!1)) ; Statement: $z1 = interfaceinvoke $r2.<org.hibernate.mapping.Value: boolean isValid(org.hibernate.engine.spi.Mapping)>(r1) 
 ; Statement: if $z1 != 0 goto return 
(assert (not (not (= (ite var3695 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var741 var1466 var1466-init) ; Statement: $r24 = new org.hibernate.MappingException 
(define-const var1212 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1212)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1212!1 String)
(assert (= var1212!1 ""))
(assert true)
(define-const var3155 String (append/672562846 var1212!1 "collection index mapping has wrong number of columns: ")) ; Statement: $r6 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection index mapping has wrong number of columns: ") 
(declare-const var1212!2 String)
(assert (= var1212!2 (str.++ var1212!1 "collection index mapping has wrong number of columns: ")))
(assert true)
(define-const var691 String (getRole/-486327642 (cast-from-var3058-to-var2530 var3515!1))) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: java.lang.String getRole()>() 
(assert true)
(define-const var3607 String (append/672562846 var3155 var691)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3155!1 String)
(assert (= var3155!1 (str.++ var3155 var691)))
(assert true)
(define-const var1283 String (append/672562846 var3607 " type: ")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" type: ") 
(declare-const var3607!1 String)
(assert (= var3607!1 (str.++ var3607 " type: ")))
(assert true)
(define-const var2644 var3807 (getIndex/317790361 var3515!1)) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getIndex()>() 
(define-const var36 var3105 (var3807_getType/951709402 var2644)) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.mapping.Value: org.hibernate.type.Type getType()>() 
(define-const var1659 String (var3105_getName/-1292724027 var36)) ; Statement: $r10 = interfaceinvoke $r9.<org.hibernate.type.Type: java.lang.String getName()>() 
(assert true)
(define-const var1330 String (append/672562846 var1283 var1659)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1283!1 String)
(assert (= var1283!1 (str.++ var1283 var1659)))
(assert true)
(define-const var578 String (toString/-2075883882 var1330)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var741 var578)) ; Statement: specialinvoke $r24.<org.hibernate.MappingException: void <init>(java.lang.String)>($r13) 

(declare-const var741!1 var1466)
(declare-const var578!1 String)
(define-const var1754 var3525 (cast-from-var1466-to-var3525 var741!1)) ; Statement: $r25 = (java.lang.Throwable) $r24 
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/649804871=([org.hibernate.mapping.Collection, org.hibernate.engine.spi.Mapping], void), cast-from-var3058-to-var2530=([org.hibernate.mapping.IndexedCollection], org.hibernate.mapping.Collection), getIndex/317790361=([org.hibernate.mapping.IndexedCollection], org.hibernate.mapping.Value), var3807_isValid/-571082178=([org.hibernate.mapping.Value, org.hibernate.engine.spi.Mapping], boolean), var1466-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRole/-486327642=([org.hibernate.mapping.Collection], java.lang.String), var3807_getType/951709402=([org.hibernate.mapping.Value], org.hibernate.type.Type), var3105_getName/-1292724027=([org.hibernate.type.Type], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1466-to-var3525=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3058=org.hibernate.mapping.IndexedCollection, var3515=r0, var867=org.hibernate.engine.spi.Mapping, var3364=r1, var2530=org.hibernate.mapping.Collection, var1187=$z0, var3807=org.hibernate.mapping.Value, var878=$r2, var3695=$z1, var1466=org.hibernate.MappingException, var741=$r24, var1212=$r23, var3155=$r6, var691=$r5, var3607=$r7, var1283=$r11, var2644=$r8, var3105=org.hibernate.type.Type, var36=$r9, var1659=$r10, var1330=$r12, var578=$r13, var3525=java.lang.Throwable, var1754=$r25}
; {org.hibernate.mapping.IndexedCollection=var3058, r0=var3515, org.hibernate.engine.spi.Mapping=var867, r1=var3364, org.hibernate.mapping.Collection=var2530, $z0=var1187, org.hibernate.mapping.Value=var3807, $r2=var878, $z1=var3695, org.hibernate.MappingException=var1466, $r24=var741, $r23=var1212, $r6=var3155, $r5=var691, $r7=var3607, $r11=var1283, $r8=var2644, org.hibernate.type.Type=var3105, $r9=var36, $r10=var1659, $r12=var1330, $r13=var578, java.lang.Throwable=var3525, $r25=var1754}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.IndexedCollection;	r1 := @parameter0: org.hibernate.engine.spi.Mapping;	specialinvoke r0.<org.hibernate.mapping.Collection: void validate(org.hibernate.engine.spi.Mapping)>(r1);	$z0 = <org.hibernate.mapping.IndexedCollection: boolean $assertionsDisabled>;	if $z0 != 0 goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getIndex()>();	$r2 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getIndex()>();	$z1 = interfaceinvoke $r2.<org.hibernate.mapping.Value: boolean isValid(org.hibernate.engine.spi.Mapping)>(r1);	if $z1 != 0 goto return;	$r24 = new org.hibernate.MappingException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection index mapping has wrong number of columns: ");	$r5 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: java.lang.String getRole()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" type: ");	$r8 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getIndex()>();	$r9 = interfaceinvoke $r8.<org.hibernate.mapping.Value: org.hibernate.type.Type getType()>();	$r10 = interfaceinvoke $r9.<org.hibernate.type.Type: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<org.hibernate.MappingException: void <init>(java.lang.String)>($r13);	$r25 = (java.lang.Throwable) $r24;	throw $r25
;block_num 3