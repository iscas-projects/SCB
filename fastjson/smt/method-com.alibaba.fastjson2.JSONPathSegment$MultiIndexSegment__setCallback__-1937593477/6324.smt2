(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3292 0)
(declare-sort var3914 0)
(declare-sort var3649 0)
(declare-sort var2712 0)
(declare-sort var3642 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var3914) var3914)
(declare-fun value/1029745399 (var3914) var2712)
(declare-fun var3642-init () var3642)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2712) ClassObject)
(declare-fun cast-from-var3292-to-var2712 (var3292) var2712)
(declare-fun append/-1031950772 (String var2712) String)
(declare-fun cast-from-ClassObject-to-var2712 (ClassObject) var2712)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3642 String) void)
(declare-const null-var3292 var3292)
(declare-const null-var3914 var3914)
(declare-const null-var3649 var3649)
(declare-const null-var2712 var2712)
(declare-const var296 var3292) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment 
(assert (not (= var296 null-var3292)))
(declare-const var2527 var3914) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var2527 null-var3914)))
(declare-const var1959 var3649) ; Statement: r11 := @parameter1: java.util.function.BiFunction 
(assert (not (= var1959 null-var3649)))
(define-const var2948 var3914 (parent/1029745399 var2527)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (= var2948 null-var3914))) ; Cond: $r1 != null 
(define-const var1486 var3914 (parent/1029745399 var2527)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(define-const var2457 var2712 (value/1029745399 var1486)) ; Statement: $r12 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value> 
(assert true) ; Non Conditional
(define-const var3236 var2712 var2457) ; Statement: r3 = $r12 
(define-const var1384 Bool false) ; Statement: $z0 = $r12 instanceof java.util.List 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1384 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (= var2457 null-var2712)) ; Cond: $r12 == null 
(define-const var583 var3642 var3642-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var1026 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1026)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1026!1 String)
(assert (= var1026!1 ""))
(assert true)
(define-const var825 String (append/672562846 var1026!1 "UnsupportedOperation ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var1026!2 String)
(assert (= var1026!2 (str.++ var1026!1 "UnsupportedOperation ")))
(assert true)
(define-const var3370 ClassObject (getClass/1258963082 (cast-from-var3292-to-var2712 var296))) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1414 String (append/-1031950772 var825 (cast-from-ClassObject-to-var2712 var3370))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var825!1 String)
(assert (str.prefixof var825 var825!1))
(assert true)
(define-const var3728 String (toString/-2075883882 var1414)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var583 var3728)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var583!1 var3642)
(declare-const var3728!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), value/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), var3642-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3292-to-var2712=([com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2712=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3292=com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment, var296=r6, var3914=com.alibaba.fastjson2.JSONPath$Context, var2527=r0, var3649=java.util.function.BiFunction, var1959=r11, var2948=$r1, var1486=$r2, var2712=java.lang.Object, var2457=$r12, var3236=r3, var1384=$z0, var3642=com.alibaba.fastjson2.JSONException, var583=$r4, var1026=$r5, var825=$r8, var3370=$r7, var1414=$r9, var3728=$r10}
; {com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment=var3292, r6=var296, com.alibaba.fastjson2.JSONPath$Context=var3914, r0=var2527, java.util.function.BiFunction=var3649, r11=var1959, $r1=var2948, $r2=var1486, java.lang.Object=var2712, $r12=var2457, r3=var3236, $z0=var1384, com.alibaba.fastjson2.JSONException=var3642, $r4=var583, $r5=var1026, $r8=var825, $r7=var3370, $r9=var1414, $r10=var3728}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r11 := @parameter1: java.util.function.BiFunction;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r12 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value>;	r3 = $r12;	$z0 = $r12 instanceof java.util.List;	if $z0 == 0 goto (branch);	if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 5