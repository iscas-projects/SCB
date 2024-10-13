(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var280 0)
(declare-sort var251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lowerBound/-1816536636 (var280) ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var251_typeToString/-1245699951 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var280 var280)
(declare-const null-ClassObject ClassObject)
(declare-const var1587 var280) ; Statement: r0 := @this: com.alibaba.fastjson2.util.BeanUtils$WildcardTypeImpl 
(assert (not (= var1587 null-var280)))
(define-const var2147 ClassObject (lowerBound/-1816536636 var1587)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.util.BeanUtils$WildcardTypeImpl: java.lang.reflect.Type lowerBound> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.alibaba.fastjson2.util.BeanUtils$WildcardTypeImpl: java.lang.reflect.Type upperBound> 
(assert (not (= var2147 null-ClassObject))) ; Negate: Cond: $r1 == null  
(define-const var1581 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1581)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1581!1 String)
(assert (= var1581!1 ""))
(assert true)
(define-const var2610 String (append/672562846 var1581!1 "? super ")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("? super ") 
(declare-const var1581!2 String)
(assert (= var1581!2 (str.++ var1581!1 "? super ")))
(define-const var2155 ClassObject (lowerBound/-1816536636 var1587)) ; Statement: $r10 = r0.<com.alibaba.fastjson2.util.BeanUtils$WildcardTypeImpl: java.lang.reflect.Type lowerBound> 
(define-const var2927 String (var251_typeToString/-1245699951 var2155)) ; Statement: $r11 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.String typeToString(java.lang.reflect.Type)>($r10) 
(assert true)
(define-const var3186 String (append/672562846 var2610 var2927)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2610!1 String)
(assert (= var2610!1 (str.++ var2610 var2927)))
(assert true)
(define-const var131 String (toString/-2075883882 var3186)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {lowerBound/-1816536636=([com.alibaba.fastjson2.util.BeanUtils$WildcardTypeImpl], java.lang.reflect.Type), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var251_typeToString/-1245699951=([java.lang.reflect.Type], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var280=com.alibaba.fastjson2.util.BeanUtils$WildcardTypeImpl, var1587=r0, var2147=$r1, var1581=$r9, var2610=$r12, var2155=$r10, var251=com.alibaba.fastjson2.util.BeanUtils, var2927=$r11, var3186=$r13, var131=$r14}
; {com.alibaba.fastjson2.util.BeanUtils$WildcardTypeImpl=var280, r0=var1587, $r1=var2147, $r9=var1581, $r12=var2610, $r10=var2155, com.alibaba.fastjson2.util.BeanUtils=var251, $r11=var2927, $r13=var3186, $r14=var131}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.util.BeanUtils$WildcardTypeImpl;	$r1 = r0.<com.alibaba.fastjson2.util.BeanUtils$WildcardTypeImpl: java.lang.reflect.Type lowerBound>;	if $r1 == null goto $r2 = r0.<com.alibaba.fastjson2.util.BeanUtils$WildcardTypeImpl: java.lang.reflect.Type upperBound>;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("? super ");	$r10 = r0.<com.alibaba.fastjson2.util.BeanUtils$WildcardTypeImpl: java.lang.reflect.Type lowerBound>;	$r11 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.String typeToString(java.lang.reflect.Type)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 2