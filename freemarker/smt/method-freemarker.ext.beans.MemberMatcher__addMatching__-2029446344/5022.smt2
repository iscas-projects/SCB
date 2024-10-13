(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2297 0)
(declare-sort var2362 0)
(declare-sort var1877 0)
(declare-sort var930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2362_getDeclaringClass/893815379 (var2362) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var1877-init () var1877)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun append/-1031950772 (String var930) String)
(declare-fun cast-from-var2362-to-var930 (var2362) var930)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1877 String) void)
(declare-const null-var2297 var2297)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2362 var2362)
(declare-const var3911 var2297) ; Statement: r3 := @this: freemarker.ext.beans.MemberMatcher 
(assert (not (= var3911 null-var2297)))
(declare-const var3074 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var3074 null-ClassObject)))
(declare-const var2861 var2362) ; Statement: r0 := @parameter1: java.lang.reflect.Member 
(assert (not (= var2861 null-var2362)))
(define-const var2169 ClassObject (var2362_getDeclaringClass/893815379 var2861)) ; Statement: r1 = interfaceinvoke r0.<java.lang.reflect.Member: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var2313 Bool (isAssignableFrom/-1028998700 var2169 var3074)) ; Statement: $z0 = virtualinvoke r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r2) 
 ; Statement: if $z0 != 0 goto r4 = virtualinvoke r3.<freemarker.ext.beans.MemberMatcher: java.lang.Object toMemberSignature(java.lang.reflect.Member)>(r0) 
(assert (not (not (= (ite var2313 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3262 var1877 var1877-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var3293 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3293)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3293!1 String)
(assert (= var3293!1 ""))
(assert true)
(define-const var2028 String (append/672562846 var3293!1 "Upper bound class ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Upper bound class ") 
(declare-const var3293!2 String)
(assert (= var3293!2 (str.++ var3293!1 "Upper bound class ")))
(assert true)
(define-const var1396 String (getName/-1958580599 var3074)) ; Statement: $r12 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2324 String (append/672562846 var2028 var1396)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2028!1 String)
(assert (= var2028!1 (str.++ var2028 var1396)))
(assert true)
(define-const var3092 String (append/672562846 var2324 " is not the same type or a subtype of the declaring type of member ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not the same type or a subtype of the declaring type of member ") 
(declare-const var2324!1 String)
(assert (= var2324!1 (str.++ var2324 " is not the same type or a subtype of the declaring type of member ")))
(assert true)
(define-const var3050 String (append/-1031950772 var3092 (cast-from-var2362-to-var930 var2861))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3092!1 String)
(assert (str.prefixof var3092 var3092!1))
(assert true)
(define-const var3985 String (append/672562846 var3050 ".")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3050!1 String)
(assert (= var3050!1 (str.++ var3050 ".")))
(assert true)
(define-const var3016 String (toString/-2075883882 var3985)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3262 var3016)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r18) 

(declare-const var3262!1 var1877)
(declare-const var3016!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2362_getDeclaringClass/893815379=([java.lang.reflect.Member], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var1877-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2362-to-var930=([java.lang.reflect.Member], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2297=freemarker.ext.beans.MemberMatcher, var3911=r3, var3074=r2, var2362=java.lang.reflect.Member, var2861=r0, var2169=r1, var2313=$z0, var1877=java.lang.IllegalArgumentException, var3262=$r10, var3293=$r11, var2028=$r13, var1396=$r12, var2324=$r14, var3092=$r15, var930=java.lang.Object, var3050=$r16, var3985=$r17, var3016=$r18}
; {freemarker.ext.beans.MemberMatcher=var2297, r3=var3911, r2=var3074, java.lang.reflect.Member=var2362, r0=var2861, r1=var2169, $z0=var2313, java.lang.IllegalArgumentException=var1877, $r10=var3262, $r11=var3293, $r13=var2028, $r12=var1396, $r14=var2324, $r15=var3092, java.lang.Object=var930, $r16=var3050, $r17=var3985, $r18=var3016}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: freemarker.ext.beans.MemberMatcher;	r2 := @parameter0: java.lang.Class;	r0 := @parameter1: java.lang.reflect.Member;	r1 = interfaceinvoke r0.<java.lang.reflect.Member: java.lang.Class getDeclaringClass()>();	$z0 = virtualinvoke r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r2);	if $z0 != 0 goto r4 = virtualinvoke r3.<freemarker.ext.beans.MemberMatcher: java.lang.Object toMemberSignature(java.lang.reflect.Member)>(r0);	$r10 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Upper bound class ");	$r12 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not the same type or a subtype of the declaring type of member ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r18);	throw $r10
;block_num 2