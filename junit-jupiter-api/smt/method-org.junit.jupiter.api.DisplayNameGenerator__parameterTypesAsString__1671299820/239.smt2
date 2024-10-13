(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var958 0)
(declare-sort var3989 0)
(declare-sort var2652 0)
(declare-sort var3959 0)
(declare-sort var3704 0)
(declare-sort var423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3989_notNull/-1363825176 (var2652 String) var2652)
(declare-fun cast-from-var958-to-var2652 (var958) var2652)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var3704_bootstrap$/-1169530353 () var3959)
(declare-fun getParameterTypes/827748249 (var958) (Array Int ClassObject))
(declare-fun var423_nullSafeToString/795793632 (var3959 (Array Int ClassObject)) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var958 var958)
(declare-const var2762 var958) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var2762 null-var958)))
;(assert (var3989_notNull/-1363825176 (cast-from-var958-to-var2652 var2762) "Method must not be null")) ; Statement: staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.Object notNull(java.lang.Object,java.lang.String)>(r0, "Method must not be null") 

(declare-const var2762!1 var958)
(declare-const var1772 String)
(define-const var888 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var888)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var888!1 String)
(assert (= var888!1 ""))
(assert true)
(define-const var1055 String (append/-1166366385 var888!1 40)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var888!2 String)
(assert (str.prefixof var888!1 var888!2))
(define-const var2154 var3959 var3704_bootstrap$/-1169530353) ; Statement: $r3 = staticinvoke <org.junit.jupiter.api.DisplayNameGenerator$getSimpleName__33: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var2173 (Array Int ClassObject) (getParameterTypes/827748249 var2762!1)) ; Statement: $r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var2081 String (var423_nullSafeToString/795793632 var2154 var2173)) ; Statement: $r4 = staticinvoke <org.junit.platform.commons.util.ClassUtils: java.lang.String nullSafeToString(java.util.function.Function,java.lang.Class[])>($r3, $r2) 
(assert true)
(define-const var2628 String (append/672562846 var1055 var2081)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1055!1 String)
(assert (= var1055!1 (str.++ var1055 var2081)))
(assert true)
(define-const var1370 String (append/-1166366385 var2628 41)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2628!1 String)
(assert (str.prefixof var2628 var2628!1))
(assert true)
(define-const var790 String (toString/-2075883882 var1370)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3989_notNull/-1363825176=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var958-to-var2652=([java.lang.reflect.Method], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var3704_bootstrap$/-1169530353=([], java.util.function.Function), getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), var423_nullSafeToString/795793632=([java.util.function.Function, java.lang.Class[]], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var958=java.lang.reflect.Method, var2762=r0, var3989=org.junit.platform.commons.util.Preconditions, var2652=java.lang.Object, var1772="Method must not be null", var888=$r1, var1055=$r5, var3959=java.util.function.Function, var3704=org.junit.jupiter.api.DisplayNameGenerator$getSimpleName__33, var2154=$r3, var2173=$r2, var423=org.junit.platform.commons.util.ClassUtils, var2081=$r4, var2628=$r6, var1370=$r7, var790=$r8}
; {java.lang.reflect.Method=var958, r0=var2762, org.junit.platform.commons.util.Preconditions=var3989, java.lang.Object=var2652, "Method must not be null"=var1772, $r1=var888, $r5=var1055, java.util.function.Function=var3959, org.junit.jupiter.api.DisplayNameGenerator$getSimpleName__33=var3704, $r3=var2154, $r2=var2173, org.junit.platform.commons.util.ClassUtils=var423, $r4=var2081, $r6=var2628, $r7=var1370, $r8=var790}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Method;	staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.Object notNull(java.lang.Object,java.lang.String)>(r0, "Method must not be null");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r3 = staticinvoke <org.junit.jupiter.api.DisplayNameGenerator$getSimpleName__33: java.util.function.Function bootstrap$()>();	$r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$r4 = staticinvoke <org.junit.platform.commons.util.ClassUtils: java.lang.String nullSafeToString(java.util.function.Function,java.lang.Class[])>($r3, $r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1