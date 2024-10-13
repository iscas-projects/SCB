(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2932 0)
(declare-sort var2379 0)
(declare-sort var3271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2379-init () var2379)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3271) ClassObject)
(declare-fun cast-from-var2932-to-var3271 (var2932) var3271)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/551030747 (var2379 String) void)
(declare-const null-var2932 var2932)
(declare-const null-ClassObject ClassObject)
(declare-const var3338 var2932) ; Statement: r2 := @this: org.apache.ibatis.datasource.pooled.PooledDataSource 
(assert (not (= var3338 null-var2932)))
(declare-const var1778 ClassObject) ; Statement: r8 := @parameter0: java.lang.Class 
(assert (not (= var1778 null-ClassObject)))
(define-const var1341 var2379 var2379-init) ; Statement: $r0 = new java.sql.SQLException 
(define-const var669 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var669)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var669!1 String)
(assert (= var669!1 ""))
(assert true)
(define-const var1059 ClassObject (getClass/1258963082 (cast-from-var2932-to-var3271 var3338))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2149 String (getName/-1958580599 var1059)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3060 String (append/672562846 var669!1 var2149)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var669!2 String)
(assert (= var669!2 (str.++ var669!1 var2149)))
(assert true)
(define-const var411 String (append/672562846 var3060 " is not a wrapper.")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a wrapper.") 
(declare-const var3060!1 String)
(assert (= var3060!1 (str.++ var3060 " is not a wrapper.")))
(assert true)
(define-const var3002 String (toString/-2075883882 var411)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/551030747 var1341 var3002)) ; Statement: specialinvoke $r0.<java.sql.SQLException: void <init>(java.lang.String)>($r7) 

(declare-const var1341!1 var2379)
(declare-const var3002!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2379-init=([], java.sql.SQLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2932-to-var3271=([org.apache.ibatis.datasource.pooled.PooledDataSource], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/551030747=([java.sql.SQLException, java.lang.String], void)}
; {var2932=org.apache.ibatis.datasource.pooled.PooledDataSource, var3338=r2, var1778=r8, var2379=java.sql.SQLException, var1341=$r0, var669=$r1, var3271=java.lang.Object, var1059=$r3, var2149=$r4, var3060=$r5, var411=$r6, var3002=$r7}
; {org.apache.ibatis.datasource.pooled.PooledDataSource=var2932, r2=var3338, r8=var1778, java.sql.SQLException=var2379, $r0=var1341, $r1=var669, java.lang.Object=var3271, $r3=var1059, $r4=var2149, $r5=var3060, $r6=var411, $r7=var3002}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.datasource.pooled.PooledDataSource;	r8 := @parameter0: java.lang.Class;	$r0 = new java.sql.SQLException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a wrapper.");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.sql.SQLException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1