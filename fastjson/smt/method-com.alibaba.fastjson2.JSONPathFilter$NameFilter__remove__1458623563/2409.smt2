(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2719 0)
(declare-sort var3485 0)
(declare-sort var497 0)
(declare-sort var256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var3485) var3485)
(declare-fun root/1029745399 (var3485) var497)
(declare-fun var256-init () var256)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var497) ClassObject)
(declare-fun cast-from-var2719-to-var497 (var2719) var497)
(declare-fun append/-1031950772 (String var497) String)
(declare-fun cast-from-ClassObject-to-var497 (ClassObject) var497)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var256 String) void)
(declare-const null-var2719 var2719)
(declare-const null-var3485 var3485)
(declare-const var2795 var2719) ; Statement: r5 := @this: com.alibaba.fastjson2.JSONPathFilter$NameFilter 
(assert (not (= var2795 null-var2719)))
(declare-const var2755 var3485) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var2755 null-var3485)))
(define-const var1097 var3485 (parent/1029745399 var2755)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (not (= var1097 null-var3485)))) ; Negate: Cond: $r1 != null  
(define-const var3721 var497 (root/1029745399 var2755)) ; Statement: $r12 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root> 
 ; Statement: goto [?= $z0 = $r12 instanceof java.util.List] 
(assert true) ; Non Conditional
(define-const var3896 Bool false) ; Statement: $z0 = $r12 instanceof java.util.List 
 ; Statement: if $z0 == 0 goto $r14 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var3896 1 0) 0)) ; Cond: $z0 == 0 
(define-const var336 var256 var256-init) ; Statement: $r14 = new com.alibaba.fastjson2.JSONException 
(define-const var3658 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3658)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3658!1 String)
(assert (= var3658!1 ""))
(assert true)
(define-const var2670 String (append/672562846 var3658!1 "UnsupportedOperation ")) ; Statement: $r7 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var3658!2 String)
(assert (= var3658!2 (str.++ var3658!1 "UnsupportedOperation ")))
(assert true)
(define-const var3351 ClassObject (getClass/1258963082 (cast-from-var2719-to-var497 var2795))) ; Statement: $r6 = virtualinvoke r5.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var963 String (append/-1031950772 var2670 (cast-from-ClassObject-to-var497 var3351))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var2670!1 String)
(assert (str.prefixof var2670 var2670!1))
(assert true)
(define-const var2815 String (toString/-2075883882 var963)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var336 var2815)) ; Statement: specialinvoke $r14.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var336!1 var256)
(declare-const var2815!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), root/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), var256-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2719-to-var497=([com.alibaba.fastjson2.JSONPathFilter$NameFilter], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var497=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2719=com.alibaba.fastjson2.JSONPathFilter$NameFilter, var2795=r5, var3485=com.alibaba.fastjson2.JSONPath$Context, var2755=r0, var1097=$r1, var497=java.lang.Object, var3721=$r12, var3896=$z0, var256=com.alibaba.fastjson2.JSONException, var336=$r14, var3658=$r13, var2670=$r7, var3351=$r6, var963=$r8, var2815=$r9}
; {com.alibaba.fastjson2.JSONPathFilter$NameFilter=var2719, r5=var2795, com.alibaba.fastjson2.JSONPath$Context=var3485, r0=var2755, $r1=var1097, java.lang.Object=var497, $r12=var3721, $z0=var3896, com.alibaba.fastjson2.JSONException=var256, $r14=var336, $r13=var3658, $r7=var2670, $r6=var3351, $r8=var963, $r9=var2815}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.alibaba.fastjson2.JSONPathFilter$NameFilter;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r12 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root>;	goto [?= $z0 = $r12 instanceof java.util.List];	$z0 = $r12 instanceof java.util.List;	if $z0 == 0 goto $r14 = new com.alibaba.fastjson2.JSONException;	$r14 = new com.alibaba.fastjson2.JSONException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r6 = virtualinvoke r5.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r14
;block_num 4