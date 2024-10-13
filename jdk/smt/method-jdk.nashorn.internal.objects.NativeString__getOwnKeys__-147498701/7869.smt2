(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var286 0)
(declare-sort var3134 0)
(declare-sort var1795 0)
(declare-sort var2989 0)
(declare-sort var1785 0)
(declare-sort var156 0)
(declare-sort var2223 0)
(declare-sort var3062 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1795-init () var1795)
(declare-fun <init>/-325640736 (var1795) void)
(declare-fun value/1064022155 (var286) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun getOwnKeys/-1166311723 (var2989 Bool var3134) (Array Int String))
(declare-fun cast-from-var286-to-var2989 (var286) var2989)
(declare-fun var156_asList/1779083644 ((Array Int var2223)) var1785)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2223__ ((Array Int String)) (Array Int var2223))
(declare-fun var1785_addAll/-525367613 (var1785 var3062) Bool)
(declare-fun cast-from-var1795-to-var1785 (var1795) var1785)
(declare-fun cast-from-var1785-to-var3062 (var1785) var3062)
(declare-fun var1785_size/-959786421 (var1785) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var1785_toArray/-775711681 (var1785 (Array Int var2223)) (Array Int var2223))
(declare-fun cast-from-__Array__Int__var2223__-to-__Array__Int__String__ ((Array Int var2223)) (Array Int String))
(declare-const null-var286 var286)
(declare-const null-Bool Bool)
(declare-const null-var3134 var3134)
(declare-const var2188 var286) ; Statement: r1 := @this: jdk.nashorn.internal.objects.NativeString 
(assert (not (= var2188 null-var286)))
(declare-const var271 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var271 null-Bool)))
(declare-const var3258 var3134) ; Statement: r3 := @parameter1: java.util.Set 
(assert (not (= var3258 null-var3134)))
(define-const var3344 var1795 var1795-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3344)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var3344!1 var1795)
(define-const var1378 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3761 String (value/1064022155 var2188)) ; Statement: $r2 = r1.<jdk.nashorn.internal.objects.NativeString: java.lang.CharSequence value> 
(define-const var1004 Int (String_length/-667254855 var3761)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if i2 >= $i0 goto $r4 = specialinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.String[] getOwnKeys(boolean,java.util.Set)>(z0, r3) 
(assert (>= var1378 var1004)) ; Cond: i2 >= $i0 
(assert true)
(define-const var3184 (Array Int String) (getOwnKeys/-1166311723 (cast-from-var286-to-var2989 var2188) var271 var3258)) ; Statement: $r4 = specialinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.String[] getOwnKeys(boolean,java.util.Set)>(z0, r3) 
(define-const var1743 var1785 (var156_asList/1779083644 (cast-from-__Array__Int__String__-to-__Array__Int__var2223__ var3184))) ; Statement: $r5 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r4) 
;(assert (var1785_addAll/-525367613 (cast-from-var1795-to-var1785 var3344!1) (cast-from-var1785-to-var3062 var1743))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean addAll(java.util.Collection)>($r5) 

(declare-const var3344!2 var1795)
(declare-const var1743!1 var1785)
(define-const var3040 Int (var1785_size/-959786421 (cast-from-var1795-to-var1785 var3344!2))) ; Statement: $i1 = interfaceinvoke $r0.<java.util.List: int size()>() 
(define-const var79 (Array Int String) arr-String-init) ; Statement: $r6 = newarray (java.lang.String)[$i1] 
(define-const var2523 (Array Int var2223) (var1785_toArray/-775711681 (cast-from-var1795-to-var1785 var3344!2) (cast-from-__Array__Int__String__-to-__Array__Int__var2223__ var79))) ; Statement: $r7 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r6) 
(define-const var3264 (Array Int String) (cast-from-__Array__Int__var2223__-to-__Array__Int__String__ var2523)) ; Statement: $r8 = (java.lang.String[]) $r7 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1795-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), value/1064022155=([jdk.nashorn.internal.objects.NativeString], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), getOwnKeys/-1166311723=([jdk.nashorn.internal.runtime.ScriptObject, boolean, java.util.Set], java.lang.String[]), cast-from-var286-to-var2989=([jdk.nashorn.internal.objects.NativeString], jdk.nashorn.internal.runtime.ScriptObject), var156_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__String__-to-__Array__Int__var2223__=([java.lang.String[]], java.lang.Object[]), var1785_addAll/-525367613=([java.util.List, java.util.Collection], boolean), cast-from-var1795-to-var1785=([java.util.ArrayList], java.util.List), cast-from-var1785-to-var3062=([java.util.List], java.util.Collection), var1785_size/-959786421=([java.util.List], int), arr-String-init=([], java.lang.String[]), var1785_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__var2223__-to-__Array__Int__String__=([java.lang.Object[]], java.lang.String[])}
; {var286=jdk.nashorn.internal.objects.NativeString, var2188=r1, var271=z0, var3134=java.util.Set, var3258=r3, var1795=java.util.ArrayList, var3344=$r0, var1378=i2, var3761=$r2, var1004=$i0, var2989=jdk.nashorn.internal.runtime.ScriptObject, var3184=$r4, var1785=java.util.List, var156=java.util.Arrays, var2223=java.lang.Object, var1743=$r5, var3062=java.util.Collection, var3040=$i1, var79=$r6, var2523=$r7, var3264=$r8}
; {jdk.nashorn.internal.objects.NativeString=var286, r1=var2188, z0=var271, java.util.Set=var3134, r3=var3258, java.util.ArrayList=var1795, $r0=var3344, i2=var1378, $r2=var3761, $i0=var1004, jdk.nashorn.internal.runtime.ScriptObject=var2989, $r4=var3184, java.util.List=var1785, java.util.Arrays=var156, java.lang.Object=var2223, $r5=var1743, java.util.Collection=var3062, $i1=var3040, $r6=var79, $r7=var2523, $r8=var3264}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.objects.NativeString;	z0 := @parameter0: boolean;	r3 := @parameter1: java.util.Set;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	i2 = 0;	$r2 = r1.<jdk.nashorn.internal.objects.NativeString: java.lang.CharSequence value>;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if i2 >= $i0 goto $r4 = specialinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.String[] getOwnKeys(boolean,java.util.Set)>(z0, r3);	$r4 = specialinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.String[] getOwnKeys(boolean,java.util.Set)>(z0, r3);	$r5 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r4);	interfaceinvoke $r0.<java.util.List: boolean addAll(java.util.Collection)>($r5);	$i1 = interfaceinvoke $r0.<java.util.List: int size()>();	$r6 = newarray (java.lang.String)[$i1];	$r7 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r6);	$r8 = (java.lang.String[]) $r7;	return $r8
;block_num 3