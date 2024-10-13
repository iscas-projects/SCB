(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1163 0)
(declare-sort var1109 0)
(declare-sort var1827 0)
(declare-sort var855 0)
(declare-sort var2627 0)
(declare-sort var191 0)
(declare-sort var3697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2627-init () var2627)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var191) String)
(declare-fun cast-from-var855-to-var191 (var855) var191)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1726979214 (var2627 String var3697) void)
(declare-fun cast-from-var855-to-var3697 (var855) var3697)
(declare-const null-var1163 var1163)
(declare-const null-var1109 var1109)
(declare-const null-String String)
(declare-const null-var855 var855)
(declare-const var1405 var1163) ; Statement: r0 := @this: org.apache.ibatis.type.BaseTypeHandler 
(assert (not (= var1405 null-var1163)))
(declare-const var740 var1109) ; Statement: r1 := @parameter0: java.sql.ResultSet 
(assert (not (= var740 null-var1109)))
(declare-const var2468 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2468 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var283 var855) ; Statement: $r4 := @caughtexception 
(assert (not (= var283 null-var855)))
(define-const var1508 var2627 var2627-init) ; Statement: $r5 = new org.apache.ibatis.executor.result.ResultMapException 
(define-const var3043 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3043)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3043!1 String)
(assert (= var3043!1 ""))
(assert true)
(define-const var3977 String (append/672562846 var3043!1 "Error attempting to get column \u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error attempting to get column \'") 
(declare-const var3043!2 String)
(assert (= var3043!2 (str.++ var3043!1 "Error attempting to get column \u0027")))
(assert true)
(define-const var2553 String (append/672562846 var3977 var2468)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3977!1 String)
(assert (= var3977!1 (str.++ var3977 var2468)))
(assert true)
(define-const var2611 String (append/672562846 var2553 "\u0027 from result set.  Cause: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' from result set.  Cause: ") 
(declare-const var2553!1 String)
(assert (= var2553!1 (str.++ var2553 "\u0027 from result set.  Cause: ")))
(assert true)
(define-const var2964 String (append/-1031950772 var2611 (cast-from-var855-to-var191 var283))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2611!1 String)
(assert (str.prefixof var2611 var2611!1))
(assert true)
(define-const var279 String (toString/-2075883882 var2964)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1726979214 var1508 var279 (cast-from-var855-to-var3697 var283))) ; Statement: specialinvoke $r5.<org.apache.ibatis.executor.result.ResultMapException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r4) 

(declare-const var1508!1 var2627)
(declare-const var279!1 String)
(declare-const var283!1 var855)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2627-init=([], org.apache.ibatis.executor.result.ResultMapException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var855-to-var191=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1726979214=([org.apache.ibatis.executor.result.ResultMapException, java.lang.String, java.lang.Throwable], void), cast-from-var855-to-var3697=([java.lang.Exception], java.lang.Throwable)}
; {var1163=org.apache.ibatis.type.BaseTypeHandler, var1405=r0, var1109=java.sql.ResultSet, var740=r1, var2468=r2, var1827=null_type, var855=java.lang.Exception, var283=$r4, var2627=org.apache.ibatis.executor.result.ResultMapException, var1508=$r5, var3043=$r6, var3977=$r7, var2553=$r8, var2611=$r9, var191=java.lang.Object, var2964=$r10, var279=$r11, var3697=java.lang.Throwable}
; {org.apache.ibatis.type.BaseTypeHandler=var1163, r0=var1405, java.sql.ResultSet=var1109, r1=var740, r2=var2468, null_type=var1827, java.lang.Exception=var855, $r4=var283, org.apache.ibatis.executor.result.ResultMapException=var2627, $r5=var1508, $r6=var3043, $r7=var3977, $r8=var2553, $r9=var2611, java.lang.Object=var191, $r10=var2964, $r11=var279, java.lang.Throwable=var3697}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.type.BaseTypeHandler;	r1 := @parameter0: java.sql.ResultSet;	r2 := @parameter1: java.lang.String;	$r4 := @caughtexception;	$r5 = new org.apache.ibatis.executor.result.ResultMapException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error attempting to get column \'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' from result set.  Cause: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.apache.ibatis.executor.result.ResultMapException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r4);	throw $r5
;block_num 2