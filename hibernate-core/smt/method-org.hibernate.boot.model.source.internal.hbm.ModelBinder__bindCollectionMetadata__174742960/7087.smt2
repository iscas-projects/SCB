(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2384 0)
(declare-sort var1985 0)
(declare-sort var1123 0)
(declare-sort var99 0)
(declare-sort var572 0)
(declare-sort var0 0)
(declare-sort var2091 0)
(declare-sort var3780 0)
(declare-sort var3956 0)
(declare-sort var3439 0)
(declare-sort var3835 0)
(declare-sort var1741 0)
(declare-sort var3338 0)
(declare-sort var1817 0)
(declare-sort var1136 0)
(declare-sort var447 0)
(declare-sort var1682 0)
(declare-sort var2712 0)
(declare-sort var3108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var0_getAttributeRole/-1958494126 (var0) var572)
(declare-fun cast-from-var1123-to-var0 (var1123) var0)
(declare-fun getFullPath/-1971906419 (var2091) String)
(declare-fun cast-from-var572-to-var2091 (var572) var2091)
(declare-fun setRole/-853473872 (var99 String) void)
(declare-fun var1123_isInverse/-400940078 (var1123) Bool)
(declare-fun setInverse/-1568905271 (var99 Bool) void)
(declare-fun var1123_isMutable/135494684 (var1123) Bool)
(declare-fun setMutable/-1226373057 (var99 Bool) void)
(declare-fun var0_isIncludedInOptimisticLocking/-250084387 (var0) Bool)
(declare-fun setOptimisticLocked/-2044219544 (var99 Bool) void)
(declare-fun var1123_getCustomPersisterClassName/2100460460 (var1123) String)
(declare-fun var1123_getCaching/-79713285 (var1123) var3956)
(declare-fun applyCaching/1814866614 (var2384 var1985 var3956 var99) void)
(declare-fun var0_getTypeInformation/-1023980057 (var0) var3439)
(declare-fun var3439_getName/2029635040 (var3439) String)
(declare-fun var3835-init () var3835)
(declare-fun <init>/-201242697 (var3835) void)
(declare-fun var3439_getParameters/1104735320 (var3439) var1741)
(declare-fun setTypeName/1885329121 (var99 String) void)
(declare-fun setTypeParameters/1436749705 (var99 var1741) void)
(declare-fun cast-from-var3835-to-var1741 (var3835) var1741)
(declare-fun var1123_getFetchCharacteristics/-1863849588 (var1123) var3338)
(declare-fun var1136_getFetchTiming/-1403547897 (var1136) var1817)
(declare-fun cast-from-var3338-to-var1136 (var3338) var1136)
(declare-fun setLazy/671706309 (var99 Bool) void)
(declare-fun var1136_getFetchStyle/494150253 (var1136) var1682)
(declare-fun ordinal/-291641772 (var2712) Int)
(declare-fun cast-from-var1682-to-var2712 (var1682) var2712)
(declare-fun var3108-init () var3108)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1633728430 (var2712) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var3108 String) void)
(declare-const null-var2384 var2384)
(declare-const null-var1985 var1985)
(declare-const null-var1123 var1123)
(declare-const null-var99 var99)
(declare-const null-String String)
(declare-const null-var1741 var1741)
(declare-const var1817-DELAYED var1817)
(declare-const var447-$SwitchMap$org$hibernate$engine$FetchStyle (Array Int Int))
(declare-const var311 var2384) ; Statement: r5 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var311 null-var2384)))
(declare-const var2446 var1985) ; Statement: r6 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var2446 null-var1985)))
(declare-const var1593 var1123) ; Statement: r1 := @parameter1: org.hibernate.boot.model.source.spi.PluralAttributeSource 
(assert (not (= var1593 null-var1123)))
(declare-const var1054 var99) ; Statement: r0 := @parameter2: org.hibernate.mapping.Collection 
(assert (not (= var1054 null-var99)))
(define-const var3615 var572 (var0_getAttributeRole/-1958494126 (cast-from-var1123-to-var0 var1593))) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>() 
(assert true)
(define-const var2164 String (getFullPath/-1971906419 (cast-from-var572-to-var2091 var3615))) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>() 
(assert true)
;(assert (setRole/-853473872 var1054 var2164)) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setRole(java.lang.String)>($r3) 

(declare-const var1054!1 var99)
(declare-const var2164!1 String)
(define-const var952 Bool (var1123_isInverse/-400940078 var1593)) ; Statement: $z0 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: boolean isInverse()>() 
(assert true)
;(assert (setInverse/-1568905271 var1054!1 var952)) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setInverse(boolean)>($z0) 

(declare-const var1054!2 var99)
(declare-const var952!1 Bool)
(define-const var3878 Bool (var1123_isMutable/135494684 var1593)) ; Statement: $z1 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: boolean isMutable()>() 
(assert true)
;(assert (setMutable/-1226373057 var1054!2 var3878)) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setMutable(boolean)>($z1) 

(declare-const var1054!3 var99)
(declare-const var3878!1 Bool)
(define-const var1612 Bool (var0_isIncludedInOptimisticLocking/-250084387 (cast-from-var1123-to-var0 var1593))) ; Statement: $z2 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: boolean isIncludedInOptimisticLocking()>() 
(assert true)
;(assert (setOptimisticLocked/-2044219544 var1054!3 var1612)) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setOptimisticLocked(boolean)>($z2) 

(declare-const var1054!4 var99)
(declare-const var1612!1 Bool)
(define-const var2746 String (var1123_getCustomPersisterClassName/2100460460 var1593)) ; Statement: $r4 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: java.lang.String getCustomPersisterClassName()>() 
 ; Statement: if $r4 == null goto $r7 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.Caching getCaching()>() 
(assert (= var2746 null-String)) ; Cond: $r4 == null 
(define-const var597 var3956 (var1123_getCaching/-79713285 var1593)) ; Statement: $r7 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.Caching getCaching()>() 
(assert true)
;(assert (applyCaching/1814866614 var311 var2446 var597 var1054!4)) ; Statement: specialinvoke r5.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: void applyCaching(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.Caching,org.hibernate.mapping.Collection)>(r6, $r7, r0) 

(declare-const var311!1 var2384)
(declare-const var2446!1 var1985)
(declare-const var597!1 var3956)
(declare-const var1054!5 var99)
(define-const var2038 var3439 (var0_getTypeInformation/-1023980057 (cast-from-var1123-to-var0 var1593))) ; Statement: $r8 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>() 
(define-const var175 String (var3439_getName/2029635040 var2038)) ; Statement: $r78 = interfaceinvoke $r8.<org.hibernate.boot.model.source.spi.HibernateTypeSource: java.lang.String getName()>() 
(define-const var2948 String var175) ; Statement: r79 = $r78 
(define-const var2646 var3835 var3835-init) ; Statement: $r9 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2646)) ; Statement: specialinvoke $r9.<java.util.HashMap: void <init>()>() 

(declare-const var2646!1 var3835)
 ; Statement: if $r78 == null goto $r81 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>() 
(assert (= var175 null-String)) ; Cond: $r78 == null 
(define-const var796 var3439 (var0_getTypeInformation/-1023980057 (cast-from-var1123-to-var0 var1593))) ; Statement: $r81 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>() 
(define-const var3133 var1741 (var3439_getParameters/1104735320 var796)) ; Statement: $r82 = interfaceinvoke $r81.<org.hibernate.boot.model.source.spi.HibernateTypeSource: java.util.Map getParameters()>() 
 ; Statement: if $r82 == null goto virtualinvoke r0.<org.hibernate.mapping.Collection: void setTypeName(java.lang.String)>(r79) 
(assert (= var3133 null-var1741)) ; Cond: $r82 == null 
(assert true)
;(assert (setTypeName/1885329121 var1054!5 var2948)) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setTypeName(java.lang.String)>(r79) 

(declare-const var1054!6 var99)
(declare-const var2948!1 String)
(assert true)
;(assert (setTypeParameters/1436749705 var1054!6 (cast-from-var3835-to-var1741 var2646!1))) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setTypeParameters(java.util.Map)>($r9) 

(declare-const var1054!7 var99)
(declare-const var2646!2 var3835)
(define-const var3204 var3338 (var1123_getFetchCharacteristics/-1863849588 var1593)) ; Statement: $r10 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute getFetchCharacteristics()>() 
(define-const var2107 var1817 (var1136_getFetchTiming/-1403547897 (cast-from-var3338-to-var1136 var3204))) ; Statement: $r12 = interfaceinvoke $r10.<org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute: org.hibernate.engine.FetchTiming getFetchTiming()>() 
(define-const var2335 var1817 var1817-DELAYED) ; Statement: $r11 = <org.hibernate.engine.FetchTiming: org.hibernate.engine.FetchTiming DELAYED> 
 ; Statement: if $r12 != $r11 goto virtualinvoke r0.<org.hibernate.mapping.Collection: void setLazy(boolean)>(0) 
(assert (not (= var2107 var2335))) ; Cond: $r12 != $r11 
(assert true)
;(assert (setLazy/671706309 var1054!7 (ite (= 1 0) true false))) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setLazy(boolean)>(0) 

(declare-const var1054!8 var99)
(declare-const var3569 Int)
(assert true) ; Non Conditional
(define-const var705 (Array Int Int) var447-$SwitchMap$org$hibernate$engine$FetchStyle) ; Statement: $r13 = <org.hibernate.boot.model.source.internal.hbm.ModelBinder$15: int[] $SwitchMap$org$hibernate$engine$FetchStyle> 
(define-const var1611 var3338 (var1123_getFetchCharacteristics/-1863849588 var1593)) ; Statement: $r14 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute getFetchCharacteristics()>() 
(define-const var795 var1682 (var1136_getFetchStyle/494150253 (cast-from-var3338-to-var1136 var1611))) ; Statement: $r15 = interfaceinvoke $r14.<org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute: org.hibernate.engine.FetchStyle getFetchStyle()>() 
(assert true)
(define-const var3232 Int (ordinal/-291641772 (cast-from-var1682-to-var2712 var795))) ; Statement: $i0 = virtualinvoke $r15.<org.hibernate.engine.FetchStyle: int ordinal()>() 
(define-const var1649 Int (select var705 var3232)) ; Statement: $i1 = $r13[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r57 = <org.hibernate.FetchMode: org.hibernate.FetchMode SELECT>;     case 2: goto $r56 = <org.hibernate.FetchMode: org.hibernate.FetchMode JOIN>;     case 3: goto $r53 = <org.hibernate.FetchMode: org.hibernate.FetchMode SELECT>;     case 4: goto $r16 = <org.hibernate.FetchMode: org.hibernate.FetchMode SELECT>;     default: goto $r58 = new org.hibernate.AssertionFailure; } 
(assert (and (not (= var1649 4)) (and (not (= var1649 3)) (and (not (= var1649 2)) (and (not (= var1649 1)) true))))) ; Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var3283 var3108 var3108-init) ; Statement: $r58 = new org.hibernate.AssertionFailure 
(define-const var3486 String String-init) ; Statement: $r59 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3486)) ; Statement: specialinvoke $r59.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3486!1 String)
(assert (= var3486!1 ""))
(assert true)
(define-const var2006 String (append/672562846 var3486!1 "Unexpected FetchStyle : ")) ; Statement: $r63 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected FetchStyle : ") 
(declare-const var3486!2 String)
(assert (= var3486!2 (str.++ var3486!1 "Unexpected FetchStyle : ")))
(define-const var749 var3338 (var1123_getFetchCharacteristics/-1863849588 var1593)) ; Statement: $r60 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute getFetchCharacteristics()>() 
(define-const var2439 var1682 (var1136_getFetchStyle/494150253 (cast-from-var3338-to-var1136 var749))) ; Statement: $r61 = interfaceinvoke $r60.<org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute: org.hibernate.engine.FetchStyle getFetchStyle()>() 
(assert true)
(define-const var2556 String (name/1633728430 (cast-from-var1682-to-var2712 var2439))) ; Statement: $r62 = virtualinvoke $r61.<org.hibernate.engine.FetchStyle: java.lang.String name()>() 
(assert true)
(define-const var3544 String (append/672562846 var2006 var2556)) ; Statement: $r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62) 
(declare-const var2006!1 String)
(assert (= var2006!1 (str.++ var2006 var2556)))
(assert true)
(define-const var295 String (toString/-2075883882 var3544)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var3283 var295)) ; Statement: specialinvoke $r58.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r65) 

(declare-const var3283!1 var3108)
(declare-const var295!1 String)
 ; Statement: throw $r58 
(check-sat)
(get-model)
(get-unsat-core)
; {var0_getAttributeRole/-1958494126=([org.hibernate.boot.model.source.spi.AttributeSource], org.hibernate.boot.model.source.spi.AttributeRole), cast-from-var1123-to-var0=([org.hibernate.boot.model.source.spi.PluralAttributeSource], org.hibernate.boot.model.source.spi.AttributeSource), getFullPath/-1971906419=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), cast-from-var572-to-var2091=([org.hibernate.boot.model.source.spi.AttributeRole], org.hibernate.boot.model.source.spi.AbstractAttributeKey), setRole/-853473872=([org.hibernate.mapping.Collection, java.lang.String], void), var1123_isInverse/-400940078=([org.hibernate.boot.model.source.spi.PluralAttributeSource], boolean), setInverse/-1568905271=([org.hibernate.mapping.Collection, boolean], void), var1123_isMutable/135494684=([org.hibernate.boot.model.source.spi.PluralAttributeSource], boolean), setMutable/-1226373057=([org.hibernate.mapping.Collection, boolean], void), var0_isIncludedInOptimisticLocking/-250084387=([org.hibernate.boot.model.source.spi.AttributeSource], boolean), setOptimisticLocked/-2044219544=([org.hibernate.mapping.Collection, boolean], void), var1123_getCustomPersisterClassName/2100460460=([org.hibernate.boot.model.source.spi.PluralAttributeSource], java.lang.String), var1123_getCaching/-79713285=([org.hibernate.boot.model.source.spi.PluralAttributeSource], org.hibernate.boot.model.Caching), applyCaching/1814866614=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.internal.hbm.MappingDocument, org.hibernate.boot.model.Caching, org.hibernate.mapping.Collection], void), var0_getTypeInformation/-1023980057=([org.hibernate.boot.model.source.spi.AttributeSource], org.hibernate.boot.model.source.spi.HibernateTypeSource), var3439_getName/2029635040=([org.hibernate.boot.model.source.spi.HibernateTypeSource], java.lang.String), var3835-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var3439_getParameters/1104735320=([org.hibernate.boot.model.source.spi.HibernateTypeSource], java.util.Map), setTypeName/1885329121=([org.hibernate.mapping.Collection, java.lang.String], void), setTypeParameters/1436749705=([org.hibernate.mapping.Collection, java.util.Map], void), cast-from-var3835-to-var1741=([java.util.HashMap], java.util.Map), var1123_getFetchCharacteristics/-1863849588=([org.hibernate.boot.model.source.spi.PluralAttributeSource], org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute), var1136_getFetchTiming/-1403547897=([org.hibernate.boot.model.source.spi.FetchCharacteristics], org.hibernate.engine.FetchTiming), cast-from-var3338-to-var1136=([org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute], org.hibernate.boot.model.source.spi.FetchCharacteristics), setLazy/671706309=([org.hibernate.mapping.Collection, boolean], void), var1136_getFetchStyle/494150253=([org.hibernate.boot.model.source.spi.FetchCharacteristics], org.hibernate.engine.FetchStyle), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1682-to-var2712=([org.hibernate.engine.FetchStyle], java.lang.Enum), var3108-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1633728430=([java.lang.Enum], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var2384=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var311=r5, var1985=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var2446=r6, var1123=org.hibernate.boot.model.source.spi.PluralAttributeSource, var1593=r1, var99=org.hibernate.mapping.Collection, var1054=r0, var572=org.hibernate.boot.model.source.spi.AttributeRole, var0=org.hibernate.boot.model.source.spi.AttributeSource, var3615=$r2, var2091=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var2164=$r3, var952=$z0, var3878=$z1, var1612=$z2, var2746=$r4, var3780=null_type, var3956=org.hibernate.boot.model.Caching, var597=$r7, var3439=org.hibernate.boot.model.source.spi.HibernateTypeSource, var2038=$r8, var175=$r78, var2948=r79, var3835=java.util.HashMap, var2646=$r9, var796=$r81, var1741=java.util.Map, var3133=$r82, var3338=org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute, var3204=$r10, var1817=org.hibernate.engine.FetchTiming, var1136=org.hibernate.boot.model.source.spi.FetchCharacteristics, var2107=$r12, var2335=$r11, var3569=0, var447=org.hibernate.boot.model.source.internal.hbm.ModelBinder$15, var705=$r13, var1611=$r14, var1682=org.hibernate.engine.FetchStyle, var795=$r15, var2712=java.lang.Enum, var3232=$i0, var1649=$i1, var3108=org.hibernate.AssertionFailure, var3283=$r58, var3486=$r59, var2006=$r63, var749=$r60, var2439=$r61, var2556=$r62, var3544=$r64, var295=$r65}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var2384, r5=var311, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var1985, r6=var2446, org.hibernate.boot.model.source.spi.PluralAttributeSource=var1123, r1=var1593, org.hibernate.mapping.Collection=var99, r0=var1054, org.hibernate.boot.model.source.spi.AttributeRole=var572, org.hibernate.boot.model.source.spi.AttributeSource=var0, $r2=var3615, org.hibernate.boot.model.source.spi.AbstractAttributeKey=var2091, $r3=var2164, $z0=var952, $z1=var3878, $z2=var1612, $r4=var2746, null_type=var3780, org.hibernate.boot.model.Caching=var3956, $r7=var597, org.hibernate.boot.model.source.spi.HibernateTypeSource=var3439, $r8=var2038, $r78=var175, r79=var2948, java.util.HashMap=var3835, $r9=var2646, $r81=var796, java.util.Map=var1741, $r82=var3133, org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute=var3338, $r10=var3204, org.hibernate.engine.FetchTiming=var1817, org.hibernate.boot.model.source.spi.FetchCharacteristics=var1136, $r12=var2107, $r11=var2335, 0=var3569, org.hibernate.boot.model.source.internal.hbm.ModelBinder$15=var447, $r13=var705, $r14=var1611, org.hibernate.engine.FetchStyle=var1682, $r15=var795, java.lang.Enum=var2712, $i0=var3232, $i1=var1649, org.hibernate.AssertionFailure=var3108, $r58=var3283, $r59=var3486, $r63=var2006, $r60=var749, $r61=var2439, $r62=var2556, $r64=var3544, $r65=var295}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r6 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r1 := @parameter1: org.hibernate.boot.model.source.spi.PluralAttributeSource;	r0 := @parameter2: org.hibernate.mapping.Collection;	$r2 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>();	$r3 = virtualinvoke $r2.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>();	virtualinvoke r0.<org.hibernate.mapping.Collection: void setRole(java.lang.String)>($r3);	$z0 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: boolean isInverse()>();	virtualinvoke r0.<org.hibernate.mapping.Collection: void setInverse(boolean)>($z0);	$z1 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: boolean isMutable()>();	virtualinvoke r0.<org.hibernate.mapping.Collection: void setMutable(boolean)>($z1);	$z2 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: boolean isIncludedInOptimisticLocking()>();	virtualinvoke r0.<org.hibernate.mapping.Collection: void setOptimisticLocked(boolean)>($z2);	$r4 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: java.lang.String getCustomPersisterClassName()>();	if $r4 == null goto $r7 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.Caching getCaching()>();	$r7 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.Caching getCaching()>();	specialinvoke r5.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: void applyCaching(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.Caching,org.hibernate.mapping.Collection)>(r6, $r7, r0);	$r8 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>();	$r78 = interfaceinvoke $r8.<org.hibernate.boot.model.source.spi.HibernateTypeSource: java.lang.String getName()>();	r79 = $r78;	$r9 = new java.util.HashMap;	specialinvoke $r9.<java.util.HashMap: void <init>()>();	if $r78 == null goto $r81 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>();	$r81 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>();	$r82 = interfaceinvoke $r81.<org.hibernate.boot.model.source.spi.HibernateTypeSource: java.util.Map getParameters()>();	if $r82 == null goto virtualinvoke r0.<org.hibernate.mapping.Collection: void setTypeName(java.lang.String)>(r79);	virtualinvoke r0.<org.hibernate.mapping.Collection: void setTypeName(java.lang.String)>(r79);	virtualinvoke r0.<org.hibernate.mapping.Collection: void setTypeParameters(java.util.Map)>($r9);	$r10 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute getFetchCharacteristics()>();	$r12 = interfaceinvoke $r10.<org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute: org.hibernate.engine.FetchTiming getFetchTiming()>();	$r11 = <org.hibernate.engine.FetchTiming: org.hibernate.engine.FetchTiming DELAYED>;	if $r12 != $r11 goto virtualinvoke r0.<org.hibernate.mapping.Collection: void setLazy(boolean)>(0);	virtualinvoke r0.<org.hibernate.mapping.Collection: void setLazy(boolean)>(0);	$r13 = <org.hibernate.boot.model.source.internal.hbm.ModelBinder$15: int[] $SwitchMap$org$hibernate$engine$FetchStyle>;	$r14 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute getFetchCharacteristics()>();	$r15 = interfaceinvoke $r14.<org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute: org.hibernate.engine.FetchStyle getFetchStyle()>();	$i0 = virtualinvoke $r15.<org.hibernate.engine.FetchStyle: int ordinal()>();	$i1 = $r13[$i0];	tableswitch($i1) {     case 1: goto $r57 = <org.hibernate.FetchMode: org.hibernate.FetchMode SELECT>;     case 2: goto $r56 = <org.hibernate.FetchMode: org.hibernate.FetchMode JOIN>;     case 3: goto $r53 = <org.hibernate.FetchMode: org.hibernate.FetchMode SELECT>;     case 4: goto $r16 = <org.hibernate.FetchMode: org.hibernate.FetchMode SELECT>;     default: goto $r58 = new org.hibernate.AssertionFailure; };	$r58 = new org.hibernate.AssertionFailure;	$r59 = new java.lang.StringBuilder;	specialinvoke $r59.<java.lang.StringBuilder: void <init>()>();	$r63 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected FetchStyle : ");	$r60 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute getFetchCharacteristics()>();	$r61 = interfaceinvoke $r60.<org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute: org.hibernate.engine.FetchStyle getFetchStyle()>();	$r62 = virtualinvoke $r61.<org.hibernate.engine.FetchStyle: java.lang.String name()>();	$r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r58.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r65);	throw $r58
;block_num 7