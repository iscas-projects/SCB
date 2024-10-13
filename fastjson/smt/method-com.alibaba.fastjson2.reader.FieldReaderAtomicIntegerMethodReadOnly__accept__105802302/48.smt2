(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3732 0)
(declare-sort var2873 0)
(declare-sort var3833 0)
(declare-sort var3415 0)
(declare-sort var1614 0)
(declare-sort var2353 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3415-init () var3415)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1614) String)
(declare-fun cast-from-var3732-to-var1614 (var3732) var1614)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3415 String var2353) void)
(declare-fun cast-from-var3833-to-var2353 (var3833) var2353)
(declare-const null-var3732 var3732)
(declare-const null-var2873 var2873)
(declare-const null-var3833 var3833)
(declare-const var581 var3732) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerMethodReadOnly 
(assert (not (= var581 null-var3732)))
(declare-const var2858 var2873) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2858 null-var2873)))
(declare-const var1462 var2873) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1462 null-var2873)))
 ; Statement: if r0 != null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerMethodReadOnly: java.lang.reflect.Method method> 
(assert (not (not (= var1462 null-var2873)))) ; Negate: Cond: r0 != null  
(declare-const var478 var3833) ; Statement: $r7 := @caughtexception 
(assert (not (= var478 null-var3833)))
(define-const var1808 var3415 var3415-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var3925 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3925)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3925!1 String)
(assert (= var3925!1 ""))
(assert true)
(define-const var3383 String (append/672562846 var3925!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3925!2 String)
(assert (= var3925!2 (str.++ var3925!1 "set ")))
(define-const var1552 String (fieldName/-488737871 (cast-from-var3732-to-var1614 var581))) ; Statement: $r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerMethodReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var880 String (append/672562846 var3383 var1552)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3383!1 String)
(assert (= var3383!1 (str.++ var3383 var1552)))
(assert true)
(define-const var1237 String (append/672562846 var880 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var880!1 String)
(assert (= var880!1 (str.++ var880 " error")))
(assert true)
(define-const var1572 String (toString/-2075883882 var1237)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1808 var1572 (cast-from-var3833-to-var2353 var478))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var1808!1 var3415)
(declare-const var1572!1 String)
(declare-const var478!1 var3833)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3415-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var3732-to-var1614=([com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerMethodReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3833-to-var2353=([java.lang.Exception], java.lang.Throwable)}
; {var3732=com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerMethodReadOnly, var581=r1, var2873=java.lang.Object, var2858=r2, var1462=r0, var3833=java.lang.Exception, var478=$r7, var3415=com.alibaba.fastjson2.JSONException, var1808=$r8, var3925=$r9, var3383=$r11, var1614=com.alibaba.fastjson2.reader.FieldReader, var1552=$r10, var880=$r12, var1237=$r13, var1572=$r14, var2353=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerMethodReadOnly=var3732, r1=var581, java.lang.Object=var2873, r2=var2858, r0=var1462, java.lang.Exception=var3833, $r7=var478, com.alibaba.fastjson2.JSONException=var3415, $r8=var1808, $r9=var3925, $r11=var3383, com.alibaba.fastjson2.reader.FieldReader=var1614, $r10=var1552, $r12=var880, $r13=var1237, $r14=var1572, java.lang.Throwable=var2353}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerMethodReadOnly;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerMethodReadOnly: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerMethodReadOnly: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2