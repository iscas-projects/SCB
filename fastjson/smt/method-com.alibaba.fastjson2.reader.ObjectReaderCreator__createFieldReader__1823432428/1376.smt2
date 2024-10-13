(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2057 0)
(declare-sort var2480 0)
(declare-sort var3022 0)
(declare-sort var1135 0)
(declare-sort var2544 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDeclaringClass/501867354 (var3022) ClassObject)
(declare-fun getParameterCount/184216570 (var3022) Int)
(declare-fun var1135-init () var1135)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2544) String)
(declare-fun cast-from-var3022-to-var2544 (var3022) var2544)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1135 String) void)
(declare-const null-var2057 var2057)
(declare-const null-String String)
(declare-const null-var3022 var3022)
(declare-const var134 var2057) ; Statement: r9 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator 
(assert (not (= var134 null-var2057)))
(declare-const var1317 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var1317 null-String)))
(declare-const var607 var3022) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var607 null-var3022)))
(assert true)
(define-const var1463 ClassObject (getDeclaringClass/501867354 var607)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var2570 Int (getParameterCount/184216570 var607)) ; Statement: i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>() 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (= var2570 0))) ; Cond: i0 != 0 
 ; Statement: if i0 != 1 goto $r2 = new com.alibaba.fastjson2.JSONException 
(assert (not (= var2570 1))) ; Cond: i0 != 1 
(define-const var155 var1135 var1135-init) ; Statement: $r2 = new com.alibaba.fastjson2.JSONException 
(define-const var2589 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2589)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2589!1 String)
(assert (= var2589!1 ""))
(assert true)
(define-const var3157 String (append/672562846 var2589!1 "illegal setter method ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal setter method ") 
(declare-const var2589!2 String)
(assert (= var2589!2 (str.++ var2589!1 "illegal setter method ")))
(assert true)
(define-const var2610 String (append/-1031950772 var3157 (cast-from-var3022-to-var2544 var607))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3157!1 String)
(assert (str.prefixof var3157 var3157!1))
(assert true)
(define-const var1576 String (toString/-2075883882 var2610)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var155 var1576)) ; Statement: specialinvoke $r2.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var155!1 var1135)
(declare-const var1576!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/501867354=([java.lang.reflect.Method], java.lang.Class), getParameterCount/184216570=([java.lang.reflect.Method], int), var1135-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3022-to-var2544=([java.lang.reflect.Method], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2057=com.alibaba.fastjson2.reader.ObjectReaderCreator, var134=r9, var1317=r10, var2480=null_type, var3022=java.lang.reflect.Method, var607=r0, var1463=r1, var2570=i0, var1135=com.alibaba.fastjson2.JSONException, var155=$r2, var2589=$r3, var3157=$r4, var2544=java.lang.Object, var2610=$r5, var1576=$r6}
; {com.alibaba.fastjson2.reader.ObjectReaderCreator=var2057, r9=var134, r10=var1317, null_type=var2480, java.lang.reflect.Method=var3022, r0=var607, r1=var1463, i0=var2570, com.alibaba.fastjson2.JSONException=var1135, $r2=var155, $r3=var2589, $r4=var3157, java.lang.Object=var2544, $r5=var2610, $r6=var1576}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator;	r10 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>();	i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>();	if i0 != 0 goto (branch);	if i0 != 1 goto $r2 = new com.alibaba.fastjson2.JSONException;	$r2 = new com.alibaba.fastjson2.JSONException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal setter method ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 3