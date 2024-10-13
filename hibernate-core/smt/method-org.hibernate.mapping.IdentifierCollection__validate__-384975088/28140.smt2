(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1603 0)
(declare-sort var1593 0)
(declare-sort var986 0)
(declare-sort var1425 0)
(declare-sort var3190 0)
(declare-sort var634 0)
(declare-sort var493 0)
(declare-sort var1983 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/649804871 (var986 var1593) void)
(declare-fun cast-from-var1603-to-var986 (var1603) var986)
(declare-fun getIdentifier/1829720247 (var1603) var1425)
(declare-fun var3190_isValid/-571082178 (var3190 var1593) Bool)
(declare-fun cast-from-var1425-to-var3190 (var1425) var3190)
(declare-fun var634-init () var634)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRole/-486327642 (var986) String)
(declare-fun var3190_getType/951709402 (var3190) var493)
(declare-fun var493_getName/-1292724027 (var493) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var634 String) void)
(declare-fun cast-from-var634-to-var1983 (var634) var1983)
(declare-const null-var1603 var1603)
(declare-const null-var1593 var1593)
(declare-const var1603-$assertionsDisabled Bool)
(declare-const var303 var1603) ; Statement: r0 := @this: org.hibernate.mapping.IdentifierCollection 
(assert (not (= var303 null-var1603)))
(declare-const var2962 var1593) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var2962 null-var1593)))
(assert true)
;(assert (validate/649804871 (cast-from-var1603-to-var986 var303) var2962)) ; Statement: specialinvoke r0.<org.hibernate.mapping.Collection: void validate(org.hibernate.engine.spi.Mapping)>(r1) 

(declare-const var303!1 var1603)
(declare-const var2962!1 var1593)
(define-const var1925 Bool var1603-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.mapping.IdentifierCollection: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.KeyValue getIdentifier()>() 
(assert (not (= (ite var1925 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1466 var1425 (getIdentifier/1829720247 var303!1)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.KeyValue getIdentifier()>() 
(define-const var2899 Bool (var3190_isValid/-571082178 (cast-from-var1425-to-var3190 var1466) var2962!1)) ; Statement: $z1 = interfaceinvoke $r2.<org.hibernate.mapping.KeyValue: boolean isValid(org.hibernate.engine.spi.Mapping)>(r1) 
 ; Statement: if $z1 != 0 goto return 
(assert (not (not (= (ite var2899 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2769 var634 var634-init) ; Statement: $r24 = new org.hibernate.MappingException 
(define-const var2514 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2514)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2514!1 String)
(assert (= var2514!1 ""))
(assert true)
(define-const var2273 String (append/672562846 var2514!1 "collection id mapping has wrong number of columns: ")) ; Statement: $r6 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection id mapping has wrong number of columns: ") 
(declare-const var2514!2 String)
(assert (= var2514!2 (str.++ var2514!1 "collection id mapping has wrong number of columns: ")))
(assert true)
(define-const var414 String (getRole/-486327642 (cast-from-var1603-to-var986 var303!1))) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: java.lang.String getRole()>() 
(assert true)
(define-const var1180 String (append/672562846 var2273 var414)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2273!1 String)
(assert (= var2273!1 (str.++ var2273 var414)))
(assert true)
(define-const var3133 String (append/672562846 var1180 " type: ")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" type: ") 
(declare-const var1180!1 String)
(assert (= var1180!1 (str.++ var1180 " type: ")))
(assert true)
(define-const var3138 var1425 (getIdentifier/1829720247 var303!1)) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.KeyValue getIdentifier()>() 
(define-const var1199 var493 (var3190_getType/951709402 (cast-from-var1425-to-var3190 var3138))) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.mapping.KeyValue: org.hibernate.type.Type getType()>() 
(define-const var3973 String (var493_getName/-1292724027 var1199)) ; Statement: $r10 = interfaceinvoke $r9.<org.hibernate.type.Type: java.lang.String getName()>() 
(assert true)
(define-const var1148 String (append/672562846 var3133 var3973)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3133!1 String)
(assert (= var3133!1 (str.++ var3133 var3973)))
(assert true)
(define-const var3360 String (toString/-2075883882 var1148)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var2769 var3360)) ; Statement: specialinvoke $r24.<org.hibernate.MappingException: void <init>(java.lang.String)>($r13) 

(declare-const var2769!1 var634)
(declare-const var3360!1 String)
(define-const var1776 var1983 (cast-from-var634-to-var1983 var2769!1)) ; Statement: $r25 = (java.lang.Throwable) $r24 
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/649804871=([org.hibernate.mapping.Collection, org.hibernate.engine.spi.Mapping], void), cast-from-var1603-to-var986=([org.hibernate.mapping.IdentifierCollection], org.hibernate.mapping.Collection), getIdentifier/1829720247=([org.hibernate.mapping.IdentifierCollection], org.hibernate.mapping.KeyValue), var3190_isValid/-571082178=([org.hibernate.mapping.Value, org.hibernate.engine.spi.Mapping], boolean), cast-from-var1425-to-var3190=([org.hibernate.mapping.KeyValue], org.hibernate.mapping.Value), var634-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRole/-486327642=([org.hibernate.mapping.Collection], java.lang.String), var3190_getType/951709402=([org.hibernate.mapping.Value], org.hibernate.type.Type), var493_getName/-1292724027=([org.hibernate.type.Type], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var634-to-var1983=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1603=org.hibernate.mapping.IdentifierCollection, var303=r0, var1593=org.hibernate.engine.spi.Mapping, var2962=r1, var986=org.hibernate.mapping.Collection, var1925=$z0, var1425=org.hibernate.mapping.KeyValue, var1466=$r2, var3190=org.hibernate.mapping.Value, var2899=$z1, var634=org.hibernate.MappingException, var2769=$r24, var2514=$r23, var2273=$r6, var414=$r5, var1180=$r7, var3133=$r11, var3138=$r8, var493=org.hibernate.type.Type, var1199=$r9, var3973=$r10, var1148=$r12, var3360=$r13, var1983=java.lang.Throwable, var1776=$r25}
; {org.hibernate.mapping.IdentifierCollection=var1603, r0=var303, org.hibernate.engine.spi.Mapping=var1593, r1=var2962, org.hibernate.mapping.Collection=var986, $z0=var1925, org.hibernate.mapping.KeyValue=var1425, $r2=var1466, org.hibernate.mapping.Value=var3190, $z1=var2899, org.hibernate.MappingException=var634, $r24=var2769, $r23=var2514, $r6=var2273, $r5=var414, $r7=var1180, $r11=var3133, $r8=var3138, org.hibernate.type.Type=var493, $r9=var1199, $r10=var3973, $r12=var1148, $r13=var3360, java.lang.Throwable=var1983, $r25=var1776}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.IdentifierCollection;	r1 := @parameter0: org.hibernate.engine.spi.Mapping;	specialinvoke r0.<org.hibernate.mapping.Collection: void validate(org.hibernate.engine.spi.Mapping)>(r1);	$z0 = <org.hibernate.mapping.IdentifierCollection: boolean $assertionsDisabled>;	if $z0 != 0 goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.KeyValue getIdentifier()>();	$r2 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.KeyValue getIdentifier()>();	$z1 = interfaceinvoke $r2.<org.hibernate.mapping.KeyValue: boolean isValid(org.hibernate.engine.spi.Mapping)>(r1);	if $z1 != 0 goto return;	$r24 = new org.hibernate.MappingException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection id mapping has wrong number of columns: ");	$r5 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: java.lang.String getRole()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" type: ");	$r8 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.KeyValue getIdentifier()>();	$r9 = interfaceinvoke $r8.<org.hibernate.mapping.KeyValue: org.hibernate.type.Type getType()>();	$r10 = interfaceinvoke $r9.<org.hibernate.type.Type: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<org.hibernate.MappingException: void <init>(java.lang.String)>($r13);	$r25 = (java.lang.Throwable) $r24;	throw $r25
;block_num 3