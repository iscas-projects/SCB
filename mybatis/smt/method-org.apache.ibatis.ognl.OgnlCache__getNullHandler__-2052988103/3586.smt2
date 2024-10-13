(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var803 0)
(declare-sort var1529 0)
(declare-sort var2006 0)
(declare-sort var1425 0)
(declare-sort var2385 0)
(declare-sort var1109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nullHandlers/1493318390 (var803) var1529)
(declare-fun var1425_getHandler/-1171995976 (ClassObject var1529) var2006)
(declare-fun cast-from-var2006-to-var2385 (var2006) var2385)
(declare-fun var1109-init () var1109)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2006) String)
(declare-fun cast-from-ClassObject-to-var2006 (ClassObject) var2006)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-434000407 (var1109 String) void)
(declare-const null-var803 var803)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2385 var2385)
(declare-const var2224 var803) ; Statement: r1 := @this: org.apache.ibatis.ognl.OgnlCache 
(assert (not (= var2224 null-var803)))
(declare-const var3602 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3602 null-ClassObject)))
(define-const var1952 var1529 (nullHandlers/1493318390 var2224)) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.OgnlCache: org.apache.ibatis.ognl.internal.ClassCache nullHandlers> 
(define-const var1048 var2006 (var1425_getHandler/-1171995976 var3602 var1952)) ; Statement: $r3 = staticinvoke <org.apache.ibatis.ognl.internal.ClassCacheHandler: java.lang.Object getHandler(java.lang.Class,org.apache.ibatis.ognl.internal.ClassCache)>(r0, $r2) 
(define-const var3313 var2385 (cast-from-var2006-to-var2385 var1048)) ; Statement: r4 = (org.apache.ibatis.ognl.NullHandler) $r3 
 ; Statement: if r4 == null goto $r5 = new org.apache.ibatis.ognl.OgnlException 
(assert (= var3313 null-var2385)) ; Cond: r4 == null 
(define-const var1263 var1109 var1109-init) ; Statement: $r5 = new org.apache.ibatis.ognl.OgnlException 
(define-const var629 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var629)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var629!1 String)
(assert (= var629!1 ""))
(assert true)
(define-const var3020 String (append/672562846 var629!1 "No null handler for class ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No null handler for class ") 
(declare-const var629!2 String)
(assert (= var629!2 (str.++ var629!1 "No null handler for class ")))
(assert true)
(define-const var3492 String (append/-1031950772 var3020 (cast-from-ClassObject-to-var2006 var3602))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3020!1 String)
(assert (str.prefixof var3020 var3020!1))
(assert true)
(define-const var2647 String (toString/-2075883882 var3492)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-434000407 var1263 var2647)) ; Statement: specialinvoke $r5.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r9) 

(declare-const var1263!1 var1109)
(declare-const var2647!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {nullHandlers/1493318390=([org.apache.ibatis.ognl.OgnlCache], org.apache.ibatis.ognl.internal.ClassCache), var1425_getHandler/-1171995976=([java.lang.Class, org.apache.ibatis.ognl.internal.ClassCache], java.lang.Object), cast-from-var2006-to-var2385=([java.lang.Object], org.apache.ibatis.ognl.NullHandler), var1109-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2006=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-434000407=([org.apache.ibatis.ognl.OgnlException, java.lang.String], void)}
; {var803=org.apache.ibatis.ognl.OgnlCache, var2224=r1, var3602=r0, var1529=org.apache.ibatis.ognl.internal.ClassCache, var1952=$r2, var2006=java.lang.Object, var1425=org.apache.ibatis.ognl.internal.ClassCacheHandler, var1048=$r3, var2385=org.apache.ibatis.ognl.NullHandler, var3313=r4, var1109=org.apache.ibatis.ognl.OgnlException, var1263=$r5, var629=$r6, var3020=$r7, var3492=$r8, var2647=$r9}
; {org.apache.ibatis.ognl.OgnlCache=var803, r1=var2224, r0=var3602, org.apache.ibatis.ognl.internal.ClassCache=var1529, $r2=var1952, java.lang.Object=var2006, org.apache.ibatis.ognl.internal.ClassCacheHandler=var1425, $r3=var1048, org.apache.ibatis.ognl.NullHandler=var2385, r4=var3313, org.apache.ibatis.ognl.OgnlException=var1109, $r5=var1263, $r6=var629, $r7=var3020, $r8=var3492, $r9=var2647}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.OgnlCache;	r0 := @parameter0: java.lang.Class;	$r2 = r1.<org.apache.ibatis.ognl.OgnlCache: org.apache.ibatis.ognl.internal.ClassCache nullHandlers>;	$r3 = staticinvoke <org.apache.ibatis.ognl.internal.ClassCacheHandler: java.lang.Object getHandler(java.lang.Class,org.apache.ibatis.ognl.internal.ClassCache)>(r0, $r2);	r4 = (org.apache.ibatis.ognl.NullHandler) $r3;	if r4 == null goto $r5 = new org.apache.ibatis.ognl.OgnlException;	$r5 = new org.apache.ibatis.ognl.OgnlException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No null handler for class ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2