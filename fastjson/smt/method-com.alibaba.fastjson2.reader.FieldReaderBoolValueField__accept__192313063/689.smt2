(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1052 0)
(declare-sort var1302 0)
(declare-sort var2403 0)
(declare-sort var3606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2403-init () var2403)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3606) String)
(declare-fun cast-from-var1052-to-var3606 (var1052) var3606)
(declare-fun getClass/1258963082 (var1302) ClassObject)
(declare-fun append/-1031950772 (String var1302) String)
(declare-fun cast-from-ClassObject-to-var1302 (ClassObject) var1302)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2403 String) void)
(declare-const null-var1052 var1052)
(declare-const null-var1302 var1302)
(declare-const var1138 var1052) ; Statement: r3 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolValueField 
(assert (not (= var1138 null-var1052)))
(declare-const var1724 var1302) ; Statement: r11 := @parameter0: java.lang.Object 
(assert (not (= var1724 null-var1302)))
(declare-const var3208 var1302) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3208 null-var1302)))
 ; Statement: if r0 != null goto $z0 = r0 instanceof java.lang.Boolean 
(assert (not (= var3208 null-var1302))) ; Cond: r0 != null 
(define-const var176 Bool false) ; Statement: $z0 = r0 instanceof java.lang.Boolean 
 ; Statement: if $z0 == 0 goto $r1 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var176 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3923 var2403 var2403-init) ; Statement: $r1 = new com.alibaba.fastjson2.JSONException 
(define-const var751 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var751)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var751!1 String)
(assert (= var751!1 ""))
(assert true)
(define-const var3575 String (append/672562846 var751!1 "set ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var751!2 String)
(assert (= var751!2 (str.++ var751!1 "set ")))
(define-const var3010 String (fieldName/-488737871 (cast-from-var1052-to-var3606 var1138))) ; Statement: $r4 = r3.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: java.lang.String fieldName> 
(assert true)
(define-const var2981 String (append/672562846 var3575 var3010)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3575!1 String)
(assert (= var3575!1 (str.++ var3575 var3010)))
(assert true)
(define-const var622 String (append/672562846 var2981 " error, type not support ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error, type not support ") 
(declare-const var2981!1 String)
(assert (= var2981!1 (str.++ var2981 " error, type not support ")))
(assert true)
(define-const var1342 ClassObject (getClass/1258963082 var3208)) ; Statement: $r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1648 String (append/-1031950772 var622 (cast-from-ClassObject-to-var1302 var1342))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var622!1 String)
(assert (str.prefixof var622 var622!1))
(assert true)
(define-const var3867 String (toString/-2075883882 var1648)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3923 var3867)) ; Statement: specialinvoke $r1.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var3923!1 var2403)
(declare-const var3867!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2403-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var1052-to-var3606=([com.alibaba.fastjson2.reader.FieldReaderBoolValueField], com.alibaba.fastjson2.reader.FieldReader), getClass/1258963082=([java.lang.Object], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1302=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1052=com.alibaba.fastjson2.reader.FieldReaderBoolValueField, var1138=r3, var1302=java.lang.Object, var1724=r11, var3208=r0, var176=$z0, var2403=com.alibaba.fastjson2.JSONException, var3923=$r1, var751=$r2, var3575=$r5, var3606=com.alibaba.fastjson2.reader.FieldReader, var3010=$r4, var2981=$r6, var622=$r8, var1342=$r7, var1648=$r9, var3867=$r10}
; {com.alibaba.fastjson2.reader.FieldReaderBoolValueField=var1052, r3=var1138, java.lang.Object=var1302, r11=var1724, r0=var3208, $z0=var176, com.alibaba.fastjson2.JSONException=var2403, $r1=var3923, $r2=var751, $r5=var3575, com.alibaba.fastjson2.reader.FieldReader=var3606, $r4=var3010, $r6=var2981, $r8=var622, $r7=var1342, $r9=var1648, $r10=var3867}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolValueField;	r11 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != null goto $z0 = r0 instanceof java.lang.Boolean;	$z0 = r0 instanceof java.lang.Boolean;	if $z0 == 0 goto $r1 = new com.alibaba.fastjson2.JSONException;	$r1 = new com.alibaba.fastjson2.JSONException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r4 = r3.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: java.lang.String fieldName>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error, type not support ");	$r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r1
;block_num 3