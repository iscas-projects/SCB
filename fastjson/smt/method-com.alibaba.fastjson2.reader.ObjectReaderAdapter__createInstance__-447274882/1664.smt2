(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1902 0)
(declare-sort var3302 0)
(declare-sort var2042 0)
(declare-sort var3872 0)
(declare-sort var3473 0)
(declare-sort var2317 0)
(declare-sort var1762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun instantiationError/-528402079 (var1902) Bool)
(declare-fun constructor/-528402079 (var1902) var2042)
(declare-fun var3872-init () var3872)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun objectClass/1914013406 (var3473) ClassObject)
(declare-fun cast-from-var1902-to-var3473 (var1902) var3473)
(declare-fun append/-1031950772 (String var2317) String)
(declare-fun cast-from-ClassObject-to-var2317 (ClassObject) var2317)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3872 String var1762) void)
(declare-fun cast-from-var3302-to-var1762 (var3302) var1762)
(declare-const null-var1902 var1902)
(declare-const null-Int Int)
(declare-const null-var3302 var3302)
(declare-const null-var2042 var2042)
(declare-const var3891 var1902) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderAdapter 
(assert (not (= var3891 null-var1902)))
(declare-const var2591 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2591 null-Int)))
(define-const var2013 Bool (instantiationError/-528402079 var3891)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: boolean instantiationError> 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.lang.Object createInstance0(long)>(l0) 
(assert (not (= (ite var2013 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var981 var3302) ; Statement: $r12 := @caughtexception 
(assert (not (= var981 null-var3302)))
(declare-const var3891!1 var1902)
(assert (not (= var3891!1 null-var1902)))
(assert (= (instantiationError/-528402079 var3891!1) (ite (= 1 1) true false))) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: boolean instantiationError> = 1 
(define-const var695 var2042 (constructor/-528402079 var3891!1)) ; Statement: $r13 = r0.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.lang.reflect.Constructor constructor> 
 ; Statement: if $r13 == null goto $r14 = new com.alibaba.fastjson2.JSONException 
(assert (= var695 null-var2042)) ; Cond: $r13 == null 
(define-const var990 var3872 var3872-init) ; Statement: $r14 = new com.alibaba.fastjson2.JSONException 
(define-const var1204 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1204)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1204!1 String)
(assert (= var1204!1 ""))
(assert true)
(define-const var2090 String (append/672562846 var1204!1 "create instance error, ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create instance error, ") 
(declare-const var1204!2 String)
(assert (= var1204!2 (str.++ var1204!1 "create instance error, ")))
(define-const var1003 ClassObject (objectClass/1914013406 (cast-from-var1902-to-var3473 var3891!1))) ; Statement: $r16 = r0.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.lang.Class objectClass> 
(assert true)
(define-const var3401 String (append/-1031950772 var2090 (cast-from-ClassObject-to-var2317 var1003))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var2090!1 String)
(assert (str.prefixof var2090 var2090!1))
(assert true)
(define-const var2100 String (toString/-2075883882 var3401)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var990 var2100 (cast-from-var3302-to-var1762 var981))) ; Statement: specialinvoke $r14.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r12) 

(declare-const var990!1 var3872)
(declare-const var2100!1 String)
(declare-const var981!1 var3302)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {instantiationError/-528402079=([com.alibaba.fastjson2.reader.ObjectReaderAdapter], boolean), constructor/-528402079=([com.alibaba.fastjson2.reader.ObjectReaderAdapter], java.lang.reflect.Constructor), var3872-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), objectClass/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], java.lang.Class), cast-from-var1902-to-var3473=([com.alibaba.fastjson2.reader.ObjectReaderAdapter], com.alibaba.fastjson2.reader.ObjectReaderBean), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2317=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3302-to-var1762=([java.lang.Exception], java.lang.Throwable)}
; {var1902=com.alibaba.fastjson2.reader.ObjectReaderAdapter, var3891=r0, var2591=l0, var2013=$z0, var3302=java.lang.Exception, var981=$r12, var2042=java.lang.reflect.Constructor, var695=$r13, var3872=com.alibaba.fastjson2.JSONException, var990=$r14, var1204=$r15, var2090=$r17, var3473=com.alibaba.fastjson2.reader.ObjectReaderBean, var1003=$r16, var2317=java.lang.Object, var3401=$r18, var2100=$r19, var1762=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.ObjectReaderAdapter=var1902, r0=var3891, l0=var2591, $z0=var2013, java.lang.Exception=var3302, $r12=var981, java.lang.reflect.Constructor=var2042, $r13=var695, com.alibaba.fastjson2.JSONException=var3872, $r14=var990, $r15=var1204, $r17=var2090, com.alibaba.fastjson2.reader.ObjectReaderBean=var3473, $r16=var1003, java.lang.Object=var2317, $r18=var3401, $r19=var2100, java.lang.Throwable=var1762}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderAdapter;	l0 := @parameter0: long;	$z0 = r0.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: boolean instantiationError>;	if $z0 == 0 goto $r2 = virtualinvoke r0.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.lang.Object createInstance0(long)>(l0);	$r12 := @caughtexception;	r0.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: boolean instantiationError> = 1;	$r13 = r0.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.lang.reflect.Constructor constructor>;	if $r13 == null goto $r14 = new com.alibaba.fastjson2.JSONException;	$r14 = new com.alibaba.fastjson2.JSONException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create instance error, ");	$r16 = r0.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.lang.Class objectClass>;	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r12);	throw $r14
;block_num 3