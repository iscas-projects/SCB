(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var501 0)
(declare-sort var3346 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun componentType/1850219180 (var501) ClassObject)
(declare-fun var3346_typeToString/-1245699951 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var501 var501)
(declare-const var1516 var501) ; Statement: r1 := @this: com.alibaba.fastjson2.util.BeanUtils$GenericArrayTypeImpl 
(assert (not (= var1516 null-var501)))
(define-const var1855 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1855)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1855!1 String)
(assert (= var1855!1 ""))
(define-const var2949 ClassObject (componentType/1850219180 var1516)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.util.BeanUtils$GenericArrayTypeImpl: java.lang.reflect.Type componentType> 
(define-const var831 String (var3346_typeToString/-1245699951 var2949)) ; Statement: $r3 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.String typeToString(java.lang.reflect.Type)>($r2) 
(assert true)
(define-const var604 String (append/672562846 var1855!1 var831)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1855!2 String)
(assert (= var1855!2 (str.++ var1855!1 var831)))
(assert true)
(define-const var3392 String (append/672562846 var604 "[]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[]") 
(declare-const var604!1 String)
(assert (= var604!1 (str.++ var604 "[]")))
(assert true)
(define-const var2419 String (toString/-2075883882 var3392)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), componentType/1850219180=([com.alibaba.fastjson2.util.BeanUtils$GenericArrayTypeImpl], java.lang.reflect.Type), var3346_typeToString/-1245699951=([java.lang.reflect.Type], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var501=com.alibaba.fastjson2.util.BeanUtils$GenericArrayTypeImpl, var1516=r1, var1855=$r0, var2949=$r2, var3346=com.alibaba.fastjson2.util.BeanUtils, var831=$r3, var604=$r4, var3392=$r5, var2419=$r6}
; {com.alibaba.fastjson2.util.BeanUtils$GenericArrayTypeImpl=var501, r1=var1516, $r0=var1855, $r2=var2949, com.alibaba.fastjson2.util.BeanUtils=var3346, $r3=var831, $r4=var604, $r5=var3392, $r6=var2419}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.util.BeanUtils$GenericArrayTypeImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.alibaba.fastjson2.util.BeanUtils$GenericArrayTypeImpl: java.lang.reflect.Type componentType>;	$r3 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.String typeToString(java.lang.reflect.Type)>($r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1