(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2508 0)
(declare-sort var3993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun var3993-init () var3993)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3993 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const var2508-primitiveTypes (Array Int ClassObject))
(declare-const var1756 ClassObject) ; Statement: r3 := @parameter0: java.lang.Class 
(assert (not (= var1756 null-ClassObject)))
(define-const var383 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var1003 (Array Int ClassObject) var2508-primitiveTypes) ; Statement: $r0 = <org.apache.ibatis.javassist.util.proxy.FactoryHelper: java.lang.Class[] primitiveTypes> 
(define-const var2464 Int (getLength-Arr-ClassObject-1 var1003)) ; Statement: $i0 = lengthof $r0 
 ; Statement: if i1 >= $i0 goto $r1 = new java.lang.RuntimeException 
(assert (>= var383 var2464)) ; Cond: i1 >= $i0 
(define-const var269 var3993 var3993-init) ; Statement: $r1 = new java.lang.RuntimeException 
(define-const var813 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var813)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var813!1 String)
(assert (= var813!1 ""))
(assert true)
(define-const var2743 String (append/672562846 var813!1 "bad type:")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad type:") 
(declare-const var813!2 String)
(assert (= var813!2 (str.++ var813!1 "bad type:")))
(assert true)
(define-const var320 String (getName/-1958580599 var1756)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1786 String (append/672562846 var2743 var320)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2743!1 String)
(assert (= var2743!1 (str.++ var2743 var320)))
(assert true)
(define-const var1477 String (toString/-2075883882 var1786)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var269 var1477)) ; Statement: specialinvoke $r1.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7) 

(declare-const var269!1 var3993)
(declare-const var1477!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-ClassObject-1=([java.lang.Class[]], int), var3993-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1756=r3, var383=i1, var2508=org.apache.ibatis.javassist.util.proxy.FactoryHelper, var1003=$r0, var2464=$i0, var3993=java.lang.RuntimeException, var269=$r1, var813=$r2, var2743=$r5, var320=$r4, var1786=$r6, var1477=$r7}
; {r3=var1756, i1=var383, org.apache.ibatis.javassist.util.proxy.FactoryHelper=var2508, $r0=var1003, $i0=var2464, java.lang.RuntimeException=var3993, $r1=var269, $r2=var813, $r5=var2743, $r4=var320, $r6=var1786, $r7=var1477}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.Class;	i1 = 0;	$r0 = <org.apache.ibatis.javassist.util.proxy.FactoryHelper: java.lang.Class[] primitiveTypes>;	$i0 = lengthof $r0;	if i1 >= $i0 goto $r1 = new java.lang.RuntimeException;	$r1 = new java.lang.RuntimeException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad type:");	$r4 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 3