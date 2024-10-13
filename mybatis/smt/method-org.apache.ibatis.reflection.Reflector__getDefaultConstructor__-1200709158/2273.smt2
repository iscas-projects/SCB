(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1322 0)
(declare-sort var1525 0)
(declare-sort var1863 0)
(declare-sort var2420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultConstructor/-1577411681 (var1322) var1525)
(declare-fun var1863-init () var1863)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-1577411681 (var1322) ClassObject)
(declare-fun append/-1031950772 (String var2420) String)
(declare-fun cast-from-ClassObject-to-var2420 (ClassObject) var2420)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-670718455 (var1863 String) void)
(declare-const null-var1322 var1322)
(declare-const null-var1525 var1525)
(declare-const var1858 var1322) ; Statement: r0 := @this: org.apache.ibatis.reflection.Reflector 
(assert (not (= var1858 null-var1322)))
(define-const var2910 var1525 (defaultConstructor/-1577411681 var1858)) ; Statement: $r1 = r0.<org.apache.ibatis.reflection.Reflector: java.lang.reflect.Constructor defaultConstructor> 
 ; Statement: if $r1 == null goto $r2 = new org.apache.ibatis.reflection.ReflectionException 
(assert (= var2910 null-var1525)) ; Cond: $r1 == null 
(define-const var858 var1863 var1863-init) ; Statement: $r2 = new org.apache.ibatis.reflection.ReflectionException 
(define-const var2968 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2968)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2968!1 String)
(assert (= var2968!1 ""))
(assert true)
(define-const var3731 String (append/672562846 var2968!1 "There is no default constructor for ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("There is no default constructor for ") 
(declare-const var2968!2 String)
(assert (= var2968!2 (str.++ var2968!1 "There is no default constructor for ")))
(define-const var141 ClassObject (type/-1577411681 var1858)) ; Statement: $r4 = r0.<org.apache.ibatis.reflection.Reflector: java.lang.Class type> 
(assert true)
(define-const var3582 String (append/-1031950772 var3731 (cast-from-ClassObject-to-var2420 var141))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3731!1 String)
(assert (str.prefixof var3731 var3731!1))
(assert true)
(define-const var3848 String (toString/-2075883882 var3582)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-670718455 var858 var3848)) ; Statement: specialinvoke $r2.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r7) 

(declare-const var858!1 var1863)
(declare-const var3848!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultConstructor/-1577411681=([org.apache.ibatis.reflection.Reflector], java.lang.reflect.Constructor), var1863-init=([], org.apache.ibatis.reflection.ReflectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/-1577411681=([org.apache.ibatis.reflection.Reflector], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2420=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-670718455=([org.apache.ibatis.reflection.ReflectionException, java.lang.String], void)}
; {var1322=org.apache.ibatis.reflection.Reflector, var1858=r0, var1525=java.lang.reflect.Constructor, var2910=$r1, var1863=org.apache.ibatis.reflection.ReflectionException, var858=$r2, var2968=$r3, var3731=$r5, var141=$r4, var2420=java.lang.Object, var3582=$r6, var3848=$r7}
; {org.apache.ibatis.reflection.Reflector=var1322, r0=var1858, java.lang.reflect.Constructor=var1525, $r1=var2910, org.apache.ibatis.reflection.ReflectionException=var1863, $r2=var858, $r3=var2968, $r5=var3731, $r4=var141, java.lang.Object=var2420, $r6=var3582, $r7=var3848}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.reflection.Reflector;	$r1 = r0.<org.apache.ibatis.reflection.Reflector: java.lang.reflect.Constructor defaultConstructor>;	if $r1 == null goto $r2 = new org.apache.ibatis.reflection.ReflectionException;	$r2 = new org.apache.ibatis.reflection.ReflectionException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("There is no default constructor for ");	$r4 = r0.<org.apache.ibatis.reflection.Reflector: java.lang.Class type>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 2