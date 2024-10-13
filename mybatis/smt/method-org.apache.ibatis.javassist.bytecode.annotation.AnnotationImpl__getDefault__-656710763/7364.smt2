(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var952 0)
(declare-sort var3118 0)
(declare-sort var39 0)
(declare-sort var194 0)
(declare-sort var2580 0)
(declare-sort var3275 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun annotation/-1138747971 (var952) var194)
(declare-fun getTypeName/-183261408 (var194) String)
(declare-fun pool/-1138747971 (var952) var2580)
(declare-fun var3275-init () var3275)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3275 String) void)
(declare-const null-var952 var952)
(declare-const null-String String)
(declare-const null-var39 var39)
(declare-const null-var2580 var2580)
(declare-const var2598 var952) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.annotation.AnnotationImpl 
(assert (not (= var2598 null-var952)))
(declare-const var1631 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1631 null-String)))
(declare-const var41 var39) ; Statement: r19 := @parameter1: java.lang.reflect.Method 
(assert (not (= var41 null-var39)))
(define-const var2724 var194 (annotation/-1138747971 var2598)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.AnnotationImpl: org.apache.ibatis.javassist.bytecode.'annotation'.Annotation 'annotation'> 
(assert true)
(define-const var3556 String (getTypeName/-183261408 var2724)) ; Statement: r2 = virtualinvoke $r1.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.lang.String getTypeName()>() 
(define-const var3514 var2580 (pool/-1138747971 var2598)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.AnnotationImpl: org.apache.ibatis.javassist.ClassPool pool> 
 ; Statement: if $r3 == null goto $r4 = new java.lang.RuntimeException 
(assert (= var3514 null-var2580)) ; Cond: $r3 == null 
(define-const var2543 var3275 var3275-init) ; Statement: $r4 = new java.lang.RuntimeException 
(define-const var267 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var267)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var267!1 String)
(assert (= var267!1 ""))
(assert true)
(define-const var3480 String (append/672562846 var267!1 "no default value: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no default value: ") 
(declare-const var267!2 String)
(assert (= var267!2 (str.++ var267!1 "no default value: ")))
(assert true)
(define-const var2072 String (append/672562846 var3480 var3556)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3480!1 String)
(assert (= var3480!1 (str.++ var3480 var3556)))
(assert true)
(define-const var1230 String (append/672562846 var2072 ".")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2072!1 String)
(assert (= var2072!1 (str.++ var2072 ".")))
(assert true)
(define-const var2051 String (append/672562846 var1230 var1631)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var1230!1 String)
(assert (= var1230!1 (str.++ var1230 var1631)))
(assert true)
(define-const var878 String (append/672562846 var2051 "()")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var2051!1 String)
(assert (= var2051!1 (str.++ var2051 "()")))
(assert true)
(define-const var2861 String (toString/-2075883882 var878)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2543 var2861)) ; Statement: specialinvoke $r4.<java.lang.RuntimeException: void <init>(java.lang.String)>($r12) 

(declare-const var2543!1 var3275)
(declare-const var2861!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {annotation/-1138747971=([org.apache.ibatis.javassist.bytecode.annotation.AnnotationImpl], org.apache.ibatis.javassist.bytecode.annotation.Annotation), getTypeName/-183261408=([org.apache.ibatis.javassist.bytecode.annotation.Annotation], java.lang.String), pool/-1138747971=([org.apache.ibatis.javassist.bytecode.annotation.AnnotationImpl], org.apache.ibatis.javassist.ClassPool), var3275-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var952=org.apache.ibatis.javassist.bytecode.annotation.AnnotationImpl, var2598=r0, var1631=r8, var3118=null_type, var39=java.lang.reflect.Method, var41=r19, var194=org.apache.ibatis.javassist.bytecode.annotation.Annotation, var2724=$r1, var3556=r2, var2580=org.apache.ibatis.javassist.ClassPool, var3514=$r3, var3275=java.lang.RuntimeException, var2543=$r4, var267=$r5, var3480=$r6, var2072=$r7, var1230=$r9, var2051=$r10, var878=$r11, var2861=$r12}
; {org.apache.ibatis.javassist.bytecode.annotation.AnnotationImpl=var952, r0=var2598, r8=var1631, null_type=var3118, java.lang.reflect.Method=var39, r19=var41, org.apache.ibatis.javassist.bytecode.annotation.Annotation=var194, $r1=var2724, r2=var3556, org.apache.ibatis.javassist.ClassPool=var2580, $r3=var3514, java.lang.RuntimeException=var3275, $r4=var2543, $r5=var267, $r6=var3480, $r7=var2072, $r9=var1230, $r10=var2051, $r11=var878, $r12=var2861}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.annotation.AnnotationImpl;	r8 := @parameter0: java.lang.String;	r19 := @parameter1: java.lang.reflect.Method;	$r1 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.AnnotationImpl: org.apache.ibatis.javassist.bytecode.'annotation'.Annotation 'annotation'>;	r2 = virtualinvoke $r1.<org.apache.ibatis.javassist.bytecode.'annotation'.Annotation: java.lang.String getTypeName()>();	$r3 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.AnnotationImpl: org.apache.ibatis.javassist.ClassPool pool>;	if $r3 == null goto $r4 = new java.lang.RuntimeException;	$r4 = new java.lang.RuntimeException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no default value: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.RuntimeException: void <init>(java.lang.String)>($r12);	throw $r4
;block_num 2