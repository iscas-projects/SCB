(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3281 0)
(declare-sort var1286 0)
(declare-sort var1042 0)
(declare-sort var990 0)
(declare-sort var653 0)
(declare-sort var1019 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun varArgMethods/1566026269 (var3281) var1286)
(declare-fun isEmpty/1321303667 (var1286) Bool)
(declare-fun var1042-init () var1042)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fixArgMethods/1566026269 (var3281) var1286)
(declare-fun var3281_getSignatureList/91443967 (var990) String)
(declare-fun cast-from-var1286-to-var990 (var1286) var990)
(declare-fun parent/1566026269 (var3281) var653)
(declare-fun getName/191485936 (var1019) String)
(declare-fun cast-from-var653-to-var1019 (var653) var1019)
(declare-fun var3281_argTypesString/1562103107 ((Array Int ClassObject)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-966825728 (var1042 String) void)
(declare-const null-var3281 var3281)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var1754 var3281) ; Statement: r0 := @this: jdk.internal.dynalink.beans.OverloadedMethod 
(assert (not (= var1754 null-var3281)))
(declare-const var1306 (Array Int ClassObject)) ; Statement: r16 := @parameter0: java.lang.Class[] 
(assert (not (= var1306 null-__Array__Int__ClassObject__)))
(define-const var3322 var1286 (varArgMethods/1566026269 var1754)) ; Statement: $r1 = r0.<jdk.internal.dynalink.beans.OverloadedMethod: java.util.ArrayList varArgMethods> 
(assert true)
(define-const var1153 Bool (isEmpty/1321303667 var3322)) ; Statement: $z0 = virtualinvoke $r1.<java.util.ArrayList: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.NoSuchMethodException 
(assert (= (ite var1153 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1795 var1042 var1042-init) ; Statement: $r2 = new java.lang.NoSuchMethodException 
(define-const var3198 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3198)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3198!1 String)
(assert (= var3198!1 ""))
(assert true)
(define-const var2498 String (append/672562846 var3198!1 "None of the fixed arity signatures ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("None of the fixed arity signatures ") 
(declare-const var3198!2 String)
(assert (= var3198!2 (str.++ var3198!1 "None of the fixed arity signatures ")))
(define-const var3700 var1286 (fixArgMethods/1566026269 var1754)) ; Statement: $r4 = r0.<jdk.internal.dynalink.beans.OverloadedMethod: java.util.ArrayList fixArgMethods> 
(define-const var1552 String (var3281_getSignatureList/91443967 (cast-from-var1286-to-var990 var3700))) ; Statement: $r5 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String getSignatureList(java.util.List)>($r4) 
(assert true)
(define-const var2563 String (append/672562846 var2498 var1552)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2498!1 String)
(assert (= var2498!1 (str.++ var2498 var1552)))
(assert true)
(define-const var3336 String (append/672562846 var2563 " or the variable arity signatures ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" or the variable arity signatures ") 
(declare-const var2563!1 String)
(assert (= var2563!1 (str.++ var2563 " or the variable arity signatures ")))
(define-const var470 var1286 (varArgMethods/1566026269 var1754)) ; Statement: $r8 = r0.<jdk.internal.dynalink.beans.OverloadedMethod: java.util.ArrayList varArgMethods> 
(define-const var1263 String (var3281_getSignatureList/91443967 (cast-from-var1286-to-var990 var470))) ; Statement: $r9 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String getSignatureList(java.util.List)>($r8) 
(assert true)
(define-const var3896 String (append/672562846 var3336 var1263)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3336!1 String)
(assert (= var3336!1 (str.++ var3336 var1263)))
(assert true)
(define-const var17 String (append/672562846 var3896 " of the method ")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of the method ") 
(declare-const var3896!1 String)
(assert (= var3896!1 (str.++ var3896 " of the method ")))
(define-const var1977 var653 (parent/1566026269 var1754)) ; Statement: $r12 = r0.<jdk.internal.dynalink.beans.OverloadedMethod: jdk.internal.dynalink.beans.OverloadedDynamicMethod parent> 
(assert true)
(define-const var1330 String (getName/191485936 (cast-from-var653-to-var1019 var1977))) ; Statement: $r13 = virtualinvoke $r12.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.lang.String getName()>() 
(assert true)
(define-const var1447 String (append/672562846 var17 var1330)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var17!1 String)
(assert (= var17!1 (str.++ var17 var1330)))
(assert true)
(define-const var2178 String (append/672562846 var1447 " match the argument types ")) ; Statement: $r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" match the argument types ") 
(declare-const var1447!1 String)
(assert (= var1447!1 (str.++ var1447 " match the argument types ")))
(define-const var2406 String (var3281_argTypesString/1562103107 var1306)) ; Statement: $r17 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String argTypesString(java.lang.Class[])>(r16) 
(assert true)
(define-const var3592 String (append/672562846 var2178 var2406)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2178!1 String)
(assert (= var2178!1 (str.++ var2178 var2406)))
(assert true)
(define-const var2292 String (toString/-2075883882 var3592)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-966825728 var1795 var2292)) ; Statement: specialinvoke $r2.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r20) 

(declare-const var1795!1 var1042)
(declare-const var2292!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {varArgMethods/1566026269=([jdk.internal.dynalink.beans.OverloadedMethod], java.util.ArrayList), isEmpty/1321303667=([java.util.ArrayList], boolean), var1042-init=([], java.lang.NoSuchMethodException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fixArgMethods/1566026269=([jdk.internal.dynalink.beans.OverloadedMethod], java.util.ArrayList), var3281_getSignatureList/91443967=([java.util.List], java.lang.String), cast-from-var1286-to-var990=([java.util.ArrayList], java.util.List), parent/1566026269=([jdk.internal.dynalink.beans.OverloadedMethod], jdk.internal.dynalink.beans.OverloadedDynamicMethod), getName/191485936=([jdk.internal.dynalink.beans.DynamicMethod], java.lang.String), cast-from-var653-to-var1019=([jdk.internal.dynalink.beans.OverloadedDynamicMethod], jdk.internal.dynalink.beans.DynamicMethod), var3281_argTypesString/1562103107=([java.lang.Class[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-966825728=([java.lang.NoSuchMethodException, java.lang.String], void)}
; {var3281=jdk.internal.dynalink.beans.OverloadedMethod, var1754=r0, var1306=r16, var1286=java.util.ArrayList, var3322=$r1, var1153=$z0, var1042=java.lang.NoSuchMethodException, var1795=$r2, var3198=$r3, var2498=$r6, var3700=$r4, var990=java.util.List, var1552=$r5, var2563=$r7, var3336=$r10, var470=$r8, var1263=$r9, var3896=$r11, var17=$r14, var653=jdk.internal.dynalink.beans.OverloadedDynamicMethod, var1977=$r12, var1019=jdk.internal.dynalink.beans.DynamicMethod, var1330=$r13, var1447=$r15, var2178=$r18, var2406=$r17, var3592=$r19, var2292=$r20}
; {jdk.internal.dynalink.beans.OverloadedMethod=var3281, r0=var1754, r16=var1306, java.util.ArrayList=var1286, $r1=var3322, $z0=var1153, java.lang.NoSuchMethodException=var1042, $r2=var1795, $r3=var3198, $r6=var2498, $r4=var3700, java.util.List=var990, $r5=var1552, $r7=var2563, $r10=var3336, $r8=var470, $r9=var1263, $r11=var3896, $r14=var17, jdk.internal.dynalink.beans.OverloadedDynamicMethod=var653, $r12=var1977, jdk.internal.dynalink.beans.DynamicMethod=var1019, $r13=var1330, $r15=var1447, $r18=var2178, $r17=var2406, $r19=var3592, $r20=var2292}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.beans.OverloadedMethod;	r16 := @parameter0: java.lang.Class[];	$r1 = r0.<jdk.internal.dynalink.beans.OverloadedMethod: java.util.ArrayList varArgMethods>;	$z0 = virtualinvoke $r1.<java.util.ArrayList: boolean isEmpty()>();	if $z0 == 0 goto $r2 = new java.lang.NoSuchMethodException;	$r2 = new java.lang.NoSuchMethodException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("None of the fixed arity signatures ");	$r4 = r0.<jdk.internal.dynalink.beans.OverloadedMethod: java.util.ArrayList fixArgMethods>;	$r5 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String getSignatureList(java.util.List)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" or the variable arity signatures ");	$r8 = r0.<jdk.internal.dynalink.beans.OverloadedMethod: java.util.ArrayList varArgMethods>;	$r9 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String getSignatureList(java.util.List)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of the method ");	$r12 = r0.<jdk.internal.dynalink.beans.OverloadedMethod: jdk.internal.dynalink.beans.OverloadedDynamicMethod parent>;	$r13 = virtualinvoke $r12.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" match the argument types ");	$r17 = staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: java.lang.String argTypesString(java.lang.Class[])>(r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r20);	throw $r2
;block_num 2