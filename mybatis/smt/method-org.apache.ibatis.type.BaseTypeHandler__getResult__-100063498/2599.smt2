(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3830 0)
(declare-sort var1815 0)
(declare-sort var2154 0)
(declare-sort var1623 0)
(declare-sort var1323 0)
(declare-sort var1070 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1623-init () var1623)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1323) String)
(declare-fun cast-from-var2154-to-var1323 (var2154) var1323)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1726979214 (var1623 String var1070) void)
(declare-fun cast-from-var2154-to-var1070 (var2154) var1070)
(declare-const null-var3830 var3830)
(declare-const null-var1815 var1815)
(declare-const null-Int Int)
(declare-const null-var2154 var2154)
(declare-const var551 var3830) ; Statement: r0 := @this: org.apache.ibatis.type.BaseTypeHandler 
(assert (not (= var551 null-var3830)))
(declare-const var316 var1815) ; Statement: r1 := @parameter0: java.sql.CallableStatement 
(assert (not (= var316 null-var1815)))
(declare-const var1876 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1876 null-Int)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var879 var2154) ; Statement: $r3 := @caughtexception 
(assert (not (= var879 null-var2154)))
(define-const var433 var1623 var1623-init) ; Statement: $r4 = new org.apache.ibatis.executor.result.ResultMapException 
(define-const var2608 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2608)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2608!1 String)
(assert (= var2608!1 ""))
(assert true)
(define-const var3992 String (append/672562846 var2608!1 "Error attempting to get column #")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error attempting to get column #") 
(declare-const var2608!2 String)
(assert (= var2608!2 (str.++ var2608!1 "Error attempting to get column #")))
(assert true)
(define-const var1155 String (append/-1001720160 var3992 var1876)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3992!1 String)
(assert (str.prefixof var3992 var3992!1))
(assert true)
(define-const var3685 String (append/672562846 var1155 " from callable statement.  Cause: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from callable statement.  Cause: ") 
(declare-const var1155!1 String)
(assert (= var1155!1 (str.++ var1155 " from callable statement.  Cause: ")))
(assert true)
(define-const var1498 String (append/-1031950772 var3685 (cast-from-var2154-to-var1323 var879))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3685!1 String)
(assert (str.prefixof var3685 var3685!1))
(assert true)
(define-const var982 String (toString/-2075883882 var1498)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1726979214 var433 var982 (cast-from-var2154-to-var1070 var879))) ; Statement: specialinvoke $r4.<org.apache.ibatis.executor.result.ResultMapException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3) 

(declare-const var433!1 var1623)
(declare-const var982!1 String)
(declare-const var879!1 var2154)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1623-init=([], org.apache.ibatis.executor.result.ResultMapException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2154-to-var1323=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1726979214=([org.apache.ibatis.executor.result.ResultMapException, java.lang.String, java.lang.Throwable], void), cast-from-var2154-to-var1070=([java.lang.Exception], java.lang.Throwable)}
; {var3830=org.apache.ibatis.type.BaseTypeHandler, var551=r0, var1815=java.sql.CallableStatement, var316=r1, var1876=i0, var2154=java.lang.Exception, var879=$r3, var1623=org.apache.ibatis.executor.result.ResultMapException, var433=$r4, var2608=$r5, var3992=$r6, var1155=$r7, var3685=$r8, var1323=java.lang.Object, var1498=$r9, var982=$r10, var1070=java.lang.Throwable}
; {org.apache.ibatis.type.BaseTypeHandler=var3830, r0=var551, java.sql.CallableStatement=var1815, r1=var316, i0=var1876, java.lang.Exception=var2154, $r3=var879, org.apache.ibatis.executor.result.ResultMapException=var1623, $r4=var433, $r5=var2608, $r6=var3992, $r7=var1155, $r8=var3685, java.lang.Object=var1323, $r9=var1498, $r10=var982, java.lang.Throwable=var1070}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.type.BaseTypeHandler;	r1 := @parameter0: java.sql.CallableStatement;	i0 := @parameter1: int;	$r3 := @caughtexception;	$r4 = new org.apache.ibatis.executor.result.ResultMapException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error attempting to get column #");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from callable statement.  Cause: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.apache.ibatis.executor.result.ResultMapException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3);	throw $r4
;block_num 2