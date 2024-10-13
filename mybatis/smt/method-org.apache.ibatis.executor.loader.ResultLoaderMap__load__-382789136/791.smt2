(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3782 0)
(declare-sort var3524 0)
(declare-sort var1581 0)
(declare-sort var1050 0)
(declare-sort var509 0)
(declare-sort var2208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun loaderMap/-1825562998 (var3782) var1581)
(declare-fun toUpperCase/398655892 (String var1050) String)
(declare-fun var1581_remove/-1201052315 (var1581 var509) var509)
(declare-fun cast-from-String-to-var509 (String) var509)
(declare-fun cast-from-var509-to-var2208 (var509) var2208)
(declare-const null-var3782 var3782)
(declare-const null-String String)
(declare-const var1050-ENGLISH var1050)
(declare-const null-var2208 var2208)
(declare-const var3799 var3782) ; Statement: r0 := @this: org.apache.ibatis.executor.loader.ResultLoaderMap 
(assert (not (= var3799 null-var3782)))
(declare-const var171 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var171 null-String)))
(define-const var3051 var1581 (loaderMap/-1825562998 var3799)) ; Statement: $r3 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap: java.util.Map loaderMap> 
(define-const var3677 var1050 var1050-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3842 String (toUpperCase/398655892 var171 var3677)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
(define-const var726 var509 (var1581_remove/-1201052315 var3051 (cast-from-String-to-var509 var3842))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object remove(java.lang.Object)>($r4) 
(define-const var2904 var2208 (cast-from-var509-to-var2208 var726)) ; Statement: r6 = (org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair) $r5 
 ; Statement: if r6 == null goto return 0 
(assert (= var2904 null-var2208)) ; Cond: r6 == null 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {loaderMap/-1825562998=([org.apache.ibatis.executor.loader.ResultLoaderMap], java.util.Map), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var1581_remove/-1201052315=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var509=([java.lang.String], java.lang.Object), cast-from-var509-to-var2208=([java.lang.Object], org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair)}
; {var3782=org.apache.ibatis.executor.loader.ResultLoaderMap, var3799=r0, var171=r1, var3524=null_type, var1581=java.util.Map, var3051=$r3, var1050=java.util.Locale, var3677=$r2, var3842=$r4, var509=java.lang.Object, var726=$r5, var2208=org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair, var2904=r6}
; {org.apache.ibatis.executor.loader.ResultLoaderMap=var3782, r0=var3799, r1=var171, null_type=var3524, java.util.Map=var1581, $r3=var3051, java.util.Locale=var1050, $r2=var3677, $r4=var3842, java.lang.Object=var509, $r5=var726, org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair=var2208, r6=var2904}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.apache.ibatis.executor.loader.ResultLoaderMap;	r1 := @parameter0: java.lang.String;	$r3 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap: java.util.Map loaderMap>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object remove(java.lang.Object)>($r4);	r6 = (org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair) $r5;	if r6 == null goto return 0;	return 0
;block_num 2