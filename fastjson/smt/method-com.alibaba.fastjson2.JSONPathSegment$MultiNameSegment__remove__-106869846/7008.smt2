(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3140 0)
(declare-sort var1709 0)
(declare-sort var3117 0)
(declare-sort var3659 0)
(declare-sort var3637 0)
(declare-sort var3686 0)
(declare-sort var1127 0)
(declare-sort var3675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var1709) var1709)
(declare-fun root/1029745399 (var1709) var3117)
(declare-fun path/1029745399 (var1709) var3659)
(declare-fun getReaderContext/-285523830 (var3659) var3637)
(declare-fun provider/-445774891 (var3637) var3686)
(declare-fun getClass/1258963082 (var3117) ClassObject)
(declare-fun getObjectReader/855364031 (var3686 ClassObject) var1127)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var3675-init () var3675)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var3140-to-var3117 (var3140) var3117)
(declare-fun append/-1031950772 (String var3117) String)
(declare-fun cast-from-ClassObject-to-var3117 (ClassObject) var3117)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3675 String) void)
(declare-const null-var3140 var3140)
(declare-const null-var1709 var1709)
(declare-const var2209 var3140) ; Statement: r9 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment 
(assert (not (= var2209 null-var3140)))
(declare-const var294 var1709) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var294 null-var1709)))
(define-const var348 var1709 (parent/1029745399 var294)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (not (= var348 null-var1709)))) ; Negate: Cond: $r1 != null  
(define-const var3725 var3117 (root/1029745399 var294)) ; Statement: $r16 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root> 
 ; Statement: goto [?= r3 = $r16] 
(assert true) ; Non Conditional
(define-const var542 var3117 var3725) ; Statement: r3 = $r16 
(define-const var306 Int 0) ; Statement: i1 = 0 
(define-const var2374 Bool false) ; Statement: $z0 = $r16 instanceof java.util.Map 
 ; Statement: if $z0 == 0 goto $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path> 
(assert (= (ite var2374 1 0) 0)) ; Cond: $z0 == 0 
(define-const var830 var3659 (path/1029745399 var294)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path> 
(assert true)
(define-const var1872 var3637 (getReaderContext/-285523830 var830)) ; Statement: $r5 = virtualinvoke $r4.<com.alibaba.fastjson2.JSONPath: com.alibaba.fastjson2.JSONReader$Context getReaderContext()>() 
(define-const var3771 var3686 (provider/-445774891 var1872)) ; Statement: r20 = $r5.<com.alibaba.fastjson2.JSONReader$Context: com.alibaba.fastjson2.reader.ObjectReaderProvider provider> 
(assert true)
(define-const var3120 ClassObject (getClass/1258963082 var3725)) ; Statement: $r6 = virtualinvoke $r16.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var913 var1127 (getObjectReader/855364031 var3771 (cast-from-ClassObject-to-ClassObject var3120))) ; Statement: r21 = virtualinvoke r20.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.reader.ObjectReader getObjectReader(java.lang.reflect.Type)>($r6) 
(define-const var1974 Bool true) ; Statement: $z1 = r21 instanceof com.alibaba.fastjson2.reader.ObjectReaderBean 
 ; Statement: if $z1 == 0 goto $r7 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var1974 1 0) 0)) ; Cond: $z1 == 0 
(define-const var715 var3675 var3675-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var3278 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3278)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3278!1 String)
(assert (= var3278!1 ""))
(assert true)
(define-const var2778 String (append/672562846 var3278!1 "UnsupportedOperation ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var3278!2 String)
(assert (= var3278!2 (str.++ var3278!1 "UnsupportedOperation ")))
(assert true)
(define-const var3097 ClassObject (getClass/1258963082 (cast-from-var3140-to-var3117 var2209))) ; Statement: $r10 = virtualinvoke r9.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3626 String (append/-1031950772 var2778 (cast-from-ClassObject-to-var3117 var3097))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var2778!1 String)
(assert (str.prefixof var2778 var2778!1))
(assert true)
(define-const var1716 String (toString/-2075883882 var3626)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var715 var1716)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13) 

(declare-const var715!1 var3675)
(declare-const var1716!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), root/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), path/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath), getReaderContext/-285523830=([com.alibaba.fastjson2.JSONPath], com.alibaba.fastjson2.JSONReader$Context), provider/-445774891=([com.alibaba.fastjson2.JSONReader$Context], com.alibaba.fastjson2.reader.ObjectReaderProvider), getClass/1258963082=([java.lang.Object], java.lang.Class), getObjectReader/855364031=([com.alibaba.fastjson2.reader.ObjectReaderProvider, java.lang.reflect.Type], com.alibaba.fastjson2.reader.ObjectReader), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var3675-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var3140-to-var3117=([com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3117=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3140=com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment, var2209=r9, var1709=com.alibaba.fastjson2.JSONPath$Context, var294=r0, var348=$r1, var3117=java.lang.Object, var3725=$r16, var542=r3, var306=i1, var2374=$z0, var3659=com.alibaba.fastjson2.JSONPath, var830=$r4, var3637=com.alibaba.fastjson2.JSONReader$Context, var1872=$r5, var3686=com.alibaba.fastjson2.reader.ObjectReaderProvider, var3771=r20, var3120=$r6, var1127=com.alibaba.fastjson2.reader.ObjectReader, var913=r21, var1974=$z1, var3675=com.alibaba.fastjson2.JSONException, var715=$r7, var3278=$r8, var2778=$r11, var3097=$r10, var3626=$r12, var1716=$r13}
; {com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment=var3140, r9=var2209, com.alibaba.fastjson2.JSONPath$Context=var1709, r0=var294, $r1=var348, java.lang.Object=var3117, $r16=var3725, r3=var542, i1=var306, $z0=var2374, com.alibaba.fastjson2.JSONPath=var3659, $r4=var830, com.alibaba.fastjson2.JSONReader$Context=var3637, $r5=var1872, com.alibaba.fastjson2.reader.ObjectReaderProvider=var3686, r20=var3771, $r6=var3120, com.alibaba.fastjson2.reader.ObjectReader=var1127, r21=var913, $z1=var1974, com.alibaba.fastjson2.JSONException=var3675, $r7=var715, $r8=var3278, $r11=var2778, $r10=var3097, $r12=var3626, $r13=var1716}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r16 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root>;	goto [?= r3 = $r16];	r3 = $r16;	i1 = 0;	$z0 = $r16 instanceof java.util.Map;	if $z0 == 0 goto $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path>;	$r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path>;	$r5 = virtualinvoke $r4.<com.alibaba.fastjson2.JSONPath: com.alibaba.fastjson2.JSONReader$Context getReaderContext()>();	r20 = $r5.<com.alibaba.fastjson2.JSONReader$Context: com.alibaba.fastjson2.reader.ObjectReaderProvider provider>;	$r6 = virtualinvoke $r16.<java.lang.Object: java.lang.Class getClass()>();	r21 = virtualinvoke r20.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.reader.ObjectReader getObjectReader(java.lang.reflect.Type)>($r6);	$z1 = r21 instanceof com.alibaba.fastjson2.reader.ObjectReaderBean;	if $z1 == 0 goto $r7 = new com.alibaba.fastjson2.JSONException;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r10 = virtualinvoke r9.<java.lang.Object: java.lang.Class getClass()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13);	throw $r7
;block_num 5