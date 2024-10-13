(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3296 0)
(declare-sort var3040 0)
(declare-sort var2689 0)
(declare-sort var2253 0)
(declare-sort var711 0)
(declare-sort var252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2253-init () var2253)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun providerMethod/1977133390 (var3296) var711)
(declare-fun append/-1031950772 (String var3040) String)
(declare-fun cast-from-var711-to-var3040 (var711) var3040)
(declare-fun getClass/1258963082 (var3040) ClassObject)
(declare-fun cast-from-ClassObject-to-var3040 (ClassObject) var3040)
(declare-fun extractRootCause/1728888884 (var3296 var2689) var252)
(declare-fun cast-from-var252-to-var3040 (var252) var3040)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1373483697 (var2253 String var252) void)
(declare-fun cast-from-var2689-to-var252 (var2689) var252)
(declare-const null-var3296 var3296)
(declare-const null-var3040 var3040)
(declare-const null-var2689 var2689)
(declare-const var3077 var3296) ; Statement: r1 := @this: org.apache.ibatis.builder.annotation.ProviderSqlSource 
(assert (not (= var3077 null-var3296)))
(declare-const var1182 var3040) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1182 null-var3040)))
(define-const var2324 Bool false) ; Statement: $z0 = r0 instanceof java.util.Map 
 ; Statement: if $z0 == 0 goto $r2 = r1.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.Class[] providerMethodParameterTypes> 
(assert (not (= (ite var2324 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var813 var2689) ; Statement: $r35 := @caughtexception 
(assert (not (= var813 null-var2689)))
(define-const var3237 var2253 var2253-init) ; Statement: $r36 = new org.apache.ibatis.builder.BuilderException 
(define-const var3409 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3409)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3409!1 String)
(assert (= var3409!1 ""))
(assert true)
(define-const var2684 String (append/672562846 var3409!1 "Error invoking SqlProvider method \u0027")) ; Statement: $r39 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error invoking SqlProvider method \'") 
(declare-const var3409!2 String)
(assert (= var3409!2 (str.++ var3409!1 "Error invoking SqlProvider method \u0027")))
(define-const var3097 var711 (providerMethod/1977133390 var3077)) ; Statement: $r38 = r1.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod> 
(assert true)
(define-const var1388 String (append/-1031950772 var2684 (cast-from-var711-to-var3040 var3097))) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r38) 
(declare-const var2684!1 String)
(assert (str.prefixof var2684 var2684!1))
(assert true)
(define-const var3381 String (append/672562846 var1388 "\u0027 with specify parameter \u0027")) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with specify parameter \'") 
(declare-const var1388!1 String)
(assert (= var1388!1 (str.++ var1388 "\u0027 with specify parameter \u0027")))
 ; Statement: if r0 != null goto $r51 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= var1182 null-var3040))) ; Cond: r0 != null 
(assert true)
(define-const var993 ClassObject (getClass/1258963082 var1182)) ; Statement: $r51 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3880 String (append/-1031950772 var3381 (cast-from-ClassObject-to-var3040 var993))) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r51) 
(declare-const var3381!1 String)
(assert (str.prefixof var3381 var3381!1))
(assert true)
(define-const var1318 String (append/672562846 var3880 "\u0027.  Cause: ")) ; Statement: $r44 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.  Cause: ") 
(declare-const var3880!1 String)
(assert (= var3880!1 (str.++ var3880 "\u0027.  Cause: ")))
(assert true)
(define-const var1707 var252 (extractRootCause/1728888884 var3077 var813)) ; Statement: $r43 = specialinvoke r1.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.Throwable extractRootCause(java.lang.Exception)>($r35) 
(assert true)
(define-const var3013 String (append/-1031950772 var1318 (cast-from-var252-to-var3040 var1707))) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r43) 
(declare-const var1318!1 String)
(assert (str.prefixof var1318 var1318!1))
(assert true)
(define-const var3182 String (toString/-2075883882 var3013)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1373483697 var3237 var3182 (cast-from-var2689-to-var252 var813))) ; Statement: specialinvoke $r36.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r46, $r35) 

(declare-const var3237!1 var2253)
(declare-const var3182!1 String)
(declare-const var813!1 var2689)
 ; Statement: throw $r36 
(check-sat)
(get-model)
(get-unsat-core)
; {var2253-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), providerMethod/1977133390=([org.apache.ibatis.builder.annotation.ProviderSqlSource], java.lang.reflect.Method), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var711-to-var3040=([java.lang.reflect.Method], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-ClassObject-to-var3040=([java.lang.Class], java.lang.Object), extractRootCause/1728888884=([org.apache.ibatis.builder.annotation.ProviderSqlSource, java.lang.Exception], java.lang.Throwable), cast-from-var252-to-var3040=([java.lang.Throwable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1373483697=([org.apache.ibatis.builder.BuilderException, java.lang.String, java.lang.Throwable], void), cast-from-var2689-to-var252=([java.lang.Exception], java.lang.Throwable)}
; {var3296=org.apache.ibatis.builder.annotation.ProviderSqlSource, var3077=r1, var3040=java.lang.Object, var1182=r0, var2324=$z0, var2689=java.lang.Exception, var813=$r35, var2253=org.apache.ibatis.builder.BuilderException, var3237=$r36, var3409=$r37, var2684=$r39, var711=java.lang.reflect.Method, var3097=$r38, var1388=$r40, var3381=$r41, var993=$r51, var3880=$r42, var1318=$r44, var252=java.lang.Throwable, var1707=$r43, var3013=$r45, var3182=$r46}
; {org.apache.ibatis.builder.annotation.ProviderSqlSource=var3296, r1=var3077, java.lang.Object=var3040, r0=var1182, $z0=var2324, java.lang.Exception=var2689, $r35=var813, org.apache.ibatis.builder.BuilderException=var2253, $r36=var3237, $r37=var3409, $r39=var2684, java.lang.reflect.Method=var711, $r38=var3097, $r40=var1388, $r41=var3381, $r51=var993, $r42=var3880, $r44=var1318, java.lang.Throwable=var252, $r43=var1707, $r45=var3013, $r46=var3182}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.builder.annotation.ProviderSqlSource;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof java.util.Map;	if $z0 == 0 goto $r2 = r1.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.Class[] providerMethodParameterTypes>;	$r35 := @caughtexception;	$r36 = new org.apache.ibatis.builder.BuilderException;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error invoking SqlProvider method \'");	$r38 = r1.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod>;	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r38);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with specify parameter \'");	if r0 != null goto $r51 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r51 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r51);	$r44 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.  Cause: ");	$r43 = specialinvoke r1.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.Throwable extractRootCause(java.lang.Exception)>($r35);	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r43);	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r36.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r46, $r35);	throw $r36
;block_num 4