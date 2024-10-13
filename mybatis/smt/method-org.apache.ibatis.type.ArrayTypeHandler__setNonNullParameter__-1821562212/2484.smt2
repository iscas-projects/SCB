(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3033 0)
(declare-sort var2230 0)
(declare-sort var191 0)
(declare-sort var2509 0)
(declare-sort var3324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var191) ClassObject)
(declare-fun isArray/1369458484 (ClassObject) Bool)
(declare-fun var3324-init () var3324)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var191) String)
(declare-fun cast-from-ClassObject-to-var191 (ClassObject) var191)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/601790313 (var3324 String) void)
(declare-const null-var3033 var3033)
(declare-const null-var2230 var2230)
(declare-const null-Int Int)
(declare-const null-var191 var191)
(declare-const null-var2509 var2509)
(declare-const var487 var3033) ; Statement: r4 := @this: org.apache.ibatis.type.ArrayTypeHandler 
(assert (not (= var487 null-var3033)))
(declare-const var2271 var2230) ; Statement: r6 := @parameter0: java.sql.PreparedStatement 
(assert (not (= var2271 null-var2230)))
(declare-const var3513 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3513 null-Int)))
(declare-const var1980 var191) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var1980 null-var191)))
(declare-const var878 var2509) ; Statement: r17 := @parameter3: org.apache.ibatis.type.JdbcType 
(assert (not (= var878 null-var2509)))
(define-const var2187 Bool false) ; Statement: $z0 = r0 instanceof java.sql.Array 
 ; Statement: if $z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= (ite var2187 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3218 ClassObject (getClass/1258963082 var1980)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1851 Bool (isArray/1369458484 var3218)) ; Statement: $z1 = virtualinvoke $r1.<java.lang.Class: boolean isArray()>() 
 ; Statement: if $z1 != 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= (ite var1851 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3928 var3324 var3324-init) ; Statement: $r10 = new org.apache.ibatis.type.TypeException 
(define-const var1640 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1640)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1640!1 String)
(assert (= var1640!1 ""))
(assert true)
(define-const var3624 String (append/672562846 var1640!1 "ArrayType Handler requires SQL array or java array parameter and does not support type ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ArrayType Handler requires SQL array or java array parameter and does not support type ") 
(declare-const var1640!2 String)
(assert (= var1640!2 (str.++ var1640!1 "ArrayType Handler requires SQL array or java array parameter and does not support type ")))
(assert true)
(define-const var2712 ClassObject (getClass/1258963082 var1980)) ; Statement: $r12 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1656 String (append/-1031950772 var3624 (cast-from-ClassObject-to-var191 var2712))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var3624!1 String)
(assert (str.prefixof var3624 var3624!1))
(assert true)
(define-const var3179 String (toString/-2075883882 var1656)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/601790313 var3928 var3179)) ; Statement: specialinvoke $r10.<org.apache.ibatis.type.TypeException: void <init>(java.lang.String)>($r15) 

(declare-const var3928!1 var3324)
(declare-const var3179!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), isArray/1369458484=([java.lang.Class], boolean), var3324-init=([], org.apache.ibatis.type.TypeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var191=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/601790313=([org.apache.ibatis.type.TypeException, java.lang.String], void)}
; {var3033=org.apache.ibatis.type.ArrayTypeHandler, var487=r4, var2230=java.sql.PreparedStatement, var2271=r6, var3513=i0, var191=java.lang.Object, var1980=r0, var2509=org.apache.ibatis.type.JdbcType, var878=r17, var2187=$z0, var3218=$r1, var1851=$z1, var3324=org.apache.ibatis.type.TypeException, var3928=$r10, var1640=$r11, var3624=$r13, var2712=$r12, var1656=$r14, var3179=$r15}
; {org.apache.ibatis.type.ArrayTypeHandler=var3033, r4=var487, java.sql.PreparedStatement=var2230, r6=var2271, i0=var3513, java.lang.Object=var191, r0=var1980, org.apache.ibatis.type.JdbcType=var2509, r17=var878, $z0=var2187, $r1=var3218, $z1=var1851, org.apache.ibatis.type.TypeException=var3324, $r10=var3928, $r11=var1640, $r13=var3624, $r12=var2712, $r14=var1656, $r15=var3179}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.ibatis.type.ArrayTypeHandler;	r6 := @parameter0: java.sql.PreparedStatement;	i0 := @parameter1: int;	r0 := @parameter2: java.lang.Object;	r17 := @parameter3: org.apache.ibatis.type.JdbcType;	$z0 = r0 instanceof java.sql.Array;	if $z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$z1 = virtualinvoke $r1.<java.lang.Class: boolean isArray()>();	if $z1 != 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r10 = new org.apache.ibatis.type.TypeException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ArrayType Handler requires SQL array or java array parameter and does not support type ");	$r12 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.apache.ibatis.type.TypeException: void <init>(java.lang.String)>($r15);	throw $r10
;block_num 3