(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1420 0)
(declare-sort var1127 0)
(declare-sort var3157 0)
(declare-sort var815 0)
(declare-sort var2500 0)
(declare-sort var1223 0)
(declare-sort var2579 0)
(declare-sort var1329 0)
(declare-sort var100 0)
(declare-sort var1313 0)
(declare-sort var2280 0)
(declare-sort var2072 0)
(declare-sort var3878 0)
(declare-sort var2857 0)
(declare-sort var486 0)
(declare-sort var2765 0)
(declare-sort var2544 0)
(declare-sort var3520 0)
(declare-sort var3482 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1223_getAttributeRole/-1958494126 (var1223) var2500)
(declare-fun cast-from-var3157-to-var1223 (var3157) var1223)
(declare-fun getFullPath/-1971906419 (var2579) String)
(declare-fun cast-from-var2500-to-var2579 (var2500) var2579)
(declare-fun setRole/-853473872 (var815 String) void)
(declare-fun var3157_isInverse/-400940078 (var3157) Bool)
(declare-fun setInverse/-1568905271 (var815 Bool) void)
(declare-fun var3157_isMutable/135494684 (var3157) Bool)
(declare-fun setMutable/-1226373057 (var815 Bool) void)
(declare-fun var1223_isIncludedInOptimisticLocking/-250084387 (var1223) Bool)
(declare-fun setOptimisticLocked/-2044219544 (var815 Bool) void)
(declare-fun var3157_getCustomPersisterClassName/2100460460 (var3157) String)
(declare-fun var3157_getCaching/-79713285 (var3157) var100)
(declare-fun applyCaching/1814866614 (var1420 var1127 var100 var815) void)
(declare-fun var1223_getTypeInformation/-1023980057 (var1223) var1313)
(declare-fun var1313_getName/2029635040 (var1313) String)
(declare-fun var2280-init () var2280)
(declare-fun <init>/-201242697 (var2280) void)
(declare-fun var1313_getParameters/1104735320 (var1313) var2072)
(declare-fun setTypeName/1885329121 (var815 String) void)
(declare-fun setTypeParameters/1436749705 (var815 var2072) void)
(declare-fun cast-from-var2280-to-var2072 (var2280) var2072)
(declare-fun var3157_getFetchCharacteristics/-1863849588 (var3157) var3878)
(declare-fun var486_getFetchTiming/-1403547897 (var486) var2857)
(declare-fun cast-from-var3878-to-var486 (var3878) var486)
(declare-fun setLazy/671706309 (var815 Bool) void)
(declare-fun var3878_isExtraLazy/291719397 (var3878) Bool)
(declare-fun setExtraLazy/257234493 (var815 Bool) void)
(declare-fun var486_getFetchStyle/494150253 (var486) var2544)
(declare-fun ordinal/-291641772 (var3520) Int)
(declare-fun cast-from-var2544-to-var3520 (var2544) var3520)
(declare-fun var3482-init () var3482)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1633728430 (var3520) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var3482 String) void)
(declare-const null-var1420 var1420)
(declare-const null-var1127 var1127)
(declare-const null-var3157 var3157)
(declare-const null-var815 var815)
(declare-const null-String String)
(declare-const null-var2072 var2072)
(declare-const var2857-DELAYED var2857)
(declare-const var2765-$SwitchMap$org$hibernate$engine$FetchStyle (Array Int Int))
(declare-const var1193 var1420) ; Statement: r5 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var1193 null-var1420)))
(declare-const var3269 var1127) ; Statement: r6 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var3269 null-var1127)))
(declare-const var1542 var3157) ; Statement: r1 := @parameter1: org.hibernate.boot.model.source.spi.PluralAttributeSource 
(assert (not (= var1542 null-var3157)))
(declare-const var2646 var815) ; Statement: r0 := @parameter2: org.hibernate.mapping.Collection 
(assert (not (= var2646 null-var815)))
(define-const var881 var2500 (var1223_getAttributeRole/-1958494126 (cast-from-var3157-to-var1223 var1542))) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>() 
(assert true)
(define-const var3211 String (getFullPath/-1971906419 (cast-from-var2500-to-var2579 var881))) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>() 
(assert true)
;(assert (setRole/-853473872 var2646 var3211)) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setRole(java.lang.String)>($r3) 

(declare-const var2646!1 var815)
(declare-const var3211!1 String)
(define-const var363 Bool (var3157_isInverse/-400940078 var1542)) ; Statement: $z0 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: boolean isInverse()>() 
(assert true)
;(assert (setInverse/-1568905271 var2646!1 var363)) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setInverse(boolean)>($z0) 

(declare-const var2646!2 var815)
(declare-const var363!1 Bool)
(define-const var756 Bool (var3157_isMutable/135494684 var1542)) ; Statement: $z1 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: boolean isMutable()>() 
(assert true)
;(assert (setMutable/-1226373057 var2646!2 var756)) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setMutable(boolean)>($z1) 

(declare-const var2646!3 var815)
(declare-const var756!1 Bool)
(define-const var2546 Bool (var1223_isIncludedInOptimisticLocking/-250084387 (cast-from-var3157-to-var1223 var1542))) ; Statement: $z2 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: boolean isIncludedInOptimisticLocking()>() 
(assert true)
;(assert (setOptimisticLocked/-2044219544 var2646!3 var2546)) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setOptimisticLocked(boolean)>($z2) 

(declare-const var2646!4 var815)
(declare-const var2546!1 Bool)
(define-const var1254 String (var3157_getCustomPersisterClassName/2100460460 var1542)) ; Statement: $r4 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: java.lang.String getCustomPersisterClassName()>() 
 ; Statement: if $r4 == null goto $r7 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.Caching getCaching()>() 
(assert (= var1254 null-String)) ; Cond: $r4 == null 
(define-const var1049 var100 (var3157_getCaching/-79713285 var1542)) ; Statement: $r7 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.Caching getCaching()>() 
(assert true)
;(assert (applyCaching/1814866614 var1193 var3269 var1049 var2646!4)) ; Statement: specialinvoke r5.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: void applyCaching(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.Caching,org.hibernate.mapping.Collection)>(r6, $r7, r0) 

(declare-const var1193!1 var1420)
(declare-const var3269!1 var1127)
(declare-const var1049!1 var100)
(declare-const var2646!5 var815)
(define-const var1573 var1313 (var1223_getTypeInformation/-1023980057 (cast-from-var3157-to-var1223 var1542))) ; Statement: $r8 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>() 
(define-const var961 String (var1313_getName/2029635040 var1573)) ; Statement: $r78 = interfaceinvoke $r8.<org.hibernate.boot.model.source.spi.HibernateTypeSource: java.lang.String getName()>() 
(define-const var3858 String var961) ; Statement: r79 = $r78 
(define-const var304 var2280 var2280-init) ; Statement: $r9 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var304)) ; Statement: specialinvoke $r9.<java.util.HashMap: void <init>()>() 

(declare-const var304!1 var2280)
 ; Statement: if $r78 == null goto $r81 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>() 
(assert (= var961 null-String)) ; Cond: $r78 == null 
(define-const var3141 var1313 (var1223_getTypeInformation/-1023980057 (cast-from-var3157-to-var1223 var1542))) ; Statement: $r81 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>() 
(define-const var2612 var2072 (var1313_getParameters/1104735320 var3141)) ; Statement: $r82 = interfaceinvoke $r81.<org.hibernate.boot.model.source.spi.HibernateTypeSource: java.util.Map getParameters()>() 
 ; Statement: if $r82 == null goto virtualinvoke r0.<org.hibernate.mapping.Collection: void setTypeName(java.lang.String)>(r79) 
(assert (= var2612 null-var2072)) ; Cond: $r82 == null 
(assert true)
;(assert (setTypeName/1885329121 var2646!5 var3858)) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setTypeName(java.lang.String)>(r79) 

(declare-const var2646!6 var815)
(declare-const var3858!1 String)
(assert true)
;(assert (setTypeParameters/1436749705 var2646!6 (cast-from-var2280-to-var2072 var304!1))) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setTypeParameters(java.util.Map)>($r9) 

(declare-const var2646!7 var815)
(declare-const var304!2 var2280)
(define-const var3040 var3878 (var3157_getFetchCharacteristics/-1863849588 var1542)) ; Statement: $r10 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute getFetchCharacteristics()>() 
(define-const var1331 var2857 (var486_getFetchTiming/-1403547897 (cast-from-var3878-to-var486 var3040))) ; Statement: $r12 = interfaceinvoke $r10.<org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute: org.hibernate.engine.FetchTiming getFetchTiming()>() 
(define-const var3649 var2857 var2857-DELAYED) ; Statement: $r11 = <org.hibernate.engine.FetchTiming: org.hibernate.engine.FetchTiming DELAYED> 
 ; Statement: if $r12 != $r11 goto virtualinvoke r0.<org.hibernate.mapping.Collection: void setLazy(boolean)>(0) 
(assert (not (not (= var1331 var3649)))) ; Negate: Cond: $r12 != $r11  
(assert true)
;(assert (setLazy/671706309 var2646!7 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setLazy(boolean)>(1) 

(declare-const var2646!8 var815)
(declare-const var2795 Int)
(define-const var3156 var3878 (var3157_getFetchCharacteristics/-1863849588 var1542)) ; Statement: $r66 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute getFetchCharacteristics()>() 
(define-const var991 Bool (var3878_isExtraLazy/291719397 var3156)) ; Statement: $z12 = interfaceinvoke $r66.<org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute: boolean isExtraLazy()>() 
(assert true)
;(assert (setExtraLazy/257234493 var2646!8 var991)) ; Statement: virtualinvoke r0.<org.hibernate.mapping.Collection: void setExtraLazy(boolean)>($z12) 

(declare-const var2646!9 var815)
(declare-const var991!1 Bool)
 ; Statement: goto [?= $r13 = <org.hibernate.boot.model.source.internal.hbm.ModelBinder$15: int[] $SwitchMap$org$hibernate$engine$FetchStyle>] 
(assert true) ; Non Conditional
(define-const var3285 (Array Int Int) var2765-$SwitchMap$org$hibernate$engine$FetchStyle) ; Statement: $r13 = <org.hibernate.boot.model.source.internal.hbm.ModelBinder$15: int[] $SwitchMap$org$hibernate$engine$FetchStyle> 
(define-const var2097 var3878 (var3157_getFetchCharacteristics/-1863849588 var1542)) ; Statement: $r14 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute getFetchCharacteristics()>() 
(define-const var3541 var2544 (var486_getFetchStyle/494150253 (cast-from-var3878-to-var486 var2097))) ; Statement: $r15 = interfaceinvoke $r14.<org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute: org.hibernate.engine.FetchStyle getFetchStyle()>() 
(assert true)
(define-const var3464 Int (ordinal/-291641772 (cast-from-var2544-to-var3520 var3541))) ; Statement: $i0 = virtualinvoke $r15.<org.hibernate.engine.FetchStyle: int ordinal()>() 
(define-const var1808 Int (select var3285 var3464)) ; Statement: $i1 = $r13[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r57 = <org.hibernate.FetchMode: org.hibernate.FetchMode SELECT>;     case 2: goto $r56 = <org.hibernate.FetchMode: org.hibernate.FetchMode JOIN>;     case 3: goto $r53 = <org.hibernate.FetchMode: org.hibernate.FetchMode SELECT>;     case 4: goto $r16 = <org.hibernate.FetchMode: org.hibernate.FetchMode SELECT>;     default: goto $r58 = new org.hibernate.AssertionFailure; } 
(assert (and (not (= var1808 4)) (and (not (= var1808 3)) (and (not (= var1808 2)) (and (not (= var1808 1)) true))))) ; Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var2854 var3482 var3482-init) ; Statement: $r58 = new org.hibernate.AssertionFailure 
(define-const var2982 String String-init) ; Statement: $r59 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2982)) ; Statement: specialinvoke $r59.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2982!1 String)
(assert (= var2982!1 ""))
(assert true)
(define-const var2998 String (append/672562846 var2982!1 "Unexpected FetchStyle : ")) ; Statement: $r63 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected FetchStyle : ") 
(declare-const var2982!2 String)
(assert (= var2982!2 (str.++ var2982!1 "Unexpected FetchStyle : ")))
(define-const var398 var3878 (var3157_getFetchCharacteristics/-1863849588 var1542)) ; Statement: $r60 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute getFetchCharacteristics()>() 
(define-const var3230 var2544 (var486_getFetchStyle/494150253 (cast-from-var3878-to-var486 var398))) ; Statement: $r61 = interfaceinvoke $r60.<org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute: org.hibernate.engine.FetchStyle getFetchStyle()>() 
(assert true)
(define-const var3113 String (name/1633728430 (cast-from-var2544-to-var3520 var3230))) ; Statement: $r62 = virtualinvoke $r61.<org.hibernate.engine.FetchStyle: java.lang.String name()>() 
(assert true)
(define-const var742 String (append/672562846 var2998 var3113)) ; Statement: $r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62) 
(declare-const var2998!1 String)
(assert (= var2998!1 (str.++ var2998 var3113)))
(assert true)
(define-const var2053 String (toString/-2075883882 var742)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var2854 var2053)) ; Statement: specialinvoke $r58.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r65) 

(declare-const var2854!1 var3482)
(declare-const var2053!1 String)
 ; Statement: throw $r58 
(check-sat)
(get-model)
(get-unsat-core)
; {var1223_getAttributeRole/-1958494126=([org.hibernate.boot.model.source.spi.AttributeSource], org.hibernate.boot.model.source.spi.AttributeRole), cast-from-var3157-to-var1223=([org.hibernate.boot.model.source.spi.PluralAttributeSource], org.hibernate.boot.model.source.spi.AttributeSource), getFullPath/-1971906419=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), cast-from-var2500-to-var2579=([org.hibernate.boot.model.source.spi.AttributeRole], org.hibernate.boot.model.source.spi.AbstractAttributeKey), setRole/-853473872=([org.hibernate.mapping.Collection, java.lang.String], void), var3157_isInverse/-400940078=([org.hibernate.boot.model.source.spi.PluralAttributeSource], boolean), setInverse/-1568905271=([org.hibernate.mapping.Collection, boolean], void), var3157_isMutable/135494684=([org.hibernate.boot.model.source.spi.PluralAttributeSource], boolean), setMutable/-1226373057=([org.hibernate.mapping.Collection, boolean], void), var1223_isIncludedInOptimisticLocking/-250084387=([org.hibernate.boot.model.source.spi.AttributeSource], boolean), setOptimisticLocked/-2044219544=([org.hibernate.mapping.Collection, boolean], void), var3157_getCustomPersisterClassName/2100460460=([org.hibernate.boot.model.source.spi.PluralAttributeSource], java.lang.String), var3157_getCaching/-79713285=([org.hibernate.boot.model.source.spi.PluralAttributeSource], org.hibernate.boot.model.Caching), applyCaching/1814866614=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.internal.hbm.MappingDocument, org.hibernate.boot.model.Caching, org.hibernate.mapping.Collection], void), var1223_getTypeInformation/-1023980057=([org.hibernate.boot.model.source.spi.AttributeSource], org.hibernate.boot.model.source.spi.HibernateTypeSource), var1313_getName/2029635040=([org.hibernate.boot.model.source.spi.HibernateTypeSource], java.lang.String), var2280-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var1313_getParameters/1104735320=([org.hibernate.boot.model.source.spi.HibernateTypeSource], java.util.Map), setTypeName/1885329121=([org.hibernate.mapping.Collection, java.lang.String], void), setTypeParameters/1436749705=([org.hibernate.mapping.Collection, java.util.Map], void), cast-from-var2280-to-var2072=([java.util.HashMap], java.util.Map), var3157_getFetchCharacteristics/-1863849588=([org.hibernate.boot.model.source.spi.PluralAttributeSource], org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute), var486_getFetchTiming/-1403547897=([org.hibernate.boot.model.source.spi.FetchCharacteristics], org.hibernate.engine.FetchTiming), cast-from-var3878-to-var486=([org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute], org.hibernate.boot.model.source.spi.FetchCharacteristics), setLazy/671706309=([org.hibernate.mapping.Collection, boolean], void), var3878_isExtraLazy/291719397=([org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute], boolean), setExtraLazy/257234493=([org.hibernate.mapping.Collection, boolean], void), var486_getFetchStyle/494150253=([org.hibernate.boot.model.source.spi.FetchCharacteristics], org.hibernate.engine.FetchStyle), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2544-to-var3520=([org.hibernate.engine.FetchStyle], java.lang.Enum), var3482-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1633728430=([java.lang.Enum], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var1420=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var1193=r5, var1127=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var3269=r6, var3157=org.hibernate.boot.model.source.spi.PluralAttributeSource, var1542=r1, var815=org.hibernate.mapping.Collection, var2646=r0, var2500=org.hibernate.boot.model.source.spi.AttributeRole, var1223=org.hibernate.boot.model.source.spi.AttributeSource, var881=$r2, var2579=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var3211=$r3, var363=$z0, var756=$z1, var2546=$z2, var1254=$r4, var1329=null_type, var100=org.hibernate.boot.model.Caching, var1049=$r7, var1313=org.hibernate.boot.model.source.spi.HibernateTypeSource, var1573=$r8, var961=$r78, var3858=r79, var2280=java.util.HashMap, var304=$r9, var3141=$r81, var2072=java.util.Map, var2612=$r82, var3878=org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute, var3040=$r10, var2857=org.hibernate.engine.FetchTiming, var486=org.hibernate.boot.model.source.spi.FetchCharacteristics, var1331=$r12, var3649=$r11, var2795=1, var3156=$r66, var991=$z12, var2765=org.hibernate.boot.model.source.internal.hbm.ModelBinder$15, var3285=$r13, var2097=$r14, var2544=org.hibernate.engine.FetchStyle, var3541=$r15, var3520=java.lang.Enum, var3464=$i0, var1808=$i1, var3482=org.hibernate.AssertionFailure, var2854=$r58, var2982=$r59, var2998=$r63, var398=$r60, var3230=$r61, var3113=$r62, var742=$r64, var2053=$r65}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var1420, r5=var1193, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var1127, r6=var3269, org.hibernate.boot.model.source.spi.PluralAttributeSource=var3157, r1=var1542, org.hibernate.mapping.Collection=var815, r0=var2646, org.hibernate.boot.model.source.spi.AttributeRole=var2500, org.hibernate.boot.model.source.spi.AttributeSource=var1223, $r2=var881, org.hibernate.boot.model.source.spi.AbstractAttributeKey=var2579, $r3=var3211, $z0=var363, $z1=var756, $z2=var2546, $r4=var1254, null_type=var1329, org.hibernate.boot.model.Caching=var100, $r7=var1049, org.hibernate.boot.model.source.spi.HibernateTypeSource=var1313, $r8=var1573, $r78=var961, r79=var3858, java.util.HashMap=var2280, $r9=var304, $r81=var3141, java.util.Map=var2072, $r82=var2612, org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute=var3878, $r10=var3040, org.hibernate.engine.FetchTiming=var2857, org.hibernate.boot.model.source.spi.FetchCharacteristics=var486, $r12=var1331, $r11=var3649, 1=var2795, $r66=var3156, $z12=var991, org.hibernate.boot.model.source.internal.hbm.ModelBinder$15=var2765, $r13=var3285, $r14=var2097, org.hibernate.engine.FetchStyle=var2544, $r15=var3541, java.lang.Enum=var3520, $i0=var3464, $i1=var1808, org.hibernate.AssertionFailure=var3482, $r58=var2854, $r59=var2982, $r63=var2998, $r60=var398, $r61=var3230, $r62=var3113, $r64=var742, $r65=var2053}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r6 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r1 := @parameter1: org.hibernate.boot.model.source.spi.PluralAttributeSource;	r0 := @parameter2: org.hibernate.mapping.Collection;	$r2 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>();	$r3 = virtualinvoke $r2.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>();	virtualinvoke r0.<org.hibernate.mapping.Collection: void setRole(java.lang.String)>($r3);	$z0 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: boolean isInverse()>();	virtualinvoke r0.<org.hibernate.mapping.Collection: void setInverse(boolean)>($z0);	$z1 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: boolean isMutable()>();	virtualinvoke r0.<org.hibernate.mapping.Collection: void setMutable(boolean)>($z1);	$z2 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: boolean isIncludedInOptimisticLocking()>();	virtualinvoke r0.<org.hibernate.mapping.Collection: void setOptimisticLocked(boolean)>($z2);	$r4 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: java.lang.String getCustomPersisterClassName()>();	if $r4 == null goto $r7 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.Caching getCaching()>();	$r7 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.Caching getCaching()>();	specialinvoke r5.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: void applyCaching(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.Caching,org.hibernate.mapping.Collection)>(r6, $r7, r0);	$r8 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>();	$r78 = interfaceinvoke $r8.<org.hibernate.boot.model.source.spi.HibernateTypeSource: java.lang.String getName()>();	r79 = $r78;	$r9 = new java.util.HashMap;	specialinvoke $r9.<java.util.HashMap: void <init>()>();	if $r78 == null goto $r81 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>();	$r81 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>();	$r82 = interfaceinvoke $r81.<org.hibernate.boot.model.source.spi.HibernateTypeSource: java.util.Map getParameters()>();	if $r82 == null goto virtualinvoke r0.<org.hibernate.mapping.Collection: void setTypeName(java.lang.String)>(r79);	virtualinvoke r0.<org.hibernate.mapping.Collection: void setTypeName(java.lang.String)>(r79);	virtualinvoke r0.<org.hibernate.mapping.Collection: void setTypeParameters(java.util.Map)>($r9);	$r10 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute getFetchCharacteristics()>();	$r12 = interfaceinvoke $r10.<org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute: org.hibernate.engine.FetchTiming getFetchTiming()>();	$r11 = <org.hibernate.engine.FetchTiming: org.hibernate.engine.FetchTiming DELAYED>;	if $r12 != $r11 goto virtualinvoke r0.<org.hibernate.mapping.Collection: void setLazy(boolean)>(0);	virtualinvoke r0.<org.hibernate.mapping.Collection: void setLazy(boolean)>(1);	$r66 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute getFetchCharacteristics()>();	$z12 = interfaceinvoke $r66.<org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute: boolean isExtraLazy()>();	virtualinvoke r0.<org.hibernate.mapping.Collection: void setExtraLazy(boolean)>($z12);	goto [?= $r13 = <org.hibernate.boot.model.source.internal.hbm.ModelBinder$15: int[] $SwitchMap$org$hibernate$engine$FetchStyle>];	$r13 = <org.hibernate.boot.model.source.internal.hbm.ModelBinder$15: int[] $SwitchMap$org$hibernate$engine$FetchStyle>;	$r14 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute getFetchCharacteristics()>();	$r15 = interfaceinvoke $r14.<org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute: org.hibernate.engine.FetchStyle getFetchStyle()>();	$i0 = virtualinvoke $r15.<org.hibernate.engine.FetchStyle: int ordinal()>();	$i1 = $r13[$i0];	tableswitch($i1) {     case 1: goto $r57 = <org.hibernate.FetchMode: org.hibernate.FetchMode SELECT>;     case 2: goto $r56 = <org.hibernate.FetchMode: org.hibernate.FetchMode JOIN>;     case 3: goto $r53 = <org.hibernate.FetchMode: org.hibernate.FetchMode SELECT>;     case 4: goto $r16 = <org.hibernate.FetchMode: org.hibernate.FetchMode SELECT>;     default: goto $r58 = new org.hibernate.AssertionFailure; };	$r58 = new org.hibernate.AssertionFailure;	$r59 = new java.lang.StringBuilder;	specialinvoke $r59.<java.lang.StringBuilder: void <init>()>();	$r63 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected FetchStyle : ");	$r60 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute getFetchCharacteristics()>();	$r61 = interfaceinvoke $r60.<org.hibernate.boot.model.source.spi.FetchCharacteristicsPluralAttribute: org.hibernate.engine.FetchStyle getFetchStyle()>();	$r62 = virtualinvoke $r61.<org.hibernate.engine.FetchStyle: java.lang.String name()>();	$r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r58.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r65);	throw $r58
;block_num 7