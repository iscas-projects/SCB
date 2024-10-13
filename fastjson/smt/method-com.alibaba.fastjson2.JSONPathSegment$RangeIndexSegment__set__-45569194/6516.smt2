(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2284 0)
(declare-sort var2327 0)
(declare-sort var862 0)
(declare-sort var1864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var2327) var2327)
(declare-fun value/1029745399 (var2327) var862)
(declare-fun var1864-init () var1864)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var862) ClassObject)
(declare-fun cast-from-var2284-to-var862 (var2284) var862)
(declare-fun append/-1031950772 (String var862) String)
(declare-fun cast-from-ClassObject-to-var862 (ClassObject) var862)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1864 String) void)
(declare-const null-var2284 var2284)
(declare-const null-var2327 var2327)
(declare-const null-var862 var862)
(declare-const var1003 var2284) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment 
(assert (not (= var1003 null-var2284)))
(declare-const var1822 var2327) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var1822 null-var2327)))
(declare-const var3459 var862) ; Statement: r11 := @parameter1: java.lang.Object 
(assert (not (= var3459 null-var862)))
(define-const var2269 var2327 (parent/1029745399 var1822)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (= var2269 null-var2327))) ; Cond: $r1 != null 
(define-const var2118 var2327 (parent/1029745399 var1822)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(define-const var3468 var862 (value/1029745399 var2118)) ; Statement: $r12 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value> 
(assert true) ; Non Conditional
(define-const var2479 var862 var3468) ; Statement: r3 = $r12 
(define-const var3678 Bool false) ; Statement: $z0 = $r12 instanceof java.util.List 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3678 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (= var3468 null-var862)) ; Cond: $r12 == null 
(define-const var27 var1864 var1864-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var1921 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1921)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1921!1 String)
(assert (= var1921!1 ""))
(assert true)
(define-const var2449 String (append/672562846 var1921!1 "UnsupportedOperation ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var1921!2 String)
(assert (= var1921!2 (str.++ var1921!1 "UnsupportedOperation ")))
(assert true)
(define-const var3486 ClassObject (getClass/1258963082 (cast-from-var2284-to-var862 var1003))) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1276 String (append/-1031950772 var2449 (cast-from-ClassObject-to-var862 var3486))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var2449!1 String)
(assert (str.prefixof var2449 var2449!1))
(assert true)
(define-const var40 String (toString/-2075883882 var1276)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var27 var40)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var27!1 var1864)
(declare-const var40!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), value/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), var1864-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2284-to-var862=([com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var862=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2284=com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment, var1003=r6, var2327=com.alibaba.fastjson2.JSONPath$Context, var1822=r0, var862=java.lang.Object, var3459=r11, var2269=$r1, var2118=$r2, var3468=$r12, var2479=r3, var3678=$z0, var1864=com.alibaba.fastjson2.JSONException, var27=$r4, var1921=$r5, var2449=$r8, var3486=$r7, var1276=$r9, var40=$r10}
; {com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment=var2284, r6=var1003, com.alibaba.fastjson2.JSONPath$Context=var2327, r0=var1822, java.lang.Object=var862, r11=var3459, $r1=var2269, $r2=var2118, $r12=var3468, r3=var2479, $z0=var3678, com.alibaba.fastjson2.JSONException=var1864, $r4=var27, $r5=var1921, $r8=var2449, $r7=var3486, $r9=var1276, $r10=var40}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r11 := @parameter1: java.lang.Object;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r12 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value>;	r3 = $r12;	$z0 = $r12 instanceof java.util.List;	if $z0 == 0 goto (branch);	if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 5