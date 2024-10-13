(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3764 0)
(declare-sort var1493 0)
(declare-sort var567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun var1493-init () var1493)
(declare-fun <init>/-2175807 (var1493) void)
(declare-fun cast-from-var1493-to-var567 (var1493) var567)
(declare-const var3764-JVM_VERSION String)
(define-const var1281 Int 8) ; Statement: <com.mysql.cj.util.Util: int jvmVersion> = 8 
(define-const var2216 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
(define-const var2194 Int var2216) ; Statement: <com.mysql.cj.util.Util: int jvmUpdateNumber> = $i13 
(define-const var1750 String var3764-JVM_VERSION) ; Statement: $r0 = <com.mysql.cj.Constants: java.lang.String JVM_VERSION> 
(assert true)
(define-const var306 Int (indexOf/-1037706067 var1750 46)) ; Statement: i7 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>(46) 
(define-const var2264 Int (+ var306 1)) ; Statement: i8 = i7 + 1 
(define-const var2534 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
 ; Statement: if i7 == $i15 goto i9 = i7 + 1 
(assert (= var306 var2534)) ; Cond: i7 == $i15 
(define-const var3126 Int (+ var306 1)) ; Statement: i9 = i7 + 1 
 ; Statement: if i8 <= i9 goto $r1 = <com.mysql.cj.Constants: java.lang.String JVM_VERSION> 
(assert (<= var2264 var3126)) ; Cond: i8 <= i9 
(define-const var1109 String var3764-JVM_VERSION) ; Statement: $r1 = <com.mysql.cj.Constants: java.lang.String JVM_VERSION> 
(assert true)
(define-const var588 Int (indexOf/-1209756239 var1109 "_")) ; Statement: $i4 = virtualinvoke $r1.<java.lang.String: int indexOf(java.lang.String)>("_") 
(define-const var1582 Int (+ var588 1)) ; Statement: i10 = $i4 + 1 
(define-const var3616 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i17 = (int) -1 
 ; Statement: if $i4 == $i17 goto i11 = $i4 + 1 
(assert (= var588 var3616)) ; Cond: $i4 == $i17 
(define-const var3491 Int (+ var588 1)) ; Statement: i11 = $i4 + 1 
 ; Statement: if i10 <= i11 goto $r12 = new java.util.concurrent.ConcurrentHashMap 
(assert (<= var1582 var3491)) ; Cond: i10 <= i11 
(define-const var1014 var1493 var1493-init) ; Statement: $r12 = new java.util.concurrent.ConcurrentHashMap 
(assert true)
;(assert (<init>/-2175807 var1014)) ; Statement: specialinvoke $r12.<java.util.concurrent.ConcurrentHashMap: void <init>()>() 

(declare-const var1014!1 var1493)
(define-const var2016 var567 (cast-from-var1493-to-var567 var1014!1)) ; Statement: <com.mysql.cj.util.Util: java.util.concurrent.ConcurrentMap isJdbcInterfaceCache> = $r12 
(define-const var2304 var1493 var1493-init) ; Statement: $r13 = new java.util.concurrent.ConcurrentHashMap 
(assert true)
;(assert (<init>/-2175807 var2304)) ; Statement: specialinvoke $r13.<java.util.concurrent.ConcurrentHashMap: void <init>()>() 

(declare-const var2304!1 var1493)
(define-const var2007 var567 (cast-from-var1493-to-var567 var2304!1)) ; Statement: <com.mysql.cj.util.Util: java.util.concurrent.ConcurrentMap implementedInterfacesCache> = $r13 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), indexOf/-1037706067=([java.lang.String, int], int), indexOf/-1209756239=([java.lang.String, java.lang.String], int), var1493-init=([], java.util.concurrent.ConcurrentHashMap), <init>/-2175807=([java.util.concurrent.ConcurrentHashMap], void), cast-from-var1493-to-var567=([java.util.concurrent.ConcurrentHashMap], java.util.concurrent.ConcurrentMap)}
; {var1281=<com.mysql.cj.util.Util: int jvmVersion>, var2216=$i13, var2194=<com.mysql.cj.util.Util: int jvmUpdateNumber>, var3764=com.mysql.cj.Constants, var1750=$r0, var306=i7, var2264=i8, var2534=$i15, var3126=i9, var1109=$r1, var588=$i4, var1582=i10, var3616=$i17, var3491=i11, var1493=java.util.concurrent.ConcurrentHashMap, var1014=$r12, var567=java.util.concurrent.ConcurrentMap, var2016=<com.mysql.cj.util.Util: java.util.concurrent.ConcurrentMap isJdbcInterfaceCache>, var2304=$r13, var2007=<com.mysql.cj.util.Util: java.util.concurrent.ConcurrentMap implementedInterfacesCache>}
; {<com.mysql.cj.util.Util: int jvmVersion>=var1281, $i13=var2216, <com.mysql.cj.util.Util: int jvmUpdateNumber>=var2194, com.mysql.cj.Constants=var3764, $r0=var1750, i7=var306, i8=var2264, $i15=var2534, i9=var3126, $r1=var1109, $i4=var588, i10=var1582, $i17=var3616, i11=var3491, java.util.concurrent.ConcurrentHashMap=var1493, $r12=var1014, java.util.concurrent.ConcurrentMap=var567, <com.mysql.cj.util.Util: java.util.concurrent.ConcurrentMap isJdbcInterfaceCache>=var2016, $r13=var2304, <com.mysql.cj.util.Util: java.util.concurrent.ConcurrentMap implementedInterfacesCache>=var2007}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts <com.mysql.cj.util.Util: int jvmVersion> = 8;	$i13 = (int) -1;	<com.mysql.cj.util.Util: int jvmUpdateNumber> = $i13;	$r0 = <com.mysql.cj.Constants: java.lang.String JVM_VERSION>;	i7 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>(46);	i8 = i7 + 1;	$i15 = (int) -1;	if i7 == $i15 goto i9 = i7 + 1;	i9 = i7 + 1;	if i8 <= i9 goto $r1 = <com.mysql.cj.Constants: java.lang.String JVM_VERSION>;	$r1 = <com.mysql.cj.Constants: java.lang.String JVM_VERSION>;	$i4 = virtualinvoke $r1.<java.lang.String: int indexOf(java.lang.String)>("_");	i10 = $i4 + 1;	$i17 = (int) -1;	if $i4 == $i17 goto i11 = $i4 + 1;	i11 = $i4 + 1;	if i10 <= i11 goto $r12 = new java.util.concurrent.ConcurrentHashMap;	$r12 = new java.util.concurrent.ConcurrentHashMap;	specialinvoke $r12.<java.util.concurrent.ConcurrentHashMap: void <init>()>();	<com.mysql.cj.util.Util: java.util.concurrent.ConcurrentMap isJdbcInterfaceCache> = $r12;	$r13 = new java.util.concurrent.ConcurrentHashMap;	specialinvoke $r13.<java.util.concurrent.ConcurrentHashMap: void <init>()>();	<com.mysql.cj.util.Util: java.util.concurrent.ConcurrentMap implementedInterfacesCache> = $r13;	return
;block_num 5