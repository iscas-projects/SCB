(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3754 0)
(declare-sort var3339 0)
(declare-sort var3856 0)
(declare-sort var660 0)
(declare-sort var109 0)
(declare-sort var2547 0)
(declare-sort var3739 0)
(declare-sort var1238 0)
(declare-sort var2131 0)
(declare-sort var757 0)
(declare-sort var433 0)
(declare-sort var1580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3339-to-var660 (var3339) var660)
(declare-fun var2547_named/566861358 (String) var109)
(declare-fun var2547_hasDescriptor/432890046 (String) var109)
(declare-fun cast-from-var109-to-var3739 (var109) var3739)
(declare-fun var109_and/1408787299 (var109 var3739) var109)
(declare-fun cast-from-var3339-to-var1238 (var3339) var1238)
(declare-fun var1238_getDeclaredFields/-1697419461 (var1238) var2131)
(declare-fun var2131_filter/-1316730816 (var2131 var3739) var757)
(declare-fun cast-from-var757-to-var2131 (var757) var2131)
(declare-fun var2131_isEmpty/-1579480691 (var2131) Bool)
(declare-fun var2131_size/-81871728 (var2131) Int)
(declare-fun arr-var660-init () (Array Int var660))
(declare-fun cast-from-String-to-var660 (String) var660)
(declare-fun var3339_getName/901289460 (var3339) String)
(declare-fun String_format/1339386452 (String (Array Int var660)) String)
(declare-fun var433-init () var433)
(declare-fun <init>/-1582507930 (var433 String) void)
(declare-fun cast-from-var433-to-var1580 (var433) var1580)
(declare-const null-var3754 var3754)
(declare-const null-var3339 var3339)
(declare-const null-String String)
(declare-const null-__Array__Int__var660__ (Array Int var660))
(declare-const var1410 var3754) ; Statement: r9 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer 
(assert (not (= var1410 null-var3754)))
(declare-const var1300 var3339) ; Statement: r0 := @parameter0: net.bytebuddy.description.type.TypeDescription 
(assert (not (= var1300 null-var3339)))
(declare-const var2116 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2116 null-String)))
(declare-const var1886 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1886 null-String)))
(define-const var580 var660 (cast-from-var3339-to-var660 var1300)) ; Statement: r20 = r0 
(define-const var3917 var109 (var2547_named/566861358 var2116)) ; Statement: $r4 = staticinvoke <net.bytebuddy.matcher.ElementMatchers: net.bytebuddy.matcher.ElementMatcher$Junction named(java.lang.String)>(r1) 
(define-const var73 var109 (var2547_hasDescriptor/432890046 var1886)) ; Statement: $r3 = staticinvoke <net.bytebuddy.matcher.ElementMatchers: net.bytebuddy.matcher.ElementMatcher$Junction hasDescriptor(java.lang.String)>(r2) 
(define-const var143 var3739 (cast-from-var109-to-var3739 var73)) ; Statement: $r24 = (net.bytebuddy.matcher.ElementMatcher) $r3 
(define-const var1992 var109 (var109_and/1408787299 var3917 var143)) ; Statement: r5 = interfaceinvoke $r4.<net.bytebuddy.matcher.ElementMatcher$Junction: net.bytebuddy.matcher.ElementMatcher$Junction and(net.bytebuddy.matcher.ElementMatcher)>($r24) 
(define-const var2450 var1238 (cast-from-var3339-to-var1238 var1300)) ; Statement: $r25 = (net.bytebuddy.description.type.TypeDefinition) r0 
(define-const var2873 var2131 (var1238_getDeclaredFields/-1697419461 var2450)) ; Statement: $r6 = interfaceinvoke $r25.<net.bytebuddy.description.type.TypeDefinition: net.bytebuddy.description.field.FieldList getDeclaredFields()>() 
(define-const var864 var3739 (cast-from-var109-to-var3739 var1992)) ; Statement: $r26 = (net.bytebuddy.matcher.ElementMatcher) r5 
(define-const var2804 var757 (var2131_filter/-1316730816 var2873 var864)) ; Statement: $r7 = interfaceinvoke $r6.<net.bytebuddy.description.field.FieldList: net.bytebuddy.matcher.FilterableList filter(net.bytebuddy.matcher.ElementMatcher)>($r26) 
(define-const var1241 var2131 (cast-from-var757-to-var2131 var2804)) ; Statement: r21 = (net.bytebuddy.description.field.FieldList) $r7 
(assert true) ; Non Conditional
(define-const var603 Bool (var2131_isEmpty/-1579480691 var1241)) ; Statement: $z0 = interfaceinvoke r21.<net.bytebuddy.description.field.FieldList: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $i0 = interfaceinvoke r21.<net.bytebuddy.description.field.FieldList: int size()>() 
(assert (= (ite var603 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1828 Int (var2131_size/-81871728 var1241)) ; Statement: $i0 = interfaceinvoke r21.<net.bytebuddy.description.field.FieldList: int size()>() 
 ; Statement: if $i0 == 1 goto $r23 = new org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription 
(assert (not (= var1828 1))) ; Negate: Cond: $i0 == 1  
(define-const var3105 (Array Int var660) arr-var660-init) ; Statement: $r13 = newarray (java.lang.Object)[2] 
(declare-const var3105!1 (Array Int var660))
(assert (not (= var3105!1 null-__Array__Int__var660__)))
(assert (= (select var3105!1 0) (cast-from-String-to-var660 var2116))) ; Statement: $r13[0] = r1 
(define-const var1576 String (var3339_getName/901289460 var1300)) ; Statement: $r14 = interfaceinvoke r0.<net.bytebuddy.description.type.TypeDescription: java.lang.String getName()>() 
(declare-const var3105!2 (Array Int var660))
(assert (not (= var3105!2 null-__Array__Int__var660__)))
(assert (= (select var3105!2 1) (cast-from-String-to-var660 var1576))) ; Statement: $r13[1] = $r14 
(define-const var3176 String (String_format/1339386452 "Unable to perform extended enhancement - No unique field [%s] defined by [%s]" var3105!2)) ; Statement: r15 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to perform extended enhancement - No unique field [%s] defined by [%s]", $r13) 
(define-const var2005 var433 var433-init) ; Statement: $r22 = new org.hibernate.bytecode.enhance.spi.EnhancementException 
(assert true)
;(assert (<init>/-1582507930 var2005 var3176)) ; Statement: specialinvoke $r22.<org.hibernate.bytecode.enhance.spi.EnhancementException: void <init>(java.lang.String)>(r15) 

(declare-const var2005!1 var433)
(declare-const var3176!1 String)
(define-const var3027 var1580 (cast-from-var433-to-var1580 var2005!1)) ; Statement: $r31 = (java.lang.Throwable) $r22 
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3339-to-var660=([net.bytebuddy.description.type.TypeDescription], java.lang.Object), var2547_named/566861358=([java.lang.String], net.bytebuddy.matcher.ElementMatcher$Junction), var2547_hasDescriptor/432890046=([java.lang.String], net.bytebuddy.matcher.ElementMatcher$Junction), cast-from-var109-to-var3739=([net.bytebuddy.matcher.ElementMatcher$Junction], net.bytebuddy.matcher.ElementMatcher), var109_and/1408787299=([net.bytebuddy.matcher.ElementMatcher$Junction, net.bytebuddy.matcher.ElementMatcher], net.bytebuddy.matcher.ElementMatcher$Junction), cast-from-var3339-to-var1238=([net.bytebuddy.description.type.TypeDescription], net.bytebuddy.description.type.TypeDefinition), var1238_getDeclaredFields/-1697419461=([net.bytebuddy.description.type.TypeDefinition], net.bytebuddy.description.field.FieldList), var2131_filter/-1316730816=([net.bytebuddy.description.field.FieldList, net.bytebuddy.matcher.ElementMatcher], net.bytebuddy.matcher.FilterableList), cast-from-var757-to-var2131=([net.bytebuddy.matcher.FilterableList], net.bytebuddy.description.field.FieldList), var2131_isEmpty/-1579480691=([net.bytebuddy.description.field.FieldList], boolean), var2131_size/-81871728=([net.bytebuddy.description.field.FieldList], int), arr-var660-init=([], java.lang.Object[]), cast-from-String-to-var660=([java.lang.String], java.lang.Object), var3339_getName/901289460=([net.bytebuddy.description.type.TypeDescription], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var433-init=([], org.hibernate.bytecode.enhance.spi.EnhancementException), <init>/-1582507930=([org.hibernate.bytecode.enhance.spi.EnhancementException, java.lang.String], void), cast-from-var433-to-var1580=([org.hibernate.bytecode.enhance.spi.EnhancementException], java.lang.Throwable)}
; {var3754=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer, var1410=r9, var3339=net.bytebuddy.description.type.TypeDescription, var1300=r0, var2116=r1, var3856=null_type, var1886=r2, var660=java.lang.Object, var580=r20, var109=net.bytebuddy.matcher.ElementMatcher$Junction, var2547=net.bytebuddy.matcher.ElementMatchers, var3917=$r4, var73=$r3, var3739=net.bytebuddy.matcher.ElementMatcher, var143=$r24, var1992=r5, var1238=net.bytebuddy.description.type.TypeDefinition, var2450=$r25, var2131=net.bytebuddy.description.field.FieldList, var2873=$r6, var864=$r26, var757=net.bytebuddy.matcher.FilterableList, var2804=$r7, var1241=r21, var603=$z0, var1828=$i0, var3105=$r13, var1576=$r14, var3176=r15, var433=org.hibernate.bytecode.enhance.spi.EnhancementException, var2005=$r22, var1580=java.lang.Throwable, var3027=$r31}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer=var3754, r9=var1410, net.bytebuddy.description.type.TypeDescription=var3339, r0=var1300, r1=var2116, null_type=var3856, r2=var1886, java.lang.Object=var660, r20=var580, net.bytebuddy.matcher.ElementMatcher$Junction=var109, net.bytebuddy.matcher.ElementMatchers=var2547, $r4=var3917, $r3=var73, net.bytebuddy.matcher.ElementMatcher=var3739, $r24=var143, r5=var1992, net.bytebuddy.description.type.TypeDefinition=var1238, $r25=var2450, net.bytebuddy.description.field.FieldList=var2131, $r6=var2873, $r26=var864, net.bytebuddy.matcher.FilterableList=var757, $r7=var2804, r21=var1241, $z0=var603, $i0=var1828, $r13=var3105, $r14=var1576, r15=var3176, org.hibernate.bytecode.enhance.spi.EnhancementException=var433, $r22=var2005, java.lang.Throwable=var1580, $r31=var3027}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r9 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer;	r0 := @parameter0: net.bytebuddy.description.type.TypeDescription;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r20 = r0;	$r4 = staticinvoke <net.bytebuddy.matcher.ElementMatchers: net.bytebuddy.matcher.ElementMatcher$Junction named(java.lang.String)>(r1);	$r3 = staticinvoke <net.bytebuddy.matcher.ElementMatchers: net.bytebuddy.matcher.ElementMatcher$Junction hasDescriptor(java.lang.String)>(r2);	$r24 = (net.bytebuddy.matcher.ElementMatcher) $r3;	r5 = interfaceinvoke $r4.<net.bytebuddy.matcher.ElementMatcher$Junction: net.bytebuddy.matcher.ElementMatcher$Junction and(net.bytebuddy.matcher.ElementMatcher)>($r24);	$r25 = (net.bytebuddy.description.type.TypeDefinition) r0;	$r6 = interfaceinvoke $r25.<net.bytebuddy.description.type.TypeDefinition: net.bytebuddy.description.field.FieldList getDeclaredFields()>();	$r26 = (net.bytebuddy.matcher.ElementMatcher) r5;	$r7 = interfaceinvoke $r6.<net.bytebuddy.description.field.FieldList: net.bytebuddy.matcher.FilterableList filter(net.bytebuddy.matcher.ElementMatcher)>($r26);	r21 = (net.bytebuddy.description.field.FieldList) $r7;	$z0 = interfaceinvoke r21.<net.bytebuddy.description.field.FieldList: boolean isEmpty()>();	if $z0 == 0 goto $i0 = interfaceinvoke r21.<net.bytebuddy.description.field.FieldList: int size()>();	$i0 = interfaceinvoke r21.<net.bytebuddy.description.field.FieldList: int size()>();	if $i0 == 1 goto $r23 = new org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription;	$r13 = newarray (java.lang.Object)[2];	$r13[0] = r1;	$r14 = interfaceinvoke r0.<net.bytebuddy.description.type.TypeDescription: java.lang.String getName()>();	$r13[1] = $r14;	r15 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to perform extended enhancement - No unique field [%s] defined by [%s]", $r13);	$r22 = new org.hibernate.bytecode.enhance.spi.EnhancementException;	specialinvoke $r22.<org.hibernate.bytecode.enhance.spi.EnhancementException: void <init>(java.lang.String)>(r15);	$r31 = (java.lang.Throwable) $r22;	throw $r31
;block_num 4