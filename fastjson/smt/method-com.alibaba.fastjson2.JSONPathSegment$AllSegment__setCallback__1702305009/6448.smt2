(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1857 0)
(declare-sort var2971 0)
(declare-sort var3670 0)
(declare-sort var340 0)
(declare-sort var521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var2971) var2971)
(declare-fun root/1029745399 (var2971) var340)
(declare-fun var521-init () var521)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var340) ClassObject)
(declare-fun cast-from-var1857-to-var340 (var1857) var340)
(declare-fun append/-1031950772 (String var340) String)
(declare-fun cast-from-ClassObject-to-var340 (ClassObject) var340)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var521 String) void)
(declare-const null-var1857 var1857)
(declare-const null-var2971 var2971)
(declare-const null-var3670 var3670)
(declare-const null-var340 var340)
(declare-const var1594 var1857) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONPathSegment$AllSegment 
(assert (not (= var1594 null-var1857)))
(declare-const var1623 var2971) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var1623 null-var2971)))
(declare-const var1667 var3670) ; Statement: r12 := @parameter1: java.util.function.BiFunction 
(assert (not (= var1667 null-var3670)))
(define-const var458 var2971 (parent/1029745399 var1623)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (not (= var458 null-var2971)))) ; Negate: Cond: $r1 != null  
(define-const var3465 var340 (root/1029745399 var1623)) ; Statement: $r16 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root> 
 ; Statement: goto [?= r3 = $r16] 
(assert true) ; Non Conditional
(define-const var2626 var340 var3465) ; Statement: r3 = $r16 
(define-const var1973 Bool false) ; Statement: $z0 = $r16 instanceof java.util.Map 
 ; Statement: if $z0 == 0 goto $z1 = $r16 instanceof java.util.List 
(assert (= (ite var1973 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2966 Bool false) ; Statement: $z1 = $r16 instanceof java.util.List 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var2966 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if $r16 == null goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (= var3465 null-var340)) ; Cond: $r16 == null 
(define-const var54 var521 var521-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var2158 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2158)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2158!1 String)
(assert (= var2158!1 ""))
(assert true)
(define-const var3793 String (append/672562846 var2158!1 "UnsupportedOperation ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var2158!2 String)
(assert (= var2158!2 (str.++ var2158!1 "UnsupportedOperation ")))
(assert true)
(define-const var2641 ClassObject (getClass/1258963082 (cast-from-var1857-to-var340 var1594))) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2522 String (append/-1031950772 var3793 (cast-from-ClassObject-to-var340 var2641))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var3793!1 String)
(assert (str.prefixof var3793 var3793!1))
(assert true)
(define-const var1803 String (toString/-2075883882 var2522)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var54 var1803)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var54!1 var521)
(declare-const var1803!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), root/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), var521-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1857-to-var340=([com.alibaba.fastjson2.JSONPathSegment$AllSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var340=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1857=com.alibaba.fastjson2.JSONPathSegment$AllSegment, var1594=r6, var2971=com.alibaba.fastjson2.JSONPath$Context, var1623=r0, var3670=java.util.function.BiFunction, var1667=r12, var458=$r1, var340=java.lang.Object, var3465=$r16, var2626=r3, var1973=$z0, var2966=$z1, var521=com.alibaba.fastjson2.JSONException, var54=$r4, var2158=$r5, var3793=$r8, var2641=$r7, var2522=$r9, var1803=$r10}
; {com.alibaba.fastjson2.JSONPathSegment$AllSegment=var1857, r6=var1594, com.alibaba.fastjson2.JSONPath$Context=var2971, r0=var1623, java.util.function.BiFunction=var3670, r12=var1667, $r1=var458, java.lang.Object=var340, $r16=var3465, r3=var2626, $z0=var1973, $z1=var2966, com.alibaba.fastjson2.JSONException=var521, $r4=var54, $r5=var2158, $r8=var3793, $r7=var2641, $r9=var2522, $r10=var1803}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.alibaba.fastjson2.JSONPathSegment$AllSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r12 := @parameter1: java.util.function.BiFunction;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r16 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root>;	goto [?= r3 = $r16];	r3 = $r16;	$z0 = $r16 instanceof java.util.Map;	if $z0 == 0 goto $z1 = $r16 instanceof java.util.List;	$z1 = $r16 instanceof java.util.List;	if $z1 == 0 goto (branch);	if $r16 == null goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 6