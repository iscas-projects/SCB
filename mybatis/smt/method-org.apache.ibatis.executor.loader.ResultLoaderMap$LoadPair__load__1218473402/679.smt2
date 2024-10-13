(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1781 0)
(declare-sort var1391 0)
(declare-sort var1565 0)
(declare-sort var3773 0)
(declare-sort var3513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metaResultObject/-1725803046 (var1781) var1565)
(declare-fun mappedParameter/-1725803046 (var1781) var3773)
(declare-fun var3513-init () var3513)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun property/-1725803046 (var1781) String)
(declare-fun mappedStatement/-1725803046 (var1781) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1671820471 (var3513 String) void)
(declare-const null-var1781 var1781)
(declare-const null-var1391 var1391)
(declare-const null-var1565 var1565)
(declare-const null-var3773 var3773)
(declare-const var3014 var1781) ; Statement: r0 := @this: org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair 
(assert (not (= var3014 null-var1781)))
(declare-const var755 var1391) ; Statement: r5 := @parameter0: java.lang.Object 
(assert (not (= var755 null-var1391)))
(define-const var2599 var1565 (metaResultObject/-1725803046 var3014)) ; Statement: $r1 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: org.apache.ibatis.reflection.MetaObject metaResultObject> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: java.io.Serializable mappedParameter> 
(assert (= var2599 null-var1565)) ; Cond: $r1 == null 
(define-const var1140 var3773 (mappedParameter/-1725803046 var3014)) ; Statement: $r2 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: java.io.Serializable mappedParameter> 
 ; Statement: if $r2 != null goto r50 = specialinvoke r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: org.apache.ibatis.session.Configuration getConfiguration()>() 
(assert (not (not (= var1140 null-var3773)))) ; Negate: Cond: $r2 != null  
(define-const var2434 var3513 var3513-init) ; Statement: $r39 = new org.apache.ibatis.executor.ExecutorException 
(define-const var2405 String String-init) ; Statement: $r40 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2405)) ; Statement: specialinvoke $r40.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2405!1 String)
(assert (= var2405!1 ""))
(assert true)
(define-const var2070 String (append/672562846 var2405!1 "Property [")) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Property [") 
(declare-const var2405!2 String)
(assert (= var2405!2 (str.++ var2405!1 "Property [")))
(define-const var92 String (property/-1725803046 var3014)) ; Statement: $r41 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: java.lang.String property> 
(assert true)
(define-const var31 String (append/672562846 var2070 var92)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2070!1 String)
(assert (= var2070!1 (str.++ var2070 var92)))
(assert true)
(define-const var3882 String (append/672562846 var31 "] cannot be loaded because required parameter of mapped statement [")) ; Statement: $r45 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be loaded because required parameter of mapped statement [") 
(declare-const var31!1 String)
(assert (= var31!1 (str.++ var31 "] cannot be loaded because required parameter of mapped statement [")))
(define-const var937 String (mappedStatement/-1725803046 var3014)) ; Statement: $r44 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: java.lang.String mappedStatement> 
(assert true)
(define-const var3936 String (append/672562846 var3882 var937)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r44) 
(declare-const var3882!1 String)
(assert (= var3882!1 (str.++ var3882 var937)))
(assert true)
(define-const var2110 String (append/672562846 var3936 "] is not serializable.")) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not serializable.") 
(declare-const var3936!1 String)
(assert (= var3936!1 (str.++ var3936 "] is not serializable.")))
(assert true)
(define-const var1522 String (toString/-2075883882 var2110)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1671820471 var2434 var1522)) ; Statement: specialinvoke $r39.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String)>($r48) 

(declare-const var2434!1 var3513)
(declare-const var1522!1 String)
 ; Statement: throw $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {metaResultObject/-1725803046=([org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair], org.apache.ibatis.reflection.MetaObject), mappedParameter/-1725803046=([org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair], java.io.Serializable), var3513-init=([], org.apache.ibatis.executor.ExecutorException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), property/-1725803046=([org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair], java.lang.String), mappedStatement/-1725803046=([org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1671820471=([org.apache.ibatis.executor.ExecutorException, java.lang.String], void)}
; {var1781=org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair, var3014=r0, var1391=java.lang.Object, var755=r5, var1565=org.apache.ibatis.reflection.MetaObject, var2599=$r1, var3773=java.io.Serializable, var1140=$r2, var3513=org.apache.ibatis.executor.ExecutorException, var2434=$r39, var2405=$r40, var2070=$r42, var92=$r41, var31=$r43, var3882=$r45, var937=$r44, var3936=$r46, var2110=$r47, var1522=$r48}
; {org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair=var1781, r0=var3014, java.lang.Object=var1391, r5=var755, org.apache.ibatis.reflection.MetaObject=var1565, $r1=var2599, java.io.Serializable=var3773, $r2=var1140, org.apache.ibatis.executor.ExecutorException=var3513, $r39=var2434, $r40=var2405, $r42=var2070, $r41=var92, $r43=var31, $r45=var3882, $r44=var937, $r46=var3936, $r47=var2110, $r48=var1522}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair;	r5 := @parameter0: java.lang.Object;	$r1 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: org.apache.ibatis.reflection.MetaObject metaResultObject>;	if $r1 == null goto $r2 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: java.io.Serializable mappedParameter>;	$r2 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: java.io.Serializable mappedParameter>;	if $r2 != null goto r50 = specialinvoke r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: org.apache.ibatis.session.Configuration getConfiguration()>();	$r39 = new org.apache.ibatis.executor.ExecutorException;	$r40 = new java.lang.StringBuilder;	specialinvoke $r40.<java.lang.StringBuilder: void <init>()>();	$r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Property [");	$r41 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: java.lang.String property>;	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r45 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be loaded because required parameter of mapped statement [");	$r44 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: java.lang.String mappedStatement>;	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r44);	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not serializable.");	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r39.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String)>($r48);	throw $r39
;block_num 3