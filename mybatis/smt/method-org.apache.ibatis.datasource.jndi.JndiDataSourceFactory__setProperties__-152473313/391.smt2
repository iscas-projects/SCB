(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var241 0)
(declare-sort var3675 0)
(declare-sort var1913 0)
(declare-sort var2055 0)
(declare-sort var2078 0)
(declare-sort var2119 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2055-init () var2055)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2078) String)
(declare-fun cast-from-var1913-to-var2078 (var1913) var2078)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1715397353 (var2055 String var2119) void)
(declare-fun cast-from-var1913-to-var2119 (var1913) var2119)
(declare-const null-var241 var241)
(declare-const null-var3675 var3675)
(declare-const null-var1913 var1913)
(declare-const var1390 var241) ; Statement: r3 := @this: org.apache.ibatis.datasource.jndi.JndiDataSourceFactory 
(assert (not (= var1390 null-var241)))
(declare-const var2414 var3675) ; Statement: r0 := @parameter0: java.util.Properties 
(assert (not (= var2414 null-var3675)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2725 var1913) ; Statement: $r14 := @caughtexception 
(assert (not (= var2725 null-var1913)))
(define-const var3147 var2055 var2055-init) ; Statement: $r15 = new org.apache.ibatis.datasource.DataSourceException 
(define-const var782 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var782)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var782!1 String)
(assert (= var782!1 ""))
(assert true)
(define-const var2415 String (append/672562846 var782!1 "There was an error configuring JndiDataSourceTransactionPool. Cause: ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("There was an error configuring JndiDataSourceTransactionPool. Cause: ") 
(declare-const var782!2 String)
(assert (= var782!2 (str.++ var782!1 "There was an error configuring JndiDataSourceTransactionPool. Cause: ")))
(assert true)
(define-const var3706 String (append/-1031950772 var2415 (cast-from-var1913-to-var2078 var2725))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14) 
(declare-const var2415!1 String)
(assert (str.prefixof var2415 var2415!1))
(assert true)
(define-const var219 String (toString/-2075883882 var3706)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1715397353 var3147 var219 (cast-from-var1913-to-var2119 var2725))) ; Statement: specialinvoke $r15.<org.apache.ibatis.datasource.DataSourceException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r14) 

(declare-const var3147!1 var2055)
(declare-const var219!1 String)
(declare-const var2725!1 var1913)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2055-init=([], org.apache.ibatis.datasource.DataSourceException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1913-to-var2078=([javax.naming.NamingException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1715397353=([org.apache.ibatis.datasource.DataSourceException, java.lang.String, java.lang.Throwable], void), cast-from-var1913-to-var2119=([javax.naming.NamingException], java.lang.Throwable)}
; {var241=org.apache.ibatis.datasource.jndi.JndiDataSourceFactory, var1390=r3, var3675=java.util.Properties, var2414=r0, var1913=javax.naming.NamingException, var2725=$r14, var2055=org.apache.ibatis.datasource.DataSourceException, var3147=$r15, var782=$r16, var2415=$r17, var2078=java.lang.Object, var3706=$r18, var219=$r19, var2119=java.lang.Throwable}
; {org.apache.ibatis.datasource.jndi.JndiDataSourceFactory=var241, r3=var1390, java.util.Properties=var3675, r0=var2414, javax.naming.NamingException=var1913, $r14=var2725, org.apache.ibatis.datasource.DataSourceException=var2055, $r15=var3147, $r16=var782, $r17=var2415, java.lang.Object=var2078, $r18=var3706, $r19=var219, java.lang.Throwable=var2119}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.ibatis.datasource.jndi.JndiDataSourceFactory;	r0 := @parameter0: java.util.Properties;	$r14 := @caughtexception;	$r15 = new org.apache.ibatis.datasource.DataSourceException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("There was an error configuring JndiDataSourceTransactionPool. Cause: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.apache.ibatis.datasource.DataSourceException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r14);	throw $r15
;block_num 2