(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3333 0)
(declare-sort var3912 0)
(declare-sort var1606 0)
(declare-sort var3061 0)
(declare-sort var2262 0)
(declare-sort var1183 0)
(declare-sort var2074 0)
(declare-sort var3851 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3061-init () var3061)
(declare-fun var1183-init () var1183)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2074) String)
(declare-fun cast-from-var2262-to-var2074 (var2262) var2074)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1017745449 (var1183 String var3851) void)
(declare-fun cast-from-var2262-to-var3851 (var2262) var3851)
(declare-const null-var3333 var3333)
(declare-const null-var3912 var3912)
(declare-const null-String String)
(declare-const null-var2262 var2262)
(declare-const var2971 var3333) ; Statement: r3 := @this: org.apache.ibatis.type.UnknownTypeHandler 
(assert (not (= var2971 null-var3333)))
(declare-const var380 var3912) ; Statement: r1 := @parameter0: java.sql.ResultSet 
(assert (not (= var380 null-var3912)))
(declare-const var1302 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1302 null-String)))
(define-const var3662 var3061 var3061-init) ; Statement: $r0 = new java.util.HashMap 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1268 var2262) ; Statement: $r8 := @caughtexception 
(assert (not (= var1268 null-var2262)))
(define-const var3674 var1183 var1183-init) ; Statement: $r9 = new org.apache.ibatis.type.TypeException 
(define-const var1508 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1508)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1508!1 String)
(assert (= var1508!1 ""))
(assert true)
(define-const var3791 String (append/672562846 var1508!1 "Error determining JDBC type for column ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error determining JDBC type for column ") 
(declare-const var1508!2 String)
(assert (= var1508!2 (str.++ var1508!1 "Error determining JDBC type for column ")))
(assert true)
(define-const var18 String (append/672562846 var3791 var1302)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3791!1 String)
(assert (= var3791!1 (str.++ var3791 var1302)))
(assert true)
(define-const var2477 String (append/672562846 var18 ".  Cause: ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ") 
(declare-const var18!1 String)
(assert (= var18!1 (str.++ var18 ".  Cause: ")))
(assert true)
(define-const var3266 String (append/-1031950772 var2477 (cast-from-var2262-to-var2074 var1268))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var2477!1 String)
(assert (str.prefixof var2477 var2477!1))
(assert true)
(define-const var1420 String (toString/-2075883882 var3266)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1017745449 var3674 var1420 (cast-from-var2262-to-var3851 var1268))) ; Statement: specialinvoke $r9.<org.apache.ibatis.type.TypeException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var3674!1 var1183)
(declare-const var1420!1 String)
(declare-const var1268!1 var2262)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3061-init=([], java.util.HashMap), var1183-init=([], org.apache.ibatis.type.TypeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2262-to-var2074=([java.sql.SQLException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1017745449=([org.apache.ibatis.type.TypeException, java.lang.String, java.lang.Throwable], void), cast-from-var2262-to-var3851=([java.sql.SQLException], java.lang.Throwable)}
; {var3333=org.apache.ibatis.type.UnknownTypeHandler, var2971=r3, var3912=java.sql.ResultSet, var380=r1, var1302=r5, var1606=null_type, var3061=java.util.HashMap, var3662=$r0, var2262=java.sql.SQLException, var1268=$r8, var1183=org.apache.ibatis.type.TypeException, var3674=$r9, var1508=$r10, var3791=$r11, var18=$r12, var2477=$r13, var2074=java.lang.Object, var3266=$r14, var1420=$r15, var3851=java.lang.Throwable}
; {org.apache.ibatis.type.UnknownTypeHandler=var3333, r3=var2971, java.sql.ResultSet=var3912, r1=var380, r5=var1302, null_type=var1606, java.util.HashMap=var3061, $r0=var3662, java.sql.SQLException=var2262, $r8=var1268, org.apache.ibatis.type.TypeException=var1183, $r9=var3674, $r10=var1508, $r11=var3791, $r12=var18, $r13=var2477, java.lang.Object=var2074, $r14=var3266, $r15=var1420, java.lang.Throwable=var3851}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.ibatis.type.UnknownTypeHandler;	r1 := @parameter0: java.sql.ResultSet;	r5 := @parameter1: java.lang.String;	$r0 = new java.util.HashMap;	$r8 := @caughtexception;	$r9 = new org.apache.ibatis.type.TypeException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error determining JDBC type for column ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.apache.ibatis.type.TypeException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2