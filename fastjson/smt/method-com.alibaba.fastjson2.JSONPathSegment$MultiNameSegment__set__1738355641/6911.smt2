(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3685 0)
(declare-sort var3355 0)
(declare-sort var2997 0)
(declare-sort var2695 0)
(declare-sort var2315 0)
(declare-sort var1399 0)
(declare-sort var3026 0)
(declare-sort var3881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var3355) var3355)
(declare-fun root/1029745399 (var3355) var2997)
(declare-fun path/1029745399 (var3355) var2695)
(declare-fun getReaderContext/-285523830 (var2695) var2315)
(declare-fun provider/-445774891 (var2315) var1399)
(declare-fun getClass/1258963082 (var2997) ClassObject)
(declare-fun getObjectReader/855364031 (var1399 ClassObject) var3026)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var3881-init () var3881)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var3685-to-var2997 (var3685) var2997)
(declare-fun append/-1031950772 (String var2997) String)
(declare-fun cast-from-ClassObject-to-var2997 (ClassObject) var2997)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3881 String) void)
(declare-const null-var3685 var3685)
(declare-const null-var3355 var3355)
(declare-const null-var2997 var2997)
(declare-const var1331 var3685) ; Statement: r9 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment 
(assert (not (= var1331 null-var3685)))
(declare-const var2341 var3355) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var2341 null-var3355)))
(declare-const var2046 var2997) ; Statement: r15 := @parameter1: java.lang.Object 
(assert (not (= var2046 null-var2997)))
(define-const var2180 var3355 (parent/1029745399 var2341)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (not (= var2180 null-var3355)))) ; Negate: Cond: $r1 != null  
(define-const var2564 var2997 (root/1029745399 var2341)) ; Statement: $r16 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root> 
 ; Statement: goto [?= r3 = $r16] 
(assert true) ; Non Conditional
(define-const var3182 var2997 var2564) ; Statement: r3 = $r16 
(define-const var1559 Bool false) ; Statement: $z0 = $r16 instanceof java.util.Map 
 ; Statement: if $z0 == 0 goto $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path> 
(assert (= (ite var1559 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3487 var2695 (path/1029745399 var2341)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path> 
(assert true)
(define-const var2047 var2315 (getReaderContext/-285523830 var3487)) ; Statement: $r5 = virtualinvoke $r4.<com.alibaba.fastjson2.JSONPath: com.alibaba.fastjson2.JSONReader$Context getReaderContext()>() 
(define-const var3175 var1399 (provider/-445774891 var2047)) ; Statement: r20 = $r5.<com.alibaba.fastjson2.JSONReader$Context: com.alibaba.fastjson2.reader.ObjectReaderProvider provider> 
(assert true)
(define-const var3188 ClassObject (getClass/1258963082 var2564)) ; Statement: $r6 = virtualinvoke $r16.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1388 var3026 (getObjectReader/855364031 var3175 (cast-from-ClassObject-to-ClassObject var3188))) ; Statement: r21 = virtualinvoke r20.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.reader.ObjectReader getObjectReader(java.lang.reflect.Type)>($r6) 
(define-const var3975 Bool true) ; Statement: $z1 = r21 instanceof com.alibaba.fastjson2.reader.ObjectReaderBean 
 ; Statement: if $z1 == 0 goto $r7 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var3975 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1445 var3881 var3881-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var531 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var531)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var531!1 String)
(assert (= var531!1 ""))
(assert true)
(define-const var1144 String (append/672562846 var531!1 "UnsupportedOperation ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var531!2 String)
(assert (= var531!2 (str.++ var531!1 "UnsupportedOperation ")))
(assert true)
(define-const var439 ClassObject (getClass/1258963082 (cast-from-var3685-to-var2997 var1331))) ; Statement: $r10 = virtualinvoke r9.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var836 String (append/-1031950772 var1144 (cast-from-ClassObject-to-var2997 var439))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var1144!1 String)
(assert (str.prefixof var1144 var1144!1))
(assert true)
(define-const var2504 String (toString/-2075883882 var836)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1445 var2504)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13) 

(declare-const var1445!1 var3881)
(declare-const var2504!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), root/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), path/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath), getReaderContext/-285523830=([com.alibaba.fastjson2.JSONPath], com.alibaba.fastjson2.JSONReader$Context), provider/-445774891=([com.alibaba.fastjson2.JSONReader$Context], com.alibaba.fastjson2.reader.ObjectReaderProvider), getClass/1258963082=([java.lang.Object], java.lang.Class), getObjectReader/855364031=([com.alibaba.fastjson2.reader.ObjectReaderProvider, java.lang.reflect.Type], com.alibaba.fastjson2.reader.ObjectReader), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var3881-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var3685-to-var2997=([com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2997=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3685=com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment, var1331=r9, var3355=com.alibaba.fastjson2.JSONPath$Context, var2341=r0, var2997=java.lang.Object, var2046=r15, var2180=$r1, var2564=$r16, var3182=r3, var1559=$z0, var2695=com.alibaba.fastjson2.JSONPath, var3487=$r4, var2315=com.alibaba.fastjson2.JSONReader$Context, var2047=$r5, var1399=com.alibaba.fastjson2.reader.ObjectReaderProvider, var3175=r20, var3188=$r6, var3026=com.alibaba.fastjson2.reader.ObjectReader, var1388=r21, var3975=$z1, var3881=com.alibaba.fastjson2.JSONException, var1445=$r7, var531=$r8, var1144=$r11, var439=$r10, var836=$r12, var2504=$r13}
; {com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment=var3685, r9=var1331, com.alibaba.fastjson2.JSONPath$Context=var3355, r0=var2341, java.lang.Object=var2997, r15=var2046, $r1=var2180, $r16=var2564, r3=var3182, $z0=var1559, com.alibaba.fastjson2.JSONPath=var2695, $r4=var3487, com.alibaba.fastjson2.JSONReader$Context=var2315, $r5=var2047, com.alibaba.fastjson2.reader.ObjectReaderProvider=var1399, r20=var3175, $r6=var3188, com.alibaba.fastjson2.reader.ObjectReader=var3026, r21=var1388, $z1=var3975, com.alibaba.fastjson2.JSONException=var3881, $r7=var1445, $r8=var531, $r11=var1144, $r10=var439, $r12=var836, $r13=var2504}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r15 := @parameter1: java.lang.Object;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r16 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root>;	goto [?= r3 = $r16];	r3 = $r16;	$z0 = $r16 instanceof java.util.Map;	if $z0 == 0 goto $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path>;	$r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path>;	$r5 = virtualinvoke $r4.<com.alibaba.fastjson2.JSONPath: com.alibaba.fastjson2.JSONReader$Context getReaderContext()>();	r20 = $r5.<com.alibaba.fastjson2.JSONReader$Context: com.alibaba.fastjson2.reader.ObjectReaderProvider provider>;	$r6 = virtualinvoke $r16.<java.lang.Object: java.lang.Class getClass()>();	r21 = virtualinvoke r20.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.reader.ObjectReader getObjectReader(java.lang.reflect.Type)>($r6);	$z1 = r21 instanceof com.alibaba.fastjson2.reader.ObjectReaderBean;	if $z1 == 0 goto $r7 = new com.alibaba.fastjson2.JSONException;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r10 = virtualinvoke r9.<java.lang.Object: java.lang.Class getClass()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13);	throw $r7
;block_num 5