(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var163 0)
(declare-sort var1048 0)
(declare-sort var2544 0)
(declare-sort var1801 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2544-init () var2544)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun type/-666463982 (var163) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var2544 String var1801) void)
(declare-fun cast-from-var1048-to-var1801 (var1048) var1801)
(declare-const null-var163 var163)
(declare-const null-Int Int)
(declare-const null-var1048 var1048)
(declare-const var3438 var163) ; Statement: r0 := @this: org.apache.ibatis.type.EnumOrdinalTypeHandler 
(assert (not (= var3438 null-var163)))
(declare-const var1231 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1231 null-Int)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var9 var1048) ; Statement: $r3 := @caughtexception 
(assert (not (= var9 null-var1048)))
(define-const var2091 var2544 var2544-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var1989 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1989)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1989!1 String)
(assert (= var1989!1 ""))
(assert true)
(define-const var2537 String (append/672562846 var1989!1 "Cannot convert ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot convert ") 
(declare-const var1989!2 String)
(assert (= var1989!2 (str.++ var1989!1 "Cannot convert ")))
(assert true)
(define-const var1698 String (append/-1001720160 var2537 var1231)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2537!1 String)
(assert (str.prefixof var2537 var2537!1))
(assert true)
(define-const var1461 String (append/672562846 var1698 " to ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var1698!1 String)
(assert (= var1698!1 (str.++ var1698 " to ")))
(define-const var1420 ClassObject (type/-666463982 var3438)) ; Statement: $r8 = r0.<org.apache.ibatis.type.EnumOrdinalTypeHandler: java.lang.Class type> 
(assert true)
(define-const var2895 String (getSimpleName/-390194377 var1420)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var913 String (append/672562846 var1461 var2895)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1461!1 String)
(assert (= var1461!1 (str.++ var1461 var2895)))
(assert true)
(define-const var3612 String (append/672562846 var913 " by ordinal value.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" by ordinal value.") 
(declare-const var913!1 String)
(assert (= var913!1 (str.++ var913 " by ordinal value.")))
(assert true)
(define-const var1438 String (toString/-2075883882 var3612)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var2091 var1438 (cast-from-var1048-to-var1801 var9))) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r3) 

(declare-const var2091!1 var2544)
(declare-const var1438!1 String)
(declare-const var9!1 var1048)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2544-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), type/-666463982=([org.apache.ibatis.type.EnumOrdinalTypeHandler], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var1048-to-var1801=([java.lang.Exception], java.lang.Throwable)}
; {var163=org.apache.ibatis.type.EnumOrdinalTypeHandler, var3438=r0, var1231=i0, var1048=java.lang.Exception, var9=$r3, var2544=java.lang.IllegalArgumentException, var2091=$r4, var1989=$r5, var2537=$r6, var1698=$r7, var1461=$r10, var1420=$r8, var2895=$r9, var913=$r11, var3612=$r12, var1438=$r13, var1801=java.lang.Throwable}
; {org.apache.ibatis.type.EnumOrdinalTypeHandler=var163, r0=var3438, i0=var1231, java.lang.Exception=var1048, $r3=var9, java.lang.IllegalArgumentException=var2544, $r4=var2091, $r5=var1989, $r6=var2537, $r7=var1698, $r10=var1461, $r8=var1420, $r9=var2895, $r11=var913, $r12=var3612, $r13=var1438, java.lang.Throwable=var1801}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.type.EnumOrdinalTypeHandler;	i0 := @parameter0: int;	$r3 := @caughtexception;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot convert ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r8 = r0.<org.apache.ibatis.type.EnumOrdinalTypeHandler: java.lang.Class type>;	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" by ordinal value.");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r3);	throw $r4
;block_num 2