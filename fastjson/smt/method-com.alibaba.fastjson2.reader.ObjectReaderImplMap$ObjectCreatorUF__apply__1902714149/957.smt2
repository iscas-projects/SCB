(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1841 0)
(declare-sort var1801 0)
(declare-sort var2952 0)
(declare-sort var2910 0)
(declare-sort var3949 0)
(declare-sort var2194 0)
(declare-sort var2549 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun objectClass/-641966168 (var1841) ClassObject)
(declare-fun var2194-init () var2194)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2194 String var2549) void)
(declare-fun cast-from-var3949-to-var2549 (var3949) var2549)
(declare-const null-var1841 var1841)
(declare-const null-var1801 var1801)
(declare-const var2910-UNSAFE var2952)
(declare-const null-var3949 var3949)
(declare-const var2607 var1841) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMap$ObjectCreatorUF 
(assert (not (= var2607 null-var1841)))
(declare-const var2276 var1801) ; Statement: r15 := @parameter0: java.lang.Object 
(assert (not (= var2276 null-var1801)))
 ; Statement: if r15 != null goto $r2 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE> 
(assert (not (= var2276 null-var1801))) ; Cond: r15 != null 
(define-const var1617 var2952 var2910-UNSAFE) ; Statement: $r2 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE> 
(define-const var3010 ClassObject (objectClass/-641966168 var2607)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplMap$ObjectCreatorUF: java.lang.Class objectClass> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3272 var3949) ; Statement: $r6 := @caughtexception 
(assert (not (= var3272 null-var3949)))
(define-const var1487 var2194 var2194-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var477 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var477)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var477!1 String)
(assert (= var477!1 ""))
(assert true)
(define-const var110 String (append/672562846 var477!1 "create ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create ") 
(declare-const var477!2 String)
(assert (= var477!2 (str.++ var477!1 "create ")))
(define-const var2850 ClassObject (objectClass/-641966168 var2607)) ; Statement: $r9 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplMap$ObjectCreatorUF: java.lang.Class objectClass> 
(assert true)
(define-const var3975 String (getName/-1958580599 var2850)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1827 String (append/672562846 var110 var3975)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var110!1 String)
(assert (= var110!1 (str.++ var110 var3975)))
(assert true)
(define-const var537 String (append/672562846 var1827 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1827!1 String)
(assert (= var1827!1 (str.++ var1827 " error")))
(assert true)
(define-const var2303 String (toString/-2075883882 var537)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1487 var2303 (cast-from-var3949-to-var2549 var3272))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6) 

(declare-const var1487!1 var2194)
(declare-const var2303!1 String)
(declare-const var3272!1 var3949)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {objectClass/-641966168=([com.alibaba.fastjson2.reader.ObjectReaderImplMap$ObjectCreatorUF], java.lang.Class), var2194-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3949-to-var2549=([java.lang.InstantiationException], java.lang.Throwable)}
; {var1841=com.alibaba.fastjson2.reader.ObjectReaderImplMap$ObjectCreatorUF, var2607=r0, var1801=java.lang.Object, var2276=r15, var2952=sun.misc.Unsafe, var2910=com.alibaba.fastjson2.util.JDKUtils, var1617=$r2, var3010=$r1, var3949=java.lang.InstantiationException, var3272=$r6, var2194=com.alibaba.fastjson2.JSONException, var1487=$r7, var477=$r8, var110=$r11, var2850=$r9, var3975=$r10, var1827=$r12, var537=$r13, var2303=$r14, var2549=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.ObjectReaderImplMap$ObjectCreatorUF=var1841, r0=var2607, java.lang.Object=var1801, r15=var2276, sun.misc.Unsafe=var2952, com.alibaba.fastjson2.util.JDKUtils=var2910, $r2=var1617, $r1=var3010, java.lang.InstantiationException=var3949, $r6=var3272, com.alibaba.fastjson2.JSONException=var2194, $r7=var1487, $r8=var477, $r11=var110, $r9=var2850, $r10=var3975, $r12=var1827, $r13=var537, $r14=var2303, java.lang.Throwable=var2549}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMap$ObjectCreatorUF;	r15 := @parameter0: java.lang.Object;	if r15 != null goto $r2 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE>;	$r2 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE>;	$r1 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplMap$ObjectCreatorUF: java.lang.Class objectClass>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create ");	$r9 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplMap$ObjectCreatorUF: java.lang.Class objectClass>;	$r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6);	throw $r7
;block_num 3