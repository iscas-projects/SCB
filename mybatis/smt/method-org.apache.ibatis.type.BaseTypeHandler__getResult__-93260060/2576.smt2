(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3493 0)
(declare-sort var692 0)
(declare-sort var1891 0)
(declare-sort var1341 0)
(declare-sort var1096 0)
(declare-sort var2566 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1341-init () var1341)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1096) String)
(declare-fun cast-from-var1891-to-var1096 (var1891) var1096)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1726979214 (var1341 String var2566) void)
(declare-fun cast-from-var1891-to-var2566 (var1891) var2566)
(declare-const null-var3493 var3493)
(declare-const null-var692 var692)
(declare-const null-Int Int)
(declare-const null-var1891 var1891)
(declare-const var2153 var3493) ; Statement: r0 := @this: org.apache.ibatis.type.BaseTypeHandler 
(assert (not (= var2153 null-var3493)))
(declare-const var2150 var692) ; Statement: r1 := @parameter0: java.sql.ResultSet 
(assert (not (= var2150 null-var692)))
(declare-const var1414 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1414 null-Int)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var523 var1891) ; Statement: $r3 := @caughtexception 
(assert (not (= var523 null-var1891)))
(define-const var2182 var1341 var1341-init) ; Statement: $r4 = new org.apache.ibatis.executor.result.ResultMapException 
(define-const var2834 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2834)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2834!1 String)
(assert (= var2834!1 ""))
(assert true)
(define-const var2407 String (append/672562846 var2834!1 "Error attempting to get column #")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error attempting to get column #") 
(declare-const var2834!2 String)
(assert (= var2834!2 (str.++ var2834!1 "Error attempting to get column #")))
(assert true)
(define-const var2775 String (append/-1001720160 var2407 var1414)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2407!1 String)
(assert (str.prefixof var2407 var2407!1))
(assert true)
(define-const var465 String (append/672562846 var2775 " from result set.  Cause: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from result set.  Cause: ") 
(declare-const var2775!1 String)
(assert (= var2775!1 (str.++ var2775 " from result set.  Cause: ")))
(assert true)
(define-const var774 String (append/-1031950772 var465 (cast-from-var1891-to-var1096 var523))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var465!1 String)
(assert (str.prefixof var465 var465!1))
(assert true)
(define-const var3703 String (toString/-2075883882 var774)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1726979214 var2182 var3703 (cast-from-var1891-to-var2566 var523))) ; Statement: specialinvoke $r4.<org.apache.ibatis.executor.result.ResultMapException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3) 

(declare-const var2182!1 var1341)
(declare-const var3703!1 String)
(declare-const var523!1 var1891)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1341-init=([], org.apache.ibatis.executor.result.ResultMapException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1891-to-var1096=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1726979214=([org.apache.ibatis.executor.result.ResultMapException, java.lang.String, java.lang.Throwable], void), cast-from-var1891-to-var2566=([java.lang.Exception], java.lang.Throwable)}
; {var3493=org.apache.ibatis.type.BaseTypeHandler, var2153=r0, var692=java.sql.ResultSet, var2150=r1, var1414=i0, var1891=java.lang.Exception, var523=$r3, var1341=org.apache.ibatis.executor.result.ResultMapException, var2182=$r4, var2834=$r5, var2407=$r6, var2775=$r7, var465=$r8, var1096=java.lang.Object, var774=$r9, var3703=$r10, var2566=java.lang.Throwable}
; {org.apache.ibatis.type.BaseTypeHandler=var3493, r0=var2153, java.sql.ResultSet=var692, r1=var2150, i0=var1414, java.lang.Exception=var1891, $r3=var523, org.apache.ibatis.executor.result.ResultMapException=var1341, $r4=var2182, $r5=var2834, $r6=var2407, $r7=var2775, $r8=var465, java.lang.Object=var1096, $r9=var774, $r10=var3703, java.lang.Throwable=var2566}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.type.BaseTypeHandler;	r1 := @parameter0: java.sql.ResultSet;	i0 := @parameter1: int;	$r3 := @caughtexception;	$r4 = new org.apache.ibatis.executor.result.ResultMapException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error attempting to get column #");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from result set.  Cause: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.apache.ibatis.executor.result.ResultMapException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3);	throw $r4
;block_num 2