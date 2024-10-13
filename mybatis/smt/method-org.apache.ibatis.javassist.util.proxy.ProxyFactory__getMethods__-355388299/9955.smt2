(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2692 0)
(declare-sort var2461 0)
(declare-sort var3415 0)
(declare-sort var1760 0)
(declare-sort var768 0)
(declare-sort var3867 0)
(declare-sort var1969 0)
(declare-sort var2848 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3415_add/-1142548109 (var3415 var1760) Bool)
(declare-fun cast-from-ClassObject-to-var1760 (ClassObject) var1760)
(declare-fun getInterfaces/-1280103563 (ClassObject) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getSuperclass/1296282036 (ClassObject) ClassObject)
(declare-fun var3867_getDeclaredMethods/-830923152 (ClassObject) (Array Int var768))
(declare-fun getLength-Arr-var768-1 ((Array Int var768)) Int)
(declare-fun getModifiers/890868286 (var768) Int)
(declare-fun var1969_isPrivate/-505179105 (Int) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/1227988463 (var768) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var2848_makeDescriptor/603562192 (var768) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2461_put/1464166817 (var2461 var1760 var1760) var1760)
(declare-fun cast-from-String-to-var1760 (String) var1760)
(declare-fun cast-from-var768-to-var1760 (var768) var1760)
(declare-fun cast-from-var1760-to-var768 (var1760) var768)
(declare-const null-var2692 var2692)
(declare-const null-var2461 var2461)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3415 var3415)
(declare-const null-var768 var768)
(declare-const var1045 var2692) ; Statement: r15 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var1045 null-var2692)))
(declare-const var3288 var2461) ; Statement: r12 := @parameter0: java.util.Map 
(assert (not (= var3288 null-var2461)))
(declare-const var1538 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var1538 null-ClassObject)))
(declare-const var1078 var3415) ; Statement: r0 := @parameter2: java.util.Set 
(assert (not (= var1078 null-var3415)))
(define-const var1244 Bool (var3415_add/-1142548109 var1078 (cast-from-ClassObject-to-var1760 var1538))) ; Statement: $z0 = interfaceinvoke r0.<java.util.Set: boolean add(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto r2 = virtualinvoke r1.<java.lang.Class: java.lang.Class[] getInterfaces()>() 
(assert (not (= (ite var1244 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var317 (Array Int ClassObject) (getInterfaces/-1280103563 var1538)) ; Statement: r2 = virtualinvoke r1.<java.lang.Class: java.lang.Class[] getInterfaces()>() 
(define-const var3742 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var2615 Int (getLength-Arr-ClassObject-1 var317)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i6 >= $i0 goto r19 = virtualinvoke r1.<java.lang.Class: java.lang.Class getSuperclass()>() 
(assert (>= var3742 var2615)) ; Cond: i6 >= $i0 
(assert true)
(define-const var3498 ClassObject (getSuperclass/1296282036 var1538)) ; Statement: r19 = virtualinvoke r1.<java.lang.Class: java.lang.Class getSuperclass()>() 
 ; Statement: if r19 == null goto $r17 = staticinvoke <org.apache.ibatis.javassist.util.proxy.SecurityActions: java.lang.reflect.Method[] getDeclaredMethods(java.lang.Class)>(r1) 
(assert (= var3498 null-ClassObject)) ; Cond: r19 == null 
(define-const var2193 (Array Int var768) (var3867_getDeclaredMethods/-830923152 var1538)) ; Statement: $r17 = staticinvoke <org.apache.ibatis.javassist.util.proxy.SecurityActions: java.lang.reflect.Method[] getDeclaredMethods(java.lang.Class)>(r1) 
(define-const var3488 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var711 Int (getLength-Arr-var768-1 var2193)) ; Statement: $i8 = lengthof $r17 
 ; Statement: if i7 >= $i8 goto return 
(assert (not (>= var3488 var711))) ; Negate: Cond: i7 >= $i8  
(define-const var1269 var768 (select var2193 var3488)) ; Statement: $r3 = $r17[i7] 
(assert true)
(define-const var1456 Int (getModifiers/890868286 var1269)) ; Statement: $i1 = virtualinvoke $r3.<java.lang.reflect.Method: int getModifiers()>() 
(define-const var306 Bool (var1969_isPrivate/-505179105 var1456)) ; Statement: $z1 = staticinvoke <java.lang.reflect.Modifier: boolean isPrivate(int)>($i1) 
 ; Statement: if $z1 != 0 goto i7 = i7 + 1 
(assert (not (not (= (ite var306 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3580 var768 (select var2193 var3488)) ; Statement: r4 = $r17[i7] 
(define-const var771 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var771)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var771!1 String)
(assert (= var771!1 ""))
(assert true)
(define-const var3425 String (getName/1227988463 var3580)) ; Statement: $r6 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var764 String (append/672562846 var771!1 var3425)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var771!2 String)
(assert (= var771!2 (str.++ var771!1 var3425)))
(assert true)
(define-const var798 String (append/-1166366385 var764 58)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var764!1 String)
(assert (str.prefixof var764 var764!1))
(define-const var3424 String (var2848_makeDescriptor/603562192 var3580)) ; Statement: $r8 = staticinvoke <org.apache.ibatis.javassist.util.proxy.RuntimeSupport: java.lang.String makeDescriptor(java.lang.reflect.Method)>(r4) 
(assert true)
(define-const var828 String (append/672562846 var798 var3424)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var798!1 String)
(assert (= var798!1 (str.++ var798 var3424)))
(assert true)
(define-const var2357 String (toString/-2075883882 var828)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1596 Bool (startsWith/-1785782452 var2357 "getHandler:()")) ; Statement: $z2 = virtualinvoke r11.<java.lang.String: boolean startsWith(java.lang.String)>("getHandler:()") 
 ; Statement: if $z2 == 0 goto $r13 = interfaceinvoke r12.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r11, r4) 
(assert (= (ite var1596 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1648 var1760 (var2461_put/1464166817 var3288 (cast-from-String-to-var1760 var2357) (cast-from-var768-to-var1760 var3580))) ; Statement: $r13 = interfaceinvoke r12.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r11, r4) 
(define-const var2349 var768 (cast-from-var1760-to-var768 var1648)) ; Statement: $r16 = (java.lang.reflect.Method) $r13 
 ; Statement: if null == $r16 goto (branch) 
(assert (= null-var768 var2349)) ; Cond: null == $r16 
 ; Statement: if null == $r16 goto i7 = i7 + 1 
(assert (= null-var768 var2349)) ; Cond: null == $r16 
(define-const var3488!1 Int (+ var3488 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= $i8 = lengthof $r17] 
(assert true) ; Non Conditional
(define-const var711!1 Int (getLength-Arr-var768-1 var2193)) ; Statement: $i8 = lengthof $r17 
 ; Statement: if i7 >= $i8 goto return 
(assert (>= var3488!1 var711!1)) ; Cond: i7 >= $i8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3415_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-ClassObject-to-var1760=([java.lang.Class], java.lang.Object), getInterfaces/-1280103563=([java.lang.Class], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getSuperclass/1296282036=([java.lang.Class], java.lang.Class), var3867_getDeclaredMethods/-830923152=([java.lang.Class], java.lang.reflect.Method[]), getLength-Arr-var768-1=([java.lang.reflect.Method[]], int), getModifiers/890868286=([java.lang.reflect.Method], int), var1969_isPrivate/-505179105=([int], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/1227988463=([java.lang.reflect.Method], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var2848_makeDescriptor/603562192=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2461_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1760=([java.lang.String], java.lang.Object), cast-from-var768-to-var1760=([java.lang.reflect.Method], java.lang.Object), cast-from-var1760-to-var768=([java.lang.Object], java.lang.reflect.Method)}
; {var2692=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1045=r15, var2461=java.util.Map, var3288=r12, var1538=r1, var3415=java.util.Set, var1078=r0, var1760=java.lang.Object, var1244=$z0, var317=r2, var3742=i6, var2615=$i0, var3498=r19, var768=java.lang.reflect.Method, var3867=org.apache.ibatis.javassist.util.proxy.SecurityActions, var2193=$r17, var3488=i7, var711=$i8, var1269=$r3, var1456=$i1, var1969=java.lang.reflect.Modifier, var306=$z1, var3580=r4, var771=$r5, var3425=$r6, var764=$r7, var798=$r9, var2848=org.apache.ibatis.javassist.util.proxy.RuntimeSupport, var3424=$r8, var828=$r10, var2357=r11, var1596=$z2, var1648=$r13, var2349=$r16}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2692, r15=var1045, java.util.Map=var2461, r12=var3288, r1=var1538, java.util.Set=var3415, r0=var1078, java.lang.Object=var1760, $z0=var1244, r2=var317, i6=var3742, $i0=var2615, r19=var3498, java.lang.reflect.Method=var768, org.apache.ibatis.javassist.util.proxy.SecurityActions=var3867, $r17=var2193, i7=var3488, $i8=var711, $r3=var1269, $i1=var1456, java.lang.reflect.Modifier=var1969, $z1=var306, r4=var3580, $r5=var771, $r6=var3425, $r7=var764, $r9=var798, org.apache.ibatis.javassist.util.proxy.RuntimeSupport=var2848, $r8=var3424, $r10=var828, r11=var2357, $z2=var1596, $r13=var1648, $r16=var2349}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r15 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	r12 := @parameter0: java.util.Map;	r1 := @parameter1: java.lang.Class;	r0 := @parameter2: java.util.Set;	$z0 = interfaceinvoke r0.<java.util.Set: boolean add(java.lang.Object)>(r1);	if $z0 != 0 goto r2 = virtualinvoke r1.<java.lang.Class: java.lang.Class[] getInterfaces()>();	r2 = virtualinvoke r1.<java.lang.Class: java.lang.Class[] getInterfaces()>();	i6 = 0;	$i0 = lengthof r2;	if i6 >= $i0 goto r19 = virtualinvoke r1.<java.lang.Class: java.lang.Class getSuperclass()>();	r19 = virtualinvoke r1.<java.lang.Class: java.lang.Class getSuperclass()>();	if r19 == null goto $r17 = staticinvoke <org.apache.ibatis.javassist.util.proxy.SecurityActions: java.lang.reflect.Method[] getDeclaredMethods(java.lang.Class)>(r1);	$r17 = staticinvoke <org.apache.ibatis.javassist.util.proxy.SecurityActions: java.lang.reflect.Method[] getDeclaredMethods(java.lang.Class)>(r1);	i7 = 0;	$i8 = lengthof $r17;	if i7 >= $i8 goto return;	$r3 = $r17[i7];	$i1 = virtualinvoke $r3.<java.lang.reflect.Method: int getModifiers()>();	$z1 = staticinvoke <java.lang.reflect.Modifier: boolean isPrivate(int)>($i1);	if $z1 != 0 goto i7 = i7 + 1;	r4 = $r17[i7];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke r4.<java.lang.reflect.Method: java.lang.String getName()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r8 = staticinvoke <org.apache.ibatis.javassist.util.proxy.RuntimeSupport: java.lang.String makeDescriptor(java.lang.reflect.Method)>(r4);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = virtualinvoke r11.<java.lang.String: boolean startsWith(java.lang.String)>("getHandler:()");	if $z2 == 0 goto $r13 = interfaceinvoke r12.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r11, r4);	$r13 = interfaceinvoke r12.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r11, r4);	$r16 = (java.lang.reflect.Method) $r13;	if null == $r16 goto (branch);	if null == $r16 goto i7 = i7 + 1;	i7 = i7 + 1;	goto [?= $i8 = lengthof $r17];	$i8 = lengthof $r17;	if i7 >= $i8 goto return;	return
;block_num 13