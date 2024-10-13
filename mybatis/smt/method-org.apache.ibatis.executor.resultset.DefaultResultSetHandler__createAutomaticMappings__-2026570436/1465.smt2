(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3885 0)
(declare-sort var2098 0)
(declare-sort var3100 0)
(declare-sort var1947 0)
(declare-sort var89 0)
(declare-sort var3540 0)
(declare-sort var2479 0)
(declare-sort var2123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getId/-1811880672 (var3100) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun autoMappingsCache/1496644996 (var3885) var3540)
(declare-fun var3540_get/1088891777 (var3540 var2479) var2479)
(declare-fun cast-from-String-to-var2479 (String) var2479)
(declare-fun cast-from-var2479-to-var2123 (var2479) var2123)
(declare-const null-var3885 var3885)
(declare-const null-var2098 var2098)
(declare-const null-var3100 var3100)
(declare-const null-var1947 var1947)
(declare-const null-String String)
(declare-const null-var2123 var2123)
(declare-const var1918 var3885) ; Statement: r8 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler 
(assert (not (= var1918 null-var3885)))
(declare-const var1211 var2098) ; Statement: r12 := @parameter0: org.apache.ibatis.executor.resultset.ResultSetWrapper 
(assert (not (= var1211 null-var2098)))
(declare-const var2716 var3100) ; Statement: r1 := @parameter1: org.apache.ibatis.mapping.ResultMap 
(assert (not (= var2716 null-var3100)))
(declare-const var2502 var1947) ; Statement: r20 := @parameter2: org.apache.ibatis.reflection.MetaObject 
(assert (not (= var2502 null-var1947)))
(declare-const var3875 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var3875 null-String)))
(define-const var1160 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1160)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1160!1 String)
(assert (= var1160!1 ""))
(assert true)
(define-const var2383 String (getId/-1811880672 var2716)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.mapping.ResultMap: java.lang.String getId()>() 
(assert true)
(define-const var2367 String (append/672562846 var1160!1 var2383)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1160!2 String)
(assert (= var1160!2 (str.++ var1160!1 var2383)))
(assert true)
(define-const var3171 String (append/672562846 var2367 ":")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2367!1 String)
(assert (= var2367!1 (str.++ var2367 ":")))
(assert true)
(define-const var1745 String (append/672562846 var3171 var3875)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3171!1 String)
(assert (= var3171!1 (str.++ var3171 var3875)))
(assert true)
(define-const var2247 String (toString/-2075883882 var1745)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var946 var3540 (autoMappingsCache/1496644996 var1918)) ; Statement: $r9 = r8.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: java.util.Map autoMappingsCache> 
(define-const var2692 var2479 (var3540_get/1088891777 var946 (cast-from-String-to-var2479 var2247))) ; Statement: $r10 = interfaceinvoke $r9.<java.util.Map: java.lang.Object get(java.lang.Object)>(r7) 
(define-const var1641 var2123 (cast-from-var2479-to-var2123 var2692)) ; Statement: r36 = (java.util.List) $r10 
 ; Statement: if r36 != null goto return r36 
(assert (not (= var1641 null-var2123))) ; Cond: r36 != null 
 ; Statement: return r36 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getId/-1811880672=([org.apache.ibatis.mapping.ResultMap], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), autoMappingsCache/1496644996=([org.apache.ibatis.executor.resultset.DefaultResultSetHandler], java.util.Map), var3540_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2479=([java.lang.String], java.lang.Object), cast-from-var2479-to-var2123=([java.lang.Object], java.util.List)}
; {var3885=org.apache.ibatis.executor.resultset.DefaultResultSetHandler, var1918=r8, var2098=org.apache.ibatis.executor.resultset.ResultSetWrapper, var1211=r12, var3100=org.apache.ibatis.mapping.ResultMap, var2716=r1, var1947=org.apache.ibatis.reflection.MetaObject, var2502=r20, var3875=r4, var89=null_type, var1160=$r0, var2383=$r2, var2367=$r3, var3171=$r5, var1745=$r6, var2247=r7, var3540=java.util.Map, var946=$r9, var2479=java.lang.Object, var2692=$r10, var2123=java.util.List, var1641=r36}
; {org.apache.ibatis.executor.resultset.DefaultResultSetHandler=var3885, r8=var1918, org.apache.ibatis.executor.resultset.ResultSetWrapper=var2098, r12=var1211, org.apache.ibatis.mapping.ResultMap=var3100, r1=var2716, org.apache.ibatis.reflection.MetaObject=var1947, r20=var2502, r4=var3875, null_type=var89, $r0=var1160, $r2=var2383, $r3=var2367, $r5=var3171, $r6=var1745, r7=var2247, java.util.Map=var3540, $r9=var946, java.lang.Object=var2479, $r10=var2692, java.util.List=var2123, r36=var1641}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler;	r12 := @parameter0: org.apache.ibatis.executor.resultset.ResultSetWrapper;	r1 := @parameter1: org.apache.ibatis.mapping.ResultMap;	r20 := @parameter2: org.apache.ibatis.reflection.MetaObject;	r4 := @parameter3: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.mapping.ResultMap: java.lang.String getId()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = r8.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: java.util.Map autoMappingsCache>;	$r10 = interfaceinvoke $r9.<java.util.Map: java.lang.Object get(java.lang.Object)>(r7);	r36 = (java.util.List) $r10;	if r36 != null goto return r36;	return r36
;block_num 2