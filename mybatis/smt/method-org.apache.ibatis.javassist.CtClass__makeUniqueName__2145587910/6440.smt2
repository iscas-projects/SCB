(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3389 0)
(declare-sort var1608 0)
(declare-sort var2981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2981-init () var2981)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var3389) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2981 String) void)
(declare-const null-var3389 var3389)
(declare-const null-String String)
(declare-const var3216 var3389) ; Statement: r2 := @this: org.apache.ibatis.javassist.CtClass 
(assert (not (= var3216 null-var3389)))
(declare-const var821 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var821 null-String)))
(define-const var2986 var2981 var2981-init) ; Statement: $r0 = new java.lang.RuntimeException 
(define-const var1486 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1486)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1486!1 String)
(assert (= var1486!1 ""))
(assert true)
(define-const var1997 String (append/672562846 var1486!1 "not available in ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not available in ") 
(declare-const var1486!2 String)
(assert (= var1486!2 (str.++ var1486!1 "not available in ")))
(assert true)
(define-const var3962 String (getName/1611768686 var3216)) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var867 String (append/672562846 var1997 var3962)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1997!1 String)
(assert (= var1997!1 (str.++ var1997 var3962)))
(assert true)
(define-const var949 String (toString/-2075883882 var867)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2986 var949)) ; Statement: specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var2986!1 var2981)
(declare-const var949!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2981-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3389=org.apache.ibatis.javassist.CtClass, var3216=r2, var821=r7, var1608=null_type, var2981=java.lang.RuntimeException, var2986=$r0, var1486=$r1, var1997=$r4, var3962=$r3, var867=$r5, var949=$r6}
; {org.apache.ibatis.javassist.CtClass=var3389, r2=var3216, r7=var821, null_type=var1608, java.lang.RuntimeException=var2981, $r0=var2986, $r1=var1486, $r4=var1997, $r3=var3962, $r5=var867, $r6=var949}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.CtClass;	r7 := @parameter0: java.lang.String;	$r0 = new java.lang.RuntimeException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not available in ");	$r3 = virtualinvoke r2.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1