(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1903 0)
(declare-sort var969 0)
(declare-sort var2288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getId/-1811880672 (var969) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1903 var1903)
(declare-const null-var969 var969)
(declare-const null-String String)
(declare-const var3356 var1903) ; Statement: r8 := @this: org.apache.ibatis.executor.resultset.ResultSetWrapper 
(assert (not (= var3356 null-var1903)))
(declare-const var2095 var969) ; Statement: r1 := @parameter0: org.apache.ibatis.mapping.ResultMap 
(assert (not (= var2095 null-var969)))
(declare-const var3524 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3524 null-String)))
(define-const var2497 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2497)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2497!1 String)
(assert (= var2497!1 ""))
(assert true)
(define-const var537 String (getId/-1811880672 var2095)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.mapping.ResultMap: java.lang.String getId()>() 
(assert true)
(define-const var1298 String (append/672562846 var2497!1 var537)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2497!2 String)
(assert (= var2497!2 (str.++ var2497!1 var537)))
(assert true)
(define-const var1317 String (append/672562846 var1298 ":")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1298!1 String)
(assert (= var1298!1 (str.++ var1298 ":")))
(assert true)
(define-const var2965 String (append/672562846 var1317 var3524)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1317!1 String)
(assert (= var1317!1 (str.++ var1317 var3524)))
(assert true)
(define-const var2330 String (toString/-2075883882 var2965)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getId/-1811880672=([org.apache.ibatis.mapping.ResultMap], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1903=org.apache.ibatis.executor.resultset.ResultSetWrapper, var3356=r8, var969=org.apache.ibatis.mapping.ResultMap, var2095=r1, var3524=r4, var2288=null_type, var2497=$r0, var537=$r2, var1298=$r3, var1317=$r5, var2965=$r6, var2330=$r7}
; {org.apache.ibatis.executor.resultset.ResultSetWrapper=var1903, r8=var3356, org.apache.ibatis.mapping.ResultMap=var969, r1=var2095, r4=var3524, null_type=var2288, $r0=var2497, $r2=var537, $r3=var1298, $r5=var1317, $r6=var2965, $r7=var2330}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.ibatis.executor.resultset.ResultSetWrapper;	r1 := @parameter0: org.apache.ibatis.mapping.ResultMap;	r4 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.mapping.ResultMap: java.lang.String getId()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1