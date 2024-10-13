(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3535 0)
(declare-sort var1533 0)
(declare-sort var1952 0)
(declare-sort var3313 0)
(declare-sort var1184 0)
(declare-sort var304 0)
(declare-sort var571 0)
(declare-sort var1484 0)
(declare-sort var690 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1184-init () var1184)
(declare-fun cast-from-var1952-to-var304 (var1952) var304)
(declare-fun <init>/1422183741 (var1184 var1533 var304) void)
(declare-fun collection/570268399 (var3535) var571)
(declare-fun isMap/-187365271 (var571) Bool)
(declare-fun getAttributeName/-1536466389 (var1184) String)
(declare-fun var1484_isEmpty/1672864985 (String) Bool)
(declare-fun canElementBeConverted/570268399 (var3535) Bool)
(declare-fun canKeyBeConverted/570268399 (var3535) Bool)
(declare-fun var690-init () var690)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRole/-486327642 (var571) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var690 String) void)
(declare-const null-var3535 var3535)
(declare-const null-var1533 var1533)
(declare-const null-var1952 var1952)
(declare-const null-var3313 var3313)
(declare-const var3090 var3535) ; Statement: r3 := @this: org.hibernate.cfg.CollectionPropertyHolder 
(assert (not (= var3090 null-var3535)))
(declare-const var700 var1533) ; Statement: r1 := @parameter0: javax.persistence.Convert 
(assert (not (= var700 null-var1533)))
(declare-const var45 var1952) ; Statement: r2 := @parameter1: org.hibernate.annotations.common.reflection.XProperty 
(assert (not (= var45 null-var1952)))
(declare-const var2524 var3313) ; Statement: r14 := @parameter2: java.util.Map 
(assert (not (= var2524 null-var3313)))
(declare-const var221 var3313) ; Statement: r15 := @parameter3: java.util.Map 
(assert (not (= var221 null-var3313)))
(define-const var3429 var1184 var1184-init) ; Statement: $r45 = new org.hibernate.cfg.AttributeConversionInfo 
(define-const var3556 var304 (cast-from-var1952-to-var304 var45)) ; Statement: $r51 = (org.hibernate.annotations.common.reflection.XAnnotatedElement) r2 
(assert true)
;(assert (<init>/1422183741 var3429 var700 var3556)) ; Statement: specialinvoke $r45.<org.hibernate.cfg.AttributeConversionInfo: void <init>(javax.persistence.Convert,org.hibernate.annotations.common.reflection.XAnnotatedElement)>(r1, $r51) 

(declare-const var3429!1 var1184)
(declare-const var700!1 var1533)
(declare-const var3556!1 var304)
(define-const var709 var571 (collection/570268399 var3090)) ; Statement: $r4 = r3.<org.hibernate.cfg.CollectionPropertyHolder: org.hibernate.mapping.Collection collection> 
(assert true)
(define-const var1213 Bool (isMap/-187365271 var709)) ; Statement: $z0 = virtualinvoke $r4.<org.hibernate.mapping.Collection: boolean isMap()>() 
 ; Statement: if $z0 == 0 goto $r42 = virtualinvoke $r45.<org.hibernate.cfg.AttributeConversionInfo: java.lang.String getAttributeName()>() 
(assert (= (ite var1213 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1599 String (getAttributeName/-1536466389 var3429!1)) ; Statement: $r42 = virtualinvoke $r45.<org.hibernate.cfg.AttributeConversionInfo: java.lang.String getAttributeName()>() 
(define-const var3767 Bool (var1484_isEmpty/1672864985 var1599)) ; Statement: $z12 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>($r42) 
 ; Statement: if $z12 == 0 goto $z1 = r3.<org.hibernate.cfg.CollectionPropertyHolder: boolean canElementBeConverted> 
(assert (not (= (ite var3767 1 0) 0))) ; Negate: Cond: $z12 == 0  
(define-const var2964 Bool (canElementBeConverted/570268399 var3090)) ; Statement: $z4 = r3.<org.hibernate.cfg.CollectionPropertyHolder: boolean canElementBeConverted> 
 ; Statement: if $z4 == 0 goto $z5 = r3.<org.hibernate.cfg.CollectionPropertyHolder: boolean canKeyBeConverted> 
(assert (not (= (ite var2964 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var3496 Bool (canKeyBeConverted/570268399 var3090)) ; Statement: $z7 = r3.<org.hibernate.cfg.CollectionPropertyHolder: boolean canKeyBeConverted> 
 ; Statement: if $z7 == 0 goto $z5 = r3.<org.hibernate.cfg.CollectionPropertyHolder: boolean canKeyBeConverted> 
(assert (not (= (ite var3496 1 0) 0))) ; Negate: Cond: $z7 == 0  
(define-const var1078 var690 var690-init) ; Statement: $r47 = new java.lang.IllegalStateException 
(define-const var454 String String-init) ; Statement: $r46 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var454)) ; Statement: specialinvoke $r46.<java.lang.StringBuilder: void <init>()>() 
(declare-const var454!1 String)
(assert (= var454!1 ""))
(assert true)
(define-const var238 String (append/672562846 var454!1 "@Convert placed on Map attribute [")) ; Statement: $r32 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@Convert placed on Map attribute [") 
(declare-const var454!2 String)
(assert (= var454!2 (str.++ var454!1 "@Convert placed on Map attribute [")))
(define-const var1603 var571 (collection/570268399 var3090)) ; Statement: $r30 = r3.<org.hibernate.cfg.CollectionPropertyHolder: org.hibernate.mapping.Collection collection> 
(assert true)
(define-const var197 String (getRole/-486327642 var1603)) ; Statement: $r31 = virtualinvoke $r30.<org.hibernate.mapping.Collection: java.lang.String getRole()>() 
(assert true)
(define-const var2963 String (append/672562846 var238 var197)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31) 
(declare-const var238!1 String)
(assert (= var238!1 (str.++ var238 var197)))
(assert true)
(define-const var3205 String (append/672562846 var2963 "] must define attributeName of \u0027key\u0027 or \u0027value\u0027")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] must define attributeName of \'key\' or \'value\'") 
(declare-const var2963!1 String)
(assert (= var2963!1 (str.++ var2963 "] must define attributeName of \u0027key\u0027 or \u0027value\u0027")))
(assert true)
(define-const var3896 String (toString/-2075883882 var3205)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1078 var3896)) ; Statement: specialinvoke $r47.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r35) 

(declare-const var1078!1 var690)
(declare-const var3896!1 String)
 ; Statement: throw $r47 
(check-sat)
(get-model)
(get-unsat-core)
; {var1184-init=([], org.hibernate.cfg.AttributeConversionInfo), cast-from-var1952-to-var304=([org.hibernate.annotations.common.reflection.XProperty], org.hibernate.annotations.common.reflection.XAnnotatedElement), <init>/1422183741=([org.hibernate.cfg.AttributeConversionInfo, javax.persistence.Convert, org.hibernate.annotations.common.reflection.XAnnotatedElement], void), collection/570268399=([org.hibernate.cfg.CollectionPropertyHolder], org.hibernate.mapping.Collection), isMap/-187365271=([org.hibernate.mapping.Collection], boolean), getAttributeName/-1536466389=([org.hibernate.cfg.AttributeConversionInfo], java.lang.String), var1484_isEmpty/1672864985=([java.lang.String], boolean), canElementBeConverted/570268399=([org.hibernate.cfg.CollectionPropertyHolder], boolean), canKeyBeConverted/570268399=([org.hibernate.cfg.CollectionPropertyHolder], boolean), var690-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRole/-486327642=([org.hibernate.mapping.Collection], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3535=org.hibernate.cfg.CollectionPropertyHolder, var3090=r3, var1533=javax.persistence.Convert, var700=r1, var1952=org.hibernate.annotations.common.reflection.XProperty, var45=r2, var3313=java.util.Map, var2524=r14, var221=r15, var1184=org.hibernate.cfg.AttributeConversionInfo, var3429=$r45, var304=org.hibernate.annotations.common.reflection.XAnnotatedElement, var3556=$r51, var571=org.hibernate.mapping.Collection, var709=$r4, var1213=$z0, var1599=$r42, var1484=org.hibernate.internal.util.StringHelper, var3767=$z12, var2964=$z4, var3496=$z7, var690=java.lang.IllegalStateException, var1078=$r47, var454=$r46, var238=$r32, var1603=$r30, var197=$r31, var2963=$r33, var3205=$r34, var3896=$r35}
; {org.hibernate.cfg.CollectionPropertyHolder=var3535, r3=var3090, javax.persistence.Convert=var1533, r1=var700, org.hibernate.annotations.common.reflection.XProperty=var1952, r2=var45, java.util.Map=var3313, r14=var2524, r15=var221, org.hibernate.cfg.AttributeConversionInfo=var1184, $r45=var3429, org.hibernate.annotations.common.reflection.XAnnotatedElement=var304, $r51=var3556, org.hibernate.mapping.Collection=var571, $r4=var709, $z0=var1213, $r42=var1599, org.hibernate.internal.util.StringHelper=var1484, $z12=var3767, $z4=var2964, $z7=var3496, java.lang.IllegalStateException=var690, $r47=var1078, $r46=var454, $r32=var238, $r30=var1603, $r31=var197, $r33=var2963, $r34=var3205, $r35=var3896}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.cfg.CollectionPropertyHolder;	r1 := @parameter0: javax.persistence.Convert;	r2 := @parameter1: org.hibernate.annotations.common.reflection.XProperty;	r14 := @parameter2: java.util.Map;	r15 := @parameter3: java.util.Map;	$r45 = new org.hibernate.cfg.AttributeConversionInfo;	$r51 = (org.hibernate.annotations.common.reflection.XAnnotatedElement) r2;	specialinvoke $r45.<org.hibernate.cfg.AttributeConversionInfo: void <init>(javax.persistence.Convert,org.hibernate.annotations.common.reflection.XAnnotatedElement)>(r1, $r51);	$r4 = r3.<org.hibernate.cfg.CollectionPropertyHolder: org.hibernate.mapping.Collection collection>;	$z0 = virtualinvoke $r4.<org.hibernate.mapping.Collection: boolean isMap()>();	if $z0 == 0 goto $r42 = virtualinvoke $r45.<org.hibernate.cfg.AttributeConversionInfo: java.lang.String getAttributeName()>();	$r42 = virtualinvoke $r45.<org.hibernate.cfg.AttributeConversionInfo: java.lang.String getAttributeName()>();	$z12 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>($r42);	if $z12 == 0 goto $z1 = r3.<org.hibernate.cfg.CollectionPropertyHolder: boolean canElementBeConverted>;	$z4 = r3.<org.hibernate.cfg.CollectionPropertyHolder: boolean canElementBeConverted>;	if $z4 == 0 goto $z5 = r3.<org.hibernate.cfg.CollectionPropertyHolder: boolean canKeyBeConverted>;	$z7 = r3.<org.hibernate.cfg.CollectionPropertyHolder: boolean canKeyBeConverted>;	if $z7 == 0 goto $z5 = r3.<org.hibernate.cfg.CollectionPropertyHolder: boolean canKeyBeConverted>;	$r47 = new java.lang.IllegalStateException;	$r46 = new java.lang.StringBuilder;	specialinvoke $r46.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@Convert placed on Map attribute [");	$r30 = r3.<org.hibernate.cfg.CollectionPropertyHolder: org.hibernate.mapping.Collection collection>;	$r31 = virtualinvoke $r30.<org.hibernate.mapping.Collection: java.lang.String getRole()>();	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] must define attributeName of \'key\' or \'value\'");	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r47.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r35);	throw $r47
;block_num 5