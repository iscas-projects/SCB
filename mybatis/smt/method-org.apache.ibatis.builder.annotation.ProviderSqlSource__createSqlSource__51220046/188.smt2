(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1214 0)
(declare-sort var1897 0)
(declare-sort var3901 0)
(declare-sort var1521 0)
(declare-sort var887 0)
(declare-sort var2714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1521-init () var1521)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun providerMethod/1977133390 (var1214) var887)
(declare-fun append/-1031950772 (String var1897) String)
(declare-fun cast-from-var887-to-var1897 (var887) var1897)
(declare-fun cast-from-ClassObject-to-var1897 (ClassObject) var1897)
(declare-fun extractRootCause/1728888884 (var1214 var3901) var2714)
(declare-fun cast-from-var2714-to-var1897 (var2714) var1897)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1373483697 (var1521 String var2714) void)
(declare-fun cast-from-var3901-to-var2714 (var3901) var2714)
(declare-const null-var1214 var1214)
(declare-const null-var1897 var1897)
(declare-const null-var3901 var3901)
(declare-const null-ClassObject ClassObject)
(declare-const var2422 var1214) ; Statement: r1 := @this: org.apache.ibatis.builder.annotation.ProviderSqlSource 
(assert (not (= var2422 null-var1214)))
(declare-const var3827 var1897) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3827 null-var1897)))
(define-const var1642 Bool false) ; Statement: $z0 = r0 instanceof java.util.Map 
 ; Statement: if $z0 == 0 goto $r2 = r1.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.Class[] providerMethodParameterTypes> 
(assert (not (= (ite var1642 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1847 var3901) ; Statement: $r35 := @caughtexception 
(assert (not (= var1847 null-var3901)))
(define-const var466 var1521 var1521-init) ; Statement: $r36 = new org.apache.ibatis.builder.BuilderException 
(define-const var1968 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1968)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1968!1 String)
(assert (= var1968!1 ""))
(assert true)
(define-const var3199 String (append/672562846 var1968!1 "Error invoking SqlProvider method \u0027")) ; Statement: $r39 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error invoking SqlProvider method \'") 
(declare-const var1968!2 String)
(assert (= var1968!2 (str.++ var1968!1 "Error invoking SqlProvider method \u0027")))
(define-const var2377 var887 (providerMethod/1977133390 var2422)) ; Statement: $r38 = r1.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod> 
(assert true)
(define-const var196 String (append/-1031950772 var3199 (cast-from-var887-to-var1897 var2377))) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r38) 
(declare-const var3199!1 String)
(assert (str.prefixof var3199 var3199!1))
(assert true)
(define-const var1361 String (append/672562846 var196 "\u0027 with specify parameter \u0027")) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with specify parameter \'") 
(declare-const var196!1 String)
(assert (= var196!1 (str.++ var196 "\u0027 with specify parameter \u0027")))
 ; Statement: if r0 != null goto $r51 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= var3827 null-var1897)))) ; Negate: Cond: r0 != null  
(define-const var2570 ClassObject null-ClassObject) ; Statement: $r51 = null 
 ; Statement: goto [?= $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r51)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2486 String (append/-1031950772 var1361 (cast-from-ClassObject-to-var1897 var2570))) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r51) 
(declare-const var1361!1 String)
(assert (str.prefixof var1361 var1361!1))
(assert true)
(define-const var3037 String (append/672562846 var2486 "\u0027.  Cause: ")) ; Statement: $r44 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.  Cause: ") 
(declare-const var2486!1 String)
(assert (= var2486!1 (str.++ var2486 "\u0027.  Cause: ")))
(assert true)
(define-const var958 var2714 (extractRootCause/1728888884 var2422 var1847)) ; Statement: $r43 = specialinvoke r1.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.Throwable extractRootCause(java.lang.Exception)>($r35) 
(assert true)
(define-const var1132 String (append/-1031950772 var3037 (cast-from-var2714-to-var1897 var958))) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r43) 
(declare-const var3037!1 String)
(assert (str.prefixof var3037 var3037!1))
(assert true)
(define-const var1769 String (toString/-2075883882 var1132)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1373483697 var466 var1769 (cast-from-var3901-to-var2714 var1847))) ; Statement: specialinvoke $r36.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r46, $r35) 

(declare-const var466!1 var1521)
(declare-const var1769!1 String)
(declare-const var1847!1 var3901)
 ; Statement: throw $r36 
(check-sat)
(get-model)
(get-unsat-core)
; {var1521-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), providerMethod/1977133390=([org.apache.ibatis.builder.annotation.ProviderSqlSource], java.lang.reflect.Method), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var887-to-var1897=([java.lang.reflect.Method], java.lang.Object), cast-from-ClassObject-to-var1897=([java.lang.Class], java.lang.Object), extractRootCause/1728888884=([org.apache.ibatis.builder.annotation.ProviderSqlSource, java.lang.Exception], java.lang.Throwable), cast-from-var2714-to-var1897=([java.lang.Throwable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1373483697=([org.apache.ibatis.builder.BuilderException, java.lang.String, java.lang.Throwable], void), cast-from-var3901-to-var2714=([java.lang.Exception], java.lang.Throwable)}
; {var1214=org.apache.ibatis.builder.annotation.ProviderSqlSource, var2422=r1, var1897=java.lang.Object, var3827=r0, var1642=$z0, var3901=java.lang.Exception, var1847=$r35, var1521=org.apache.ibatis.builder.BuilderException, var466=$r36, var1968=$r37, var3199=$r39, var887=java.lang.reflect.Method, var2377=$r38, var196=$r40, var1361=$r41, var2570=$r51, var2486=$r42, var3037=$r44, var2714=java.lang.Throwable, var958=$r43, var1132=$r45, var1769=$r46}
; {org.apache.ibatis.builder.annotation.ProviderSqlSource=var1214, r1=var2422, java.lang.Object=var1897, r0=var3827, $z0=var1642, java.lang.Exception=var3901, $r35=var1847, org.apache.ibatis.builder.BuilderException=var1521, $r36=var466, $r37=var1968, $r39=var3199, java.lang.reflect.Method=var887, $r38=var2377, $r40=var196, $r41=var1361, $r51=var2570, $r42=var2486, $r44=var3037, java.lang.Throwable=var2714, $r43=var958, $r45=var1132, $r46=var1769}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.builder.annotation.ProviderSqlSource;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof java.util.Map;	if $z0 == 0 goto $r2 = r1.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.Class[] providerMethodParameterTypes>;	$r35 := @caughtexception;	$r36 = new org.apache.ibatis.builder.BuilderException;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error invoking SqlProvider method \'");	$r38 = r1.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod>;	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r38);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with specify parameter \'");	if r0 != null goto $r51 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r51 = null;	goto [?= $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r51)];	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r51);	$r44 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.  Cause: ");	$r43 = specialinvoke r1.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.Throwable extractRootCause(java.lang.Exception)>($r35);	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r43);	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r36.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r46, $r35);	throw $r36
;block_num 4