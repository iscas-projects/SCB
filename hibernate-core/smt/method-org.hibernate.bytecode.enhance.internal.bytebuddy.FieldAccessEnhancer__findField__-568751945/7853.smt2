(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3392 0)
(declare-sort var2111 0)
(declare-sort var1379 0)
(declare-sort var2588 0)
(declare-sort var1260 0)
(declare-sort var2351 0)
(declare-sort var3793 0)
(declare-sort var2148 0)
(declare-sort var3398 0)
(declare-sort var3449 0)
(declare-sort var1779 0)
(declare-sort var1785 0)
(declare-sort var3767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2111-to-var2588 (var2111) var2588)
(declare-fun var2351_named/566861358 (String) var1260)
(declare-fun var2351_hasDescriptor/432890046 (String) var1260)
(declare-fun cast-from-var1260-to-var3793 (var1260) var3793)
(declare-fun var1260_and/1408787299 (var1260 var3793) var1260)
(declare-fun cast-from-var2111-to-var2148 (var2111) var2148)
(declare-fun var2148_getDeclaredFields/-1697419461 (var2148) var3398)
(declare-fun var3398_filter/-1316730816 (var3398 var3793) var3449)
(declare-fun cast-from-var3449-to-var3398 (var3449) var3398)
(declare-fun var3398_isEmpty/-1579480691 (var3398) Bool)
(declare-fun var3398_size/-81871728 (var3398) Int)
(declare-fun var1779-init () var1779)
(declare-fun enhancementContext/398000916 (var3392) var1785)
(declare-fun var3398_getOnly/-2127181139 (var3398) var2588)
(declare-fun cast-from-var2588-to-var3767 (var2588) var3767)
(declare-fun <init>/336250699 (var1779 var1785 var3767) void)
(declare-const null-var3392 var3392)
(declare-const null-var2111 var2111)
(declare-const null-String String)
(declare-const var743 var3392) ; Statement: r9 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer 
(assert (not (= var743 null-var3392)))
(declare-const var1383 var2111) ; Statement: r0 := @parameter0: net.bytebuddy.description.type.TypeDescription 
(assert (not (= var1383 null-var2111)))
(declare-const var2792 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2792 null-String)))
(declare-const var1470 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1470 null-String)))
(define-const var196 var2588 (cast-from-var2111-to-var2588 var1383)) ; Statement: r20 = r0 
(define-const var3974 var1260 (var2351_named/566861358 var2792)) ; Statement: $r4 = staticinvoke <net.bytebuddy.matcher.ElementMatchers: net.bytebuddy.matcher.ElementMatcher$Junction named(java.lang.String)>(r1) 
(define-const var209 var1260 (var2351_hasDescriptor/432890046 var1470)) ; Statement: $r3 = staticinvoke <net.bytebuddy.matcher.ElementMatchers: net.bytebuddy.matcher.ElementMatcher$Junction hasDescriptor(java.lang.String)>(r2) 
(define-const var3447 var3793 (cast-from-var1260-to-var3793 var209)) ; Statement: $r24 = (net.bytebuddy.matcher.ElementMatcher) $r3 
(define-const var135 var1260 (var1260_and/1408787299 var3974 var3447)) ; Statement: r5 = interfaceinvoke $r4.<net.bytebuddy.matcher.ElementMatcher$Junction: net.bytebuddy.matcher.ElementMatcher$Junction and(net.bytebuddy.matcher.ElementMatcher)>($r24) 
(define-const var2564 var2148 (cast-from-var2111-to-var2148 var1383)) ; Statement: $r25 = (net.bytebuddy.description.type.TypeDefinition) r0 
(define-const var1711 var3398 (var2148_getDeclaredFields/-1697419461 var2564)) ; Statement: $r6 = interfaceinvoke $r25.<net.bytebuddy.description.type.TypeDefinition: net.bytebuddy.description.field.FieldList getDeclaredFields()>() 
(define-const var1350 var3793 (cast-from-var1260-to-var3793 var135)) ; Statement: $r26 = (net.bytebuddy.matcher.ElementMatcher) r5 
(define-const var3235 var3449 (var3398_filter/-1316730816 var1711 var1350)) ; Statement: $r7 = interfaceinvoke $r6.<net.bytebuddy.description.field.FieldList: net.bytebuddy.matcher.FilterableList filter(net.bytebuddy.matcher.ElementMatcher)>($r26) 
(define-const var3193 var3398 (cast-from-var3449-to-var3398 var3235)) ; Statement: r21 = (net.bytebuddy.description.field.FieldList) $r7 
(assert true) ; Non Conditional
(define-const var2009 Bool (var3398_isEmpty/-1579480691 var3193)) ; Statement: $z0 = interfaceinvoke r21.<net.bytebuddy.description.field.FieldList: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $i0 = interfaceinvoke r21.<net.bytebuddy.description.field.FieldList: int size()>() 
(assert (= (ite var2009 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3485 Int (var3398_size/-81871728 var3193)) ; Statement: $i0 = interfaceinvoke r21.<net.bytebuddy.description.field.FieldList: int size()>() 
 ; Statement: if $i0 == 1 goto $r23 = new org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription 
(assert (= var3485 1)) ; Cond: $i0 == 1 
(define-const var3908 var1779 var1779-init) ; Statement: $r23 = new org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription 
(define-const var1621 var1785 (enhancementContext/398000916 var743)) ; Statement: $r10 = r9.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer: org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext enhancementContext> 
(define-const var1300 var2588 (var3398_getOnly/-2127181139 var3193)) ; Statement: $r11 = interfaceinvoke r21.<net.bytebuddy.description.field.FieldList: java.lang.Object getOnly()>() 
(define-const var3367 var3767 (cast-from-var2588-to-var3767 var1300)) ; Statement: $r12 = (net.bytebuddy.description.field.FieldDescription) $r11 
(assert true)
;(assert (<init>/336250699 var3908 var1621 var3367)) ; Statement: specialinvoke $r23.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription: void <init>(org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext,net.bytebuddy.description.field.FieldDescription)>($r10, $r12) 

(declare-const var3908!1 var1779)
(declare-const var1621!1 var1785)
(declare-const var3367!1 var3767)
 ; Statement: return $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2111-to-var2588=([net.bytebuddy.description.type.TypeDescription], java.lang.Object), var2351_named/566861358=([java.lang.String], net.bytebuddy.matcher.ElementMatcher$Junction), var2351_hasDescriptor/432890046=([java.lang.String], net.bytebuddy.matcher.ElementMatcher$Junction), cast-from-var1260-to-var3793=([net.bytebuddy.matcher.ElementMatcher$Junction], net.bytebuddy.matcher.ElementMatcher), var1260_and/1408787299=([net.bytebuddy.matcher.ElementMatcher$Junction, net.bytebuddy.matcher.ElementMatcher], net.bytebuddy.matcher.ElementMatcher$Junction), cast-from-var2111-to-var2148=([net.bytebuddy.description.type.TypeDescription], net.bytebuddy.description.type.TypeDefinition), var2148_getDeclaredFields/-1697419461=([net.bytebuddy.description.type.TypeDefinition], net.bytebuddy.description.field.FieldList), var3398_filter/-1316730816=([net.bytebuddy.description.field.FieldList, net.bytebuddy.matcher.ElementMatcher], net.bytebuddy.matcher.FilterableList), cast-from-var3449-to-var3398=([net.bytebuddy.matcher.FilterableList], net.bytebuddy.description.field.FieldList), var3398_isEmpty/-1579480691=([net.bytebuddy.description.field.FieldList], boolean), var3398_size/-81871728=([net.bytebuddy.description.field.FieldList], int), var1779-init=([], org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription), enhancementContext/398000916=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer], org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext), var3398_getOnly/-2127181139=([net.bytebuddy.description.field.FieldList], java.lang.Object), cast-from-var2588-to-var3767=([java.lang.Object], net.bytebuddy.description.field.FieldDescription), <init>/336250699=([org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription, org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext, net.bytebuddy.description.field.FieldDescription], void)}
; {var3392=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer, var743=r9, var2111=net.bytebuddy.description.type.TypeDescription, var1383=r0, var2792=r1, var1379=null_type, var1470=r2, var2588=java.lang.Object, var196=r20, var1260=net.bytebuddy.matcher.ElementMatcher$Junction, var2351=net.bytebuddy.matcher.ElementMatchers, var3974=$r4, var209=$r3, var3793=net.bytebuddy.matcher.ElementMatcher, var3447=$r24, var135=r5, var2148=net.bytebuddy.description.type.TypeDefinition, var2564=$r25, var3398=net.bytebuddy.description.field.FieldList, var1711=$r6, var1350=$r26, var3449=net.bytebuddy.matcher.FilterableList, var3235=$r7, var3193=r21, var2009=$z0, var3485=$i0, var1779=org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription, var3908=$r23, var1785=org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext, var1621=$r10, var1300=$r11, var3767=net.bytebuddy.description.field.FieldDescription, var3367=$r12}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer=var3392, r9=var743, net.bytebuddy.description.type.TypeDescription=var2111, r0=var1383, r1=var2792, null_type=var1379, r2=var1470, java.lang.Object=var2588, r20=var196, net.bytebuddy.matcher.ElementMatcher$Junction=var1260, net.bytebuddy.matcher.ElementMatchers=var2351, $r4=var3974, $r3=var209, net.bytebuddy.matcher.ElementMatcher=var3793, $r24=var3447, r5=var135, net.bytebuddy.description.type.TypeDefinition=var2148, $r25=var2564, net.bytebuddy.description.field.FieldList=var3398, $r6=var1711, $r26=var1350, net.bytebuddy.matcher.FilterableList=var3449, $r7=var3235, r21=var3193, $z0=var2009, $i0=var3485, org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription=var1779, $r23=var3908, org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext=var1785, $r10=var1621, $r11=var1300, net.bytebuddy.description.field.FieldDescription=var3767, $r12=var3367}
;seq 
;cnt {}
;stmts r9 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer;	r0 := @parameter0: net.bytebuddy.description.type.TypeDescription;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r20 = r0;	$r4 = staticinvoke <net.bytebuddy.matcher.ElementMatchers: net.bytebuddy.matcher.ElementMatcher$Junction named(java.lang.String)>(r1);	$r3 = staticinvoke <net.bytebuddy.matcher.ElementMatchers: net.bytebuddy.matcher.ElementMatcher$Junction hasDescriptor(java.lang.String)>(r2);	$r24 = (net.bytebuddy.matcher.ElementMatcher) $r3;	r5 = interfaceinvoke $r4.<net.bytebuddy.matcher.ElementMatcher$Junction: net.bytebuddy.matcher.ElementMatcher$Junction and(net.bytebuddy.matcher.ElementMatcher)>($r24);	$r25 = (net.bytebuddy.description.type.TypeDefinition) r0;	$r6 = interfaceinvoke $r25.<net.bytebuddy.description.type.TypeDefinition: net.bytebuddy.description.field.FieldList getDeclaredFields()>();	$r26 = (net.bytebuddy.matcher.ElementMatcher) r5;	$r7 = interfaceinvoke $r6.<net.bytebuddy.description.field.FieldList: net.bytebuddy.matcher.FilterableList filter(net.bytebuddy.matcher.ElementMatcher)>($r26);	r21 = (net.bytebuddy.description.field.FieldList) $r7;	$z0 = interfaceinvoke r21.<net.bytebuddy.description.field.FieldList: boolean isEmpty()>();	if $z0 == 0 goto $i0 = interfaceinvoke r21.<net.bytebuddy.description.field.FieldList: int size()>();	$i0 = interfaceinvoke r21.<net.bytebuddy.description.field.FieldList: int size()>();	if $i0 == 1 goto $r23 = new org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription;	$r23 = new org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription;	$r10 = r9.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer: org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext enhancementContext>;	$r11 = interfaceinvoke r21.<net.bytebuddy.description.field.FieldList: java.lang.Object getOnly()>();	$r12 = (net.bytebuddy.description.field.FieldDescription) $r11;	specialinvoke $r23.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription: void <init>(org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext,net.bytebuddy.description.field.FieldDescription)>($r10, $r12);	return $r23
;block_num 4