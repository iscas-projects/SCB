(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3907 0)
(declare-sort var2609 0)
(declare-sort var3884 0)
(declare-sort var149 0)
(declare-sort var2554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var2609) var2609)
(declare-fun root/1029745399 (var2609) var149)
(declare-fun var2554-init () var2554)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var149) ClassObject)
(declare-fun cast-from-var3907-to-var149 (var3907) var149)
(declare-fun append/-1031950772 (String var149) String)
(declare-fun cast-from-ClassObject-to-var149 (ClassObject) var149)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2554 String) void)
(declare-const null-var3907 var3907)
(declare-const null-var2609 var2609)
(declare-const null-var3884 var3884)
(declare-const null-var149 var149)
(declare-const var3856 var3907) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment 
(assert (not (= var3856 null-var3907)))
(declare-const var1014 var2609) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var1014 null-var2609)))
(declare-const var1404 var3884) ; Statement: r11 := @parameter1: java.util.function.BiFunction 
(assert (not (= var1404 null-var3884)))
(define-const var2702 var2609 (parent/1029745399 var1014)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (not (= var2702 null-var2609)))) ; Negate: Cond: $r1 != null  
(define-const var1118 var149 (root/1029745399 var1014)) ; Statement: $r12 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root> 
 ; Statement: goto [?= r3 = $r12] 
(assert true) ; Non Conditional
(define-const var2607 var149 var1118) ; Statement: r3 = $r12 
(define-const var987 Bool false) ; Statement: $z0 = $r12 instanceof java.util.List 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var987 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (= var1118 null-var149)) ; Cond: $r12 == null 
(define-const var3607 var2554 var2554-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var429 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var429)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var429!1 String)
(assert (= var429!1 ""))
(assert true)
(define-const var645 String (append/672562846 var429!1 "UnsupportedOperation ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var429!2 String)
(assert (= var429!2 (str.++ var429!1 "UnsupportedOperation ")))
(assert true)
(define-const var1898 ClassObject (getClass/1258963082 (cast-from-var3907-to-var149 var3856))) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3877 String (append/-1031950772 var645 (cast-from-ClassObject-to-var149 var1898))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var645!1 String)
(assert (str.prefixof var645 var645!1))
(assert true)
(define-const var238 String (toString/-2075883882 var3877)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3607 var238)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var3607!1 var2554)
(declare-const var238!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), root/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), var2554-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3907-to-var149=([com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var149=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3907=com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment, var3856=r6, var2609=com.alibaba.fastjson2.JSONPath$Context, var1014=r0, var3884=java.util.function.BiFunction, var1404=r11, var2702=$r1, var149=java.lang.Object, var1118=$r12, var2607=r3, var987=$z0, var2554=com.alibaba.fastjson2.JSONException, var3607=$r4, var429=$r5, var645=$r8, var1898=$r7, var3877=$r9, var238=$r10}
; {com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment=var3907, r6=var3856, com.alibaba.fastjson2.JSONPath$Context=var2609, r0=var1014, java.util.function.BiFunction=var3884, r11=var1404, $r1=var2702, java.lang.Object=var149, $r12=var1118, r3=var2607, $z0=var987, com.alibaba.fastjson2.JSONException=var2554, $r4=var3607, $r5=var429, $r8=var645, $r7=var1898, $r9=var3877, $r10=var238}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r11 := @parameter1: java.util.function.BiFunction;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r12 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root>;	goto [?= r3 = $r12];	r3 = $r12;	$z0 = $r12 instanceof java.util.List;	if $z0 == 0 goto (branch);	if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 5