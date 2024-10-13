(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var373 0)
(declare-sort var609 0)
(declare-sort var254 0)
(declare-sort var3349 0)
(declare-sort var2187 0)
(declare-sort var1405 0)
(declare-sort var2861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1405-init () var1405)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var254) String)
(declare-fun cast-from-var3349-to-var254 (var3349) var254)
(declare-fun cast-from-var2187-to-var254 (var2187) var254)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1017745449 (var1405 String var2861) void)
(declare-fun cast-from-var2187-to-var2861 (var2187) var2861)
(declare-const null-var373 var373)
(declare-const null-var609 var609)
(declare-const null-Int Int)
(declare-const null-var254 var254)
(declare-const null-var3349 var3349)
(declare-const null-var2187 var2187)
(declare-const var2329 var373) ; Statement: r1 := @this: org.apache.ibatis.type.BaseTypeHandler 
(assert (not (= var2329 null-var373)))
(declare-const var3134 var609) ; Statement: r2 := @parameter0: java.sql.PreparedStatement 
(assert (not (= var3134 null-var609)))
(declare-const var2659 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2659 null-Int)))
(declare-const var693 var254) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var693 null-var254)))
(declare-const var3761 var3349) ; Statement: r3 := @parameter3: org.apache.ibatis.type.JdbcType 
(assert (not (= var3761 null-var3349)))
 ; Statement: if r0 != null goto virtualinvoke r1.<org.apache.ibatis.type.BaseTypeHandler: void setNonNullParameter(java.sql.PreparedStatement,int,java.lang.Object,org.apache.ibatis.type.JdbcType)>(r2, i0, r0, r3) 
(assert (not (not (= var693 null-var254)))) ; Negate: Cond: r0 != null  
(declare-const var3763 var2187) ; Statement: $r5 := @caughtexception 
(assert (not (= var3763 null-var2187)))
(define-const var3561 var1405 var1405-init) ; Statement: $r6 = new org.apache.ibatis.type.TypeException 
(define-const var235 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var235)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var235!1 String)
(assert (= var235!1 ""))
(assert true)
(define-const var2956 String (append/672562846 var235!1 "Error setting non null for parameter #")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error setting non null for parameter #") 
(declare-const var235!2 String)
(assert (= var235!2 (str.++ var235!1 "Error setting non null for parameter #")))
(assert true)
(define-const var3579 String (append/-1001720160 var2956 var2659)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2956!1 String)
(assert (str.prefixof var2956 var2956!1))
(assert true)
(define-const var1789 String (append/672562846 var3579 " with JdbcType ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with JdbcType ") 
(declare-const var3579!1 String)
(assert (= var3579!1 (str.++ var3579 " with JdbcType ")))
(assert true)
(define-const var1908 String (append/-1031950772 var1789 (cast-from-var3349-to-var254 var3761))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var1789!1 String)
(assert (str.prefixof var1789 var1789!1))
(assert true)
(define-const var2679 String (append/672562846 var1908 " . Try setting a different JdbcType for this parameter or a different configuration property. Cause: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" . Try setting a different JdbcType for this parameter or a different configuration property. Cause: ") 
(declare-const var1908!1 String)
(assert (= var1908!1 (str.++ var1908 " . Try setting a different JdbcType for this parameter or a different configuration property. Cause: ")))
(assert true)
(define-const var532 String (append/-1031950772 var2679 (cast-from-var2187-to-var254 var3763))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2679!1 String)
(assert (str.prefixof var2679 var2679!1))
(assert true)
(define-const var878 String (toString/-2075883882 var532)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1017745449 var3561 var878 (cast-from-var2187-to-var2861 var3763))) ; Statement: specialinvoke $r6.<org.apache.ibatis.type.TypeException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r5) 

(declare-const var3561!1 var1405)
(declare-const var878!1 String)
(declare-const var3763!1 var2187)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1405-init=([], org.apache.ibatis.type.TypeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3349-to-var254=([org.apache.ibatis.type.JdbcType], java.lang.Object), cast-from-var2187-to-var254=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1017745449=([org.apache.ibatis.type.TypeException, java.lang.String, java.lang.Throwable], void), cast-from-var2187-to-var2861=([java.lang.Exception], java.lang.Throwable)}
; {var373=org.apache.ibatis.type.BaseTypeHandler, var2329=r1, var609=java.sql.PreparedStatement, var3134=r2, var2659=i0, var254=java.lang.Object, var693=r0, var3349=org.apache.ibatis.type.JdbcType, var3761=r3, var2187=java.lang.Exception, var3763=$r5, var1405=org.apache.ibatis.type.TypeException, var3561=$r6, var235=$r7, var2956=$r8, var3579=$r9, var1789=$r10, var1908=$r11, var2679=$r12, var532=$r13, var878=$r14, var2861=java.lang.Throwable}
; {org.apache.ibatis.type.BaseTypeHandler=var373, r1=var2329, java.sql.PreparedStatement=var609, r2=var3134, i0=var2659, java.lang.Object=var254, r0=var693, org.apache.ibatis.type.JdbcType=var3349, r3=var3761, java.lang.Exception=var2187, $r5=var3763, org.apache.ibatis.type.TypeException=var1405, $r6=var3561, $r7=var235, $r8=var2956, $r9=var3579, $r10=var1789, $r11=var1908, $r12=var2679, $r13=var532, $r14=var878, java.lang.Throwable=var2861}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.type.BaseTypeHandler;	r2 := @parameter0: java.sql.PreparedStatement;	i0 := @parameter1: int;	r0 := @parameter2: java.lang.Object;	r3 := @parameter3: org.apache.ibatis.type.JdbcType;	if r0 != null goto virtualinvoke r1.<org.apache.ibatis.type.BaseTypeHandler: void setNonNullParameter(java.sql.PreparedStatement,int,java.lang.Object,org.apache.ibatis.type.JdbcType)>(r2, i0, r0, r3);	$r5 := @caughtexception;	$r6 = new org.apache.ibatis.type.TypeException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error setting non null for parameter #");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with JdbcType ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" . Try setting a different JdbcType for this parameter or a different configuration property. Cause: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<org.apache.ibatis.type.TypeException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r5);	throw $r6
;block_num 2