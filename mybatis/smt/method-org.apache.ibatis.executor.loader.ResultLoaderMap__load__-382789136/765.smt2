(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var361 0)
(declare-sort var2782 0)
(declare-sort var332 0)
(declare-sort var3604 0)
(declare-sort var1087 0)
(declare-sort var842 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun loaderMap/-1825562998 (var361) var332)
(declare-fun toUpperCase/398655892 (String var3604) String)
(declare-fun var332_remove/-1201052315 (var332 var1087) var1087)
(declare-fun cast-from-String-to-var1087 (String) var1087)
(declare-fun cast-from-var1087-to-var842 (var1087) var842)
(declare-fun load/1078505703 (var842) void)
(declare-const null-var361 var361)
(declare-const null-String String)
(declare-const var3604-ENGLISH var3604)
(declare-const null-var842 var842)
(declare-const var3320 var361) ; Statement: r0 := @this: org.apache.ibatis.executor.loader.ResultLoaderMap 
(assert (not (= var3320 null-var361)))
(declare-const var1360 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1360 null-String)))
(define-const var3129 var332 (loaderMap/-1825562998 var3320)) ; Statement: $r3 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap: java.util.Map loaderMap> 
(define-const var2067 var3604 var3604-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3043 String (toUpperCase/398655892 var1360 var2067)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
(define-const var3554 var1087 (var332_remove/-1201052315 var3129 (cast-from-String-to-var1087 var3043))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object remove(java.lang.Object)>($r4) 
(define-const var3089 var842 (cast-from-var1087-to-var842 var3554)) ; Statement: r6 = (org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair) $r5 
 ; Statement: if r6 == null goto return 0 
(assert (not (= var3089 null-var842))) ; Negate: Cond: r6 == null  
(assert true)
;(assert (load/1078505703 var3089)) ; Statement: virtualinvoke r6.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: void load()>() 

(declare-const var3089!1 var842)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {loaderMap/-1825562998=([org.apache.ibatis.executor.loader.ResultLoaderMap], java.util.Map), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var332_remove/-1201052315=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1087=([java.lang.String], java.lang.Object), cast-from-var1087-to-var842=([java.lang.Object], org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair), load/1078505703=([org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair], void)}
; {var361=org.apache.ibatis.executor.loader.ResultLoaderMap, var3320=r0, var1360=r1, var2782=null_type, var332=java.util.Map, var3129=$r3, var3604=java.util.Locale, var2067=$r2, var3043=$r4, var1087=java.lang.Object, var3554=$r5, var842=org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair, var3089=r6}
; {org.apache.ibatis.executor.loader.ResultLoaderMap=var361, r0=var3320, r1=var1360, null_type=var2782, java.util.Map=var332, $r3=var3129, java.util.Locale=var3604, $r2=var2067, $r4=var3043, java.lang.Object=var1087, $r5=var3554, org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair=var842, r6=var3089}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.apache.ibatis.executor.loader.ResultLoaderMap;	r1 := @parameter0: java.lang.String;	$r3 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap: java.util.Map loaderMap>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object remove(java.lang.Object)>($r4);	r6 = (org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair) $r5;	if r6 == null goto return 0;	virtualinvoke r6.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: void load()>();	return 1
;block_num 2