(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1989 0)
(declare-sort var314 0)
(declare-sort var765 0)
(declare-sort var348 0)
(declare-sort var2193 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var765_loadClass/60123751 (String var314 Bool) ClassObject)
(declare-fun var2193_newInstance/1168168314 (ClassObject Int) var348)
(declare-fun getClass/1258963082 (var348) ClassObject)
(declare-const null-String String)
(declare-const null-var314 var314)
(declare-const null-Bool Bool)
(declare-const var3752 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3752 null-String)))
(declare-const var3882 var314) ; Statement: r9 := @parameter1: java.lang.ClassLoader 
(assert (not (= var3882 null-var314)))
(declare-const var3280 Bool) ; Statement: z3 := @parameter2: boolean 
(assert (not (= var3280 null-Bool)))
(assert true)
(define-const var3268 Bool (endsWith/985337093 var3752 "[]")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("[]") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("[L") 
(assert (not (= (ite var3268 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1458 Int (length/-134980193 var3752)) ; Statement: $i5 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3157 String "[]") ; Statement: $r5 = "[]" 
(assert true)
(define-const var3112 Int (length/-134980193 var3157)) ; Statement: $i4 = virtualinvoke $r5.<java.lang.String: int length()>() 
(define-const var1809 Int (- var1458 var3112)) ; Statement: $i6 = $i5 - $i4 
(assert (and true (and (>= 0 0) (>= (str.len var3752) var1809) (>= var1809 0))))
(define-const var3378 String (substring/-1240304868 var3752 0 var1809)) ; Statement: r10 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i6) 
(define-const var2338 ClassObject (var765_loadClass/60123751 var3378 var3882 var3280)) ; Statement: r11 = staticinvoke <cn.hutool.core.util.ClassLoaderUtil: java.lang.Class loadClass(java.lang.String,java.lang.ClassLoader,boolean)>(r10, r9, z3) 
(define-const var1075 var348 (var2193_newInstance/1168168314 var2338 0)) ; Statement: $r6 = staticinvoke <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>(r11, 0) 
(assert true)
(define-const var3610 ClassObject (getClass/1258963082 var1075)) ; Statement: r12 = virtualinvoke $r6.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: goto [?= return r12] 
(assert true) ; Non Conditional
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var765_loadClass/60123751=([java.lang.String, java.lang.ClassLoader, boolean], java.lang.Class), var2193_newInstance/1168168314=([java.lang.Class, int], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class)}
; {var3752=r0, var1989=null_type, var314=java.lang.ClassLoader, var3882=r9, var3280=z3, var3268=$z0, var1458=$i5, var3157=$r5, var3112=$i4, var1809=$i6, var3378=r10, var765=cn.hutool.core.util.ClassLoaderUtil, var2338=r11, var348=java.lang.Object, var2193=java.lang.reflect.Array, var1075=$r6, var3610=r12}
; {r0=var3752, null_type=var1989, java.lang.ClassLoader=var314, r9=var3882, z3=var3280, $z0=var3268, $i5=var1458, $r5=var3157, $i4=var3112, $i6=var1809, r10=var3378, cn.hutool.core.util.ClassLoaderUtil=var765, r11=var2338, java.lang.Object=var348, java.lang.reflect.Array=var2193, $r6=var1075, r12=var3610}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r9 := @parameter1: java.lang.ClassLoader;	z3 := @parameter2: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("[]");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("[L");	$i5 = virtualinvoke r0.<java.lang.String: int length()>();	$r5 = "[]";	$i4 = virtualinvoke $r5.<java.lang.String: int length()>();	$i6 = $i5 - $i4;	r10 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i6);	r11 = staticinvoke <cn.hutool.core.util.ClassLoaderUtil: java.lang.Class loadClass(java.lang.String,java.lang.ClassLoader,boolean)>(r10, r9, z3);	$r6 = staticinvoke <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>(r11, 0);	r12 = virtualinvoke $r6.<java.lang.Object: java.lang.Class getClass()>();	goto [?= return r12];	return r12
;block_num 3