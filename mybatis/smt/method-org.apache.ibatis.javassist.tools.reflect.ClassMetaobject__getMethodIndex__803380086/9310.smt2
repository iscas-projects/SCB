(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3122 0)
(declare-sort var2815 0)
(declare-sort var627 0)
(declare-sort var2795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getReflectiveMethods/-650517154 (var3122) (Array Int var627))
(declare-fun getLength-Arr-var627-1 ((Array Int var627)) Int)
(declare-fun var2795-init () var2795)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-966825728 (var2795 String) void)
(declare-const null-var3122 var3122)
(declare-const null-String String)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var1651 var3122) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.reflect.ClassMetaobject 
(assert (not (= var1651 null-var3122)))
(declare-const var400 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var400 null-String)))
(declare-const var3419 (Array Int ClassObject)) ; Statement: r11 := @parameter1: java.lang.Class[] 
(assert (not (= var3419 null-__Array__Int__ClassObject__)))
(assert true)
(define-const var2597 (Array Int var627) (getReflectiveMethods/-650517154 var1651)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.tools.reflect.ClassMetaobject: java.lang.reflect.Method[] getReflectiveMethods()>() 
(define-const var2150 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var748 Int (getLength-Arr-var627-1 var2597)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto $r2 = new java.lang.NoSuchMethodException 
(assert (>= var2150 var748)) ; Cond: i1 >= $i0 
(define-const var2685 var2795 var2795-init) ; Statement: $r2 = new java.lang.NoSuchMethodException 
(define-const var360 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var360)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var360!1 String)
(assert (= var360!1 ""))
(assert true)
(define-const var3423 String (append/672562846 var360!1 "Method ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method ") 
(declare-const var360!2 String)
(assert (= var360!2 (str.++ var360!1 "Method ")))
(assert true)
(define-const var383 String (append/672562846 var3423 var400)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3423!1 String)
(assert (= var3423!1 (str.++ var3423 var400)))
(assert true)
(define-const var2903 String (append/672562846 var383 " not found")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found") 
(declare-const var383!1 String)
(assert (= var383!1 (str.++ var383 " not found")))
(assert true)
(define-const var686 String (toString/-2075883882 var2903)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-966825728 var2685 var686)) ; Statement: specialinvoke $r2.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r8) 

(declare-const var2685!1 var2795)
(declare-const var686!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getReflectiveMethods/-650517154=([org.apache.ibatis.javassist.tools.reflect.ClassMetaobject], java.lang.reflect.Method[]), getLength-Arr-var627-1=([java.lang.reflect.Method[]], int), var2795-init=([], java.lang.NoSuchMethodException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-966825728=([java.lang.NoSuchMethodException, java.lang.String], void)}
; {var3122=org.apache.ibatis.javassist.tools.reflect.ClassMetaobject, var1651=r0, var400=r4, var2815=null_type, var3419=r11, var627=java.lang.reflect.Method, var2597=r1, var2150=i1, var748=$i0, var2795=java.lang.NoSuchMethodException, var2685=$r2, var360=$r3, var3423=$r5, var383=$r6, var2903=$r7, var686=$r8}
; {org.apache.ibatis.javassist.tools.reflect.ClassMetaobject=var3122, r0=var1651, r4=var400, null_type=var2815, r11=var3419, java.lang.reflect.Method=var627, r1=var2597, i1=var2150, $i0=var748, java.lang.NoSuchMethodException=var2795, $r2=var2685, $r3=var360, $r5=var3423, $r6=var383, $r7=var2903, $r8=var686}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.reflect.ClassMetaobject;	r4 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.Class[];	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.tools.reflect.ClassMetaobject: java.lang.reflect.Method[] getReflectiveMethods()>();	i1 = 0;	$i0 = lengthof r1;	if i1 >= $i0 goto $r2 = new java.lang.NoSuchMethodException;	$r2 = new java.lang.NoSuchMethodException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 3