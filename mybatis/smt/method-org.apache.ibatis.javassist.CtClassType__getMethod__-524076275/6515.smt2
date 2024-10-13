(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1459 0)
(declare-sort var175 0)
(declare-sort var1808 0)
(declare-sort var1407 0)
(declare-sort var3514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1459_getMethod0/-980534840 (var1407 String String) var1808)
(declare-fun cast-from-var1459-to-var1407 (var1459) var1407)
(declare-fun var3514-init () var3514)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var1407) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/982930918 (var3514 String) void)
(declare-const null-var1459 var1459)
(declare-const null-String String)
(declare-const null-var1808 var1808)
(declare-const var2987 var1459) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClassType 
(assert (not (= var2987 null-var1459)))
(declare-const var3690 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3690 null-String)))
(declare-const var2587 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2587 null-String)))
(define-const var1250 var1808 (var1459_getMethod0/-980534840 (cast-from-var1459-to-var1407 var2987) var3690 var2587)) ; Statement: r3 = staticinvoke <org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.CtMethod getMethod0(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>(r0, r1, r2) 
 ; Statement: if r3 == null goto $r4 = new org.apache.ibatis.javassist.NotFoundException 
(assert (= var1250 null-var1808)) ; Cond: r3 == null 
(define-const var807 var3514 var3514-init) ; Statement: $r4 = new org.apache.ibatis.javassist.NotFoundException 
(define-const var416 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var416)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var416!1 String)
(assert (= var416!1 ""))
(assert true)
(define-const var2309 String (append/672562846 var416!1 var3690)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var416!2 String)
(assert (= var416!2 (str.++ var416!1 var3690)))
(assert true)
(define-const var3530 String (append/672562846 var2309 "(..) is not found in ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(..) is not found in ") 
(declare-const var2309!1 String)
(assert (= var2309!1 (str.++ var2309 "(..) is not found in ")))
(assert true)
(define-const var2164 String (getName/1611768686 (cast-from-var1459-to-var1407 var2987))) ; Statement: $r7 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>() 
(assert true)
(define-const var2308 String (append/672562846 var3530 var2164)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3530!1 String)
(assert (= var3530!1 (str.++ var3530 var2164)))
(assert true)
(define-const var428 String (toString/-2075883882 var2308)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/982930918 var807 var428)) ; Statement: specialinvoke $r4.<org.apache.ibatis.javassist.NotFoundException: void <init>(java.lang.String)>($r10) 

(declare-const var807!1 var3514)
(declare-const var428!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1459_getMethod0/-980534840=([org.apache.ibatis.javassist.CtClass, java.lang.String, java.lang.String], org.apache.ibatis.javassist.CtMethod), cast-from-var1459-to-var1407=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.CtClass), var3514-init=([], org.apache.ibatis.javassist.NotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/982930918=([org.apache.ibatis.javassist.NotFoundException, java.lang.String], void)}
; {var1459=org.apache.ibatis.javassist.CtClassType, var2987=r0, var3690=r1, var175=null_type, var2587=r2, var1808=org.apache.ibatis.javassist.CtMethod, var1407=org.apache.ibatis.javassist.CtClass, var1250=r3, var3514=org.apache.ibatis.javassist.NotFoundException, var807=$r4, var416=$r5, var2309=$r6, var3530=$r8, var2164=$r7, var2308=$r9, var428=$r10}
; {org.apache.ibatis.javassist.CtClassType=var1459, r0=var2987, r1=var3690, null_type=var175, r2=var2587, org.apache.ibatis.javassist.CtMethod=var1808, org.apache.ibatis.javassist.CtClass=var1407, r3=var1250, org.apache.ibatis.javassist.NotFoundException=var3514, $r4=var807, $r5=var416, $r6=var2309, $r8=var3530, $r7=var2164, $r9=var2308, $r10=var428}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClassType;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r3 = staticinvoke <org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.CtMethod getMethod0(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>(r0, r1, r2);	if r3 == null goto $r4 = new org.apache.ibatis.javassist.NotFoundException;	$r4 = new org.apache.ibatis.javassist.NotFoundException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(..) is not found in ");	$r7 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.apache.ibatis.javassist.NotFoundException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 2