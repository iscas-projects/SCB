(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3491 0)
(declare-sort var1224 0)
(declare-sort var2480 0)
(declare-sort var254 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1224-init () var1224)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getClassNames/-704555809 (var3491) var2480)
(declare-fun append/-1031950772 (String var254) String)
(declare-fun cast-from-var2480-to-var254 (var2480) var254)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1671820471 (var1224 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3491 var3491)
(declare-const var2239 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var2239 null-ClassObject)))
(declare-const var3886 var3491) ; Statement: r6 := @parameter1: org.apache.ibatis.executor.resultset.ResultSetWrapper 
(assert (not (= var3886 null-var3491)))
(define-const var457 var1224 var1224-init) ; Statement: $r0 = new org.apache.ibatis.executor.ExecutorException 
(define-const var2916 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2916)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2916!1 String)
(assert (= var2916!1 ""))
(assert true)
(define-const var2839 String (append/672562846 var2916!1 "No constructor found in ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No constructor found in ") 
(declare-const var2916!2 String)
(assert (= var2916!2 (str.++ var2916!1 "No constructor found in ")))
(assert true)
(define-const var1758 String (getName/-1958580599 var2239)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2051 String (append/672562846 var2839 var1758)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2839!1 String)
(assert (= var2839!1 (str.++ var2839 var1758)))
(assert true)
(define-const var1849 String (append/672562846 var2051 " matching ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" matching ") 
(declare-const var2051!1 String)
(assert (= var2051!1 (str.++ var2051 " matching ")))
(assert true)
(define-const var179 var2480 (getClassNames/-704555809 var3886)) ; Statement: $r7 = virtualinvoke r6.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.util.List getClassNames()>() 
(assert true)
(define-const var1796 String (append/-1031950772 var1849 (cast-from-var2480-to-var254 var179))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var1849!1 String)
(assert (str.prefixof var1849 var1849!1))
(assert true)
(define-const var758 String (toString/-2075883882 var1796)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1671820471 var457 var758)) ; Statement: specialinvoke $r0.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String)>($r10) 

(declare-const var457!1 var1224)
(declare-const var758!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1224-init=([], org.apache.ibatis.executor.ExecutorException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), getClassNames/-704555809=([org.apache.ibatis.executor.resultset.ResultSetWrapper], java.util.List), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2480-to-var254=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1671820471=([org.apache.ibatis.executor.ExecutorException, java.lang.String], void)}
; {var2239=r2, var3491=org.apache.ibatis.executor.resultset.ResultSetWrapper, var3886=r6, var1224=org.apache.ibatis.executor.ExecutorException, var457=$r0, var2916=$r1, var2839=$r4, var1758=$r3, var2051=$r5, var1849=$r8, var2480=java.util.List, var179=$r7, var254=java.lang.Object, var1796=$r9, var758=$r10}
; {r2=var2239, org.apache.ibatis.executor.resultset.ResultSetWrapper=var3491, r6=var3886, org.apache.ibatis.executor.ExecutorException=var1224, $r0=var457, $r1=var2916, $r4=var2839, $r3=var1758, $r5=var2051, $r8=var1849, java.util.List=var2480, $r7=var179, java.lang.Object=var254, $r9=var1796, $r10=var758}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Class;	r6 := @parameter1: org.apache.ibatis.executor.resultset.ResultSetWrapper;	$r0 = new org.apache.ibatis.executor.ExecutorException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No constructor found in ");	$r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" matching ");	$r7 = virtualinvoke r6.<org.apache.ibatis.executor.resultset.ResultSetWrapper: java.util.List getClassNames()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String)>($r10);	return $r0
;block_num 1