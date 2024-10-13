(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1192 0)
(declare-sort var2627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2627-init () var2627)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var1192) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2627 String) void)
(declare-const null-var1192 var1192)
(declare-const var2411 var1192) ; Statement: r2 := @this: org.apache.ibatis.javassist.CtClass 
(assert (not (= var2411 null-var1192)))
(define-const var3203 var2627 var2627-init) ; Statement: $r0 = new java.lang.RuntimeException 
(define-const var1017 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1017)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1017!1 String)
(assert (= var1017!1 ""))
(assert true)
(define-const var1193 String (append/672562846 var1017!1 "cannot defrost ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot defrost ") 
(declare-const var1017!2 String)
(assert (= var1017!2 (str.++ var1017!1 "cannot defrost ")))
(assert true)
(define-const var794 String (getName/1611768686 var2411)) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var115 String (append/672562846 var1193 var794)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1193!1 String)
(assert (= var1193!1 (str.++ var1193 var794)))
(assert true)
(define-const var3415 String (toString/-2075883882 var115)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3203 var3415)) ; Statement: specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var3203!1 var2627)
(declare-const var3415!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2627-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1192=org.apache.ibatis.javassist.CtClass, var2411=r2, var2627=java.lang.RuntimeException, var3203=$r0, var1017=$r1, var1193=$r4, var794=$r3, var115=$r5, var3415=$r6}
; {org.apache.ibatis.javassist.CtClass=var1192, r2=var2411, java.lang.RuntimeException=var2627, $r0=var3203, $r1=var1017, $r4=var1193, $r3=var794, $r5=var115, $r6=var3415}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.CtClass;	$r0 = new java.lang.RuntimeException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot defrost ");	$r3 = virtualinvoke r2.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1