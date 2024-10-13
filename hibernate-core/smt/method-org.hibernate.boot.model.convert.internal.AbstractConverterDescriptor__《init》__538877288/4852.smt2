(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var414 0)
(declare-sort var857 0)
(declare-sort var1071 0)
(declare-sort var3114 0)
(declare-sort var2911 0)
(declare-sort var2504 0)
(declare-sort var813 0)
(declare-sort var2715 0)
(declare-sort var3939 0)
(declare-sort var2310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2715!class ClassObject)
(declare-fun <init>/-279557996 (var3114) void)
(declare-fun cast-from-var414-to-var3114 (var414) var3114)
(declare-fun converterClass/-339031502 (var414) ClassObject)
(declare-fun getTypeResolver/-1883333126 (var1071) var2911)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun resolve/-2090340329 (var2911 ClassObject (Array Int ClassObject)) var2504)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun typeParametersFor/2081010054 (var2504 ClassObject) var813)
(declare-fun var3939-init () var3939)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var3939 String) void)
(declare-fun cast-from-var3939-to-var2310 (var3939) var2310)
(declare-const null-var414 var414)
(declare-const null-ClassObject ClassObject)
(declare-const null-var857 var857)
(declare-const null-var1071 var1071)
(declare-const null-var813 var813)
(declare-const var3572 var414) ; Statement: r0 := @this: org.hibernate.boot.model.convert.internal.AbstractConverterDescriptor 
(assert (not (= var3572 null-var414)))
(declare-const var2476 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2476 null-ClassObject)))
(declare-const var1942 var857) ; Statement: r11 := @parameter1: java.lang.Boolean 
(assert (not (= var1942 null-var857)))
(declare-const var926 var1071) ; Statement: r2 := @parameter2: org.hibernate.boot.internal.ClassmateContext 
(assert (not (= var926 null-var1071)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var414-to-var3114 var3572))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3572!1 var414)
(declare-const var3572!2 var414)
(assert (not (= var3572!2 null-var414)))
(assert (= (converterClass/-339031502 var3572!2) var2476)) ; Statement: r0.<org.hibernate.boot.model.convert.internal.AbstractConverterDescriptor: java.lang.Class converterClass> = r1 
(assert true)
(define-const var3855 var2911 (getTypeResolver/-1883333126 var926)) ; Statement: $r4 = virtualinvoke r2.<org.hibernate.boot.internal.ClassmateContext: com.fasterxml.classmate.TypeResolver getTypeResolver()>() 
(define-const var1110 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r3 = newarray (java.lang.reflect.Type)[0] 
(assert true)
(define-const var2353 var2504 (resolve/-2090340329 var3855 (cast-from-ClassObject-to-ClassObject var2476) var1110)) ; Statement: r5 = virtualinvoke $r4.<com.fasterxml.classmate.TypeResolver: com.fasterxml.classmate.ResolvedType resolve(java.lang.reflect.Type,java.lang.reflect.Type[])>(r1, $r3) 
(assert true)
(define-const var1175 var813 (typeParametersFor/2081010054 var2353 var2715!class)) ; Statement: r6 = virtualinvoke r5.<com.fasterxml.classmate.ResolvedType: java.util.List typeParametersFor(java.lang.Class)>(class "Ljavax/persistence/AttributeConverter;") 
 ; Statement: if r6 != null goto $i0 = interfaceinvoke r6.<java.util.List: int size()>() 
(assert (not (not (= var1175 null-var813)))) ; Negate: Cond: r6 != null  
(define-const var400 var3939 var3939-init) ; Statement: $r29 = new org.hibernate.AnnotationException 
(define-const var3013 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3013)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3013!1 String)
(assert (= var3013!1 ""))
(assert true)
(define-const var2674 String (append/672562846 var3013!1 "Could not extract type parameter information from AttributeConverter implementation [")) ; Statement: $r24 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not extract type parameter information from AttributeConverter implementation [") 
(declare-const var3013!2 String)
(assert (= var3013!2 (str.++ var3013!1 "Could not extract type parameter information from AttributeConverter implementation [")))
(assert true)
(define-const var2836 String (getName/-1958580599 var2476)) ; Statement: $r23 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1794 String (append/672562846 var2674 var2836)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2674!1 String)
(assert (= var2674!1 (str.++ var2674 var2836)))
(assert true)
(define-const var17 String (append/672562846 var1794 "]")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1794!1 String)
(assert (= var1794!1 (str.++ var1794 "]")))
(assert true)
(define-const var2220 String (toString/-2075883882 var17)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var400 var2220)) ; Statement: specialinvoke $r29.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r27) 

(declare-const var400!1 var3939)
(declare-const var2220!1 String)
(define-const var2671 var2310 (cast-from-var3939-to-var2310 var400!1)) ; Statement: $r32 = (java.lang.Throwable) $r29 
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var414-to-var3114=([org.hibernate.boot.model.convert.internal.AbstractConverterDescriptor], java.lang.Object), converterClass/-339031502=([org.hibernate.boot.model.convert.internal.AbstractConverterDescriptor], java.lang.Class), getTypeResolver/-1883333126=([org.hibernate.boot.internal.ClassmateContext], com.fasterxml.classmate.TypeResolver), arr-ClassObject-init=([], java.lang.reflect.Type[]), resolve/-2090340329=([com.fasterxml.classmate.TypeResolver, java.lang.reflect.Type, java.lang.reflect.Type[]], com.fasterxml.classmate.ResolvedType), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), typeParametersFor/2081010054=([com.fasterxml.classmate.ResolvedType, java.lang.Class], java.util.List), var3939-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var3939-to-var2310=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var414=org.hibernate.boot.model.convert.internal.AbstractConverterDescriptor, var3572=r0, var2476=r1, var857=java.lang.Boolean, var1942=r11, var1071=org.hibernate.boot.internal.ClassmateContext, var926=r2, var3114=java.lang.Object, var2911=com.fasterxml.classmate.TypeResolver, var3855=$r4, var1110=$r3, var2504=com.fasterxml.classmate.ResolvedType, var2353=r5, var813=java.util.List, var2715=javax.persistence.AttributeConverter, var1175=r6, var3939=org.hibernate.AnnotationException, var400=$r29, var3013=$r28, var2674=$r24, var2836=$r23, var1794=$r25, var17=$r26, var2220=$r27, var2310=java.lang.Throwable, var2671=$r32}
; {org.hibernate.boot.model.convert.internal.AbstractConverterDescriptor=var414, r0=var3572, r1=var2476, java.lang.Boolean=var857, r11=var1942, org.hibernate.boot.internal.ClassmateContext=var1071, r2=var926, java.lang.Object=var3114, com.fasterxml.classmate.TypeResolver=var2911, $r4=var3855, $r3=var1110, com.fasterxml.classmate.ResolvedType=var2504, r5=var2353, java.util.List=var813, javax.persistence.AttributeConverter=var2715, r6=var1175, org.hibernate.AnnotationException=var3939, $r29=var400, $r28=var3013, $r24=var2674, $r23=var2836, $r25=var1794, $r26=var17, $r27=var2220, java.lang.Throwable=var2310, $r32=var2671}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.convert.internal.AbstractConverterDescriptor;	r1 := @parameter0: java.lang.Class;	r11 := @parameter1: java.lang.Boolean;	r2 := @parameter2: org.hibernate.boot.internal.ClassmateContext;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.boot.model.convert.internal.AbstractConverterDescriptor: java.lang.Class converterClass> = r1;	$r4 = virtualinvoke r2.<org.hibernate.boot.internal.ClassmateContext: com.fasterxml.classmate.TypeResolver getTypeResolver()>();	$r3 = newarray (java.lang.reflect.Type)[0];	r5 = virtualinvoke $r4.<com.fasterxml.classmate.TypeResolver: com.fasterxml.classmate.ResolvedType resolve(java.lang.reflect.Type,java.lang.reflect.Type[])>(r1, $r3);	r6 = virtualinvoke r5.<com.fasterxml.classmate.ResolvedType: java.util.List typeParametersFor(java.lang.Class)>(class "Ljavax/persistence/AttributeConverter;");	if r6 != null goto $i0 = interfaceinvoke r6.<java.util.List: int size()>();	$r29 = new org.hibernate.AnnotationException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not extract type parameter information from AttributeConverter implementation [");	$r23 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r27);	$r32 = (java.lang.Throwable) $r29;	throw $r32
;block_num 2