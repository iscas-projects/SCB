(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var536 0)
(declare-sort var980 0)
(declare-sort var646 0)
(declare-sort var2850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var980-init () var980)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun <init>/1228603609 (var980 Int) void)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun isInterface/-352192428 (ClassObject) Bool)
(declare-fun var646-init () var646)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getCanonicalName/935544231 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/702785718 (var646 var2850 String) void)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var536 var536)
(declare-const null-ClassObject ClassObject)
(declare-const var2850-ERROR_MULTIPLE_SUPERCLASSES var2850)
(declare-const var139 (Array Int ClassObject)) ; Statement: r1 := @parameter0: java.lang.Class[] 
(assert (not (= var139 null-__Array__Int__ClassObject__)))
(declare-const var3787 var536) ; Statement: r3 := @parameter1: jdk.nashorn.internal.runtime.linker.ClassAndLoader 
(assert (not (= var3787 null-var536)))
(define-const var1092 ClassObject null-ClassObject) ; Statement: r24 = null 
(define-const var1308 var980 var980-init) ; Statement: $r26 = new java.util.ArrayList 
(define-const var3954 Int (getLength-Arr-ClassObject-1 var139)) ; Statement: $i0 = lengthof r1 
(assert true)
;(assert (<init>/1228603609 var1308 var3954)) ; Statement: specialinvoke $r26.<java.util.ArrayList: void <init>(int)>($i0) 

(declare-const var1308!1 var980)
(declare-const var3954!1 Int)
(define-const var3519 Int (getLength-Arr-ClassObject-1 var139)) ; Statement: i1 = lengthof r1 
(define-const var944 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i1 goto (branch) 
(assert (not (>= var944 var3519))) ; Negate: Cond: i4 >= i1  
(define-const var1727 ClassObject (select var139 var944)) ; Statement: r7 = r1[i4] 
(assert true)
(define-const var1496 Int (getModifiers/698981592 var1727)) ; Statement: i2 = virtualinvoke r7.<java.lang.Class: int getModifiers()>() 
(assert true)
(define-const var537 Bool (isInterface/-352192428 var1727)) ; Statement: $z0 = virtualinvoke r7.<java.lang.Class: boolean isInterface()>() 
 ; Statement: if $z0 != 0 goto $i3 = interfaceinvoke $r26.<java.util.List: int size()>() 
(assert (not (not (= (ite var537 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if r24 == null goto $z2 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>(i2) 
(assert (not (= var1092 null-ClassObject))) ; Negate: Cond: r24 == null  
(define-const var3404 var646 var646-init) ; Statement: $r28 = new jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo 
(define-const var1073 var2850 var2850-ERROR_MULTIPLE_SUPERCLASSES) ; Statement: $r17 = <jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome: jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome ERROR_MULTIPLE_SUPERCLASSES> 
(define-const var3083 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3083)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3083!1 String)
(assert (= var3083!1 ""))
(assert true)
(define-const var1628 String (getCanonicalName/935544231 var1727)) ; Statement: $r18 = virtualinvoke r7.<java.lang.Class: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var3077 String (append/672562846 var3083!1 var1628)) ; Statement: $r19 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3083!2 String)
(assert (= var3083!2 (str.++ var3083!1 var1628)))
(assert true)
(define-const var1288 String (append/672562846 var3077 " and ")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var3077!1 String)
(assert (= var3077!1 (str.++ var3077 " and ")))
(assert true)
(define-const var3245 String (getCanonicalName/935544231 var1092)) ; Statement: $r20 = virtualinvoke r24.<java.lang.Class: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var898 String (append/672562846 var1288 var3245)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1288!1 String)
(assert (= var1288!1 (str.++ var1288 var3245)))
(assert true)
(define-const var462 String (toString/-2075883882 var898)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/702785718 var3404 var1073 var462)) ; Statement: specialinvoke $r28.<jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo: void <init>(jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome,java.lang.String)>($r17, $r23) 

(declare-const var3404!1 var646)
(declare-const var1073!1 var2850)
(declare-const var462!1 String)
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {var980-init=([], java.util.ArrayList), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), <init>/1228603609=([java.util.ArrayList, int], void), getModifiers/698981592=([java.lang.Class], int), isInterface/-352192428=([java.lang.Class], boolean), var646-init=([], jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getCanonicalName/935544231=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/702785718=([jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo, jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome, java.lang.String], void)}
; {var139=r1, var536=jdk.nashorn.internal.runtime.linker.ClassAndLoader, var3787=r3, var1092=r24, var980=java.util.ArrayList, var1308=$r26, var3954=$i0, var3519=i1, var944=i4, var1727=r7, var1496=i2, var537=$z0, var646=jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo, var3404=$r28, var2850=jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome, var1073=$r17, var3083=$r27, var1628=$r18, var3077=$r19, var1288=$r21, var3245=$r20, var898=$r22, var462=$r23}
; {r1=var139, jdk.nashorn.internal.runtime.linker.ClassAndLoader=var536, r3=var3787, r24=var1092, java.util.ArrayList=var980, $r26=var1308, $i0=var3954, i1=var3519, i4=var944, r7=var1727, i2=var1496, $z0=var537, jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo=var646, $r28=var3404, jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome=var2850, $r17=var1073, $r27=var3083, $r18=var1628, $r19=var3077, $r21=var1288, $r20=var3245, $r22=var898, $r23=var462}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Class[];	r3 := @parameter1: jdk.nashorn.internal.runtime.linker.ClassAndLoader;	r24 = null;	$r26 = new java.util.ArrayList;	$i0 = lengthof r1;	specialinvoke $r26.<java.util.ArrayList: void <init>(int)>($i0);	i1 = lengthof r1;	i4 = 0;	if i4 >= i1 goto (branch);	r7 = r1[i4];	i2 = virtualinvoke r7.<java.lang.Class: int getModifiers()>();	$z0 = virtualinvoke r7.<java.lang.Class: boolean isInterface()>();	if $z0 != 0 goto $i3 = interfaceinvoke $r26.<java.util.List: int size()>();	if r24 == null goto $z2 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>(i2);	$r28 = new jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo;	$r17 = <jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome: jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome ERROR_MULTIPLE_SUPERCLASSES>;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke r7.<java.lang.Class: java.lang.String getCanonicalName()>();	$r19 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r20 = virtualinvoke r24.<java.lang.Class: java.lang.String getCanonicalName()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo: void <init>(jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome,java.lang.String)>($r17, $r23);	return $r28
;block_num 5