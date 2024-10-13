(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var939 0)
(declare-sort var3199 0)
(declare-sort var2803 0)
(declare-sort var190 0)
(declare-sort var2041 0)
(declare-sort var3557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var2041) var190)
(declare-fun cast-from-var939-to-var2041 (var939) var2041)
(declare-fun var3557-init () var3557)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2041) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3557 String) void)
(declare-const null-var939 var939)
(declare-const null-var3199 var3199)
(declare-const null-var2803 var2803)
(declare-const null-var190 var190)
(declare-const var3717 var939) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderLocalDateTime 
(assert (not (= var3717 null-var939)))
(declare-const var975 var3199) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var975 null-var3199)))
(declare-const var995 var2803) ; Statement: r3 := @parameter1: java.time.LocalDateTime 
(assert (not (= var995 null-var2803)))
(define-const var3103 var190 (schema/-488737871 (cast-from-var939-to-var2041 var3717))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderLocalDateTime: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto (branch) 
(assert (= var3103 null-var190)) ; Cond: $r1 == null 
 ; Statement: if r2 != null goto (branch) 
(assert (not (not (= var975 null-var3199)))) ; Negate: Cond: r2 != null  
(define-const var220 var3557 var3557-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var2139 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2139)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2139!1 String)
(assert (= var2139!1 ""))
(assert true)
(define-const var2624 String (append/672562846 var2139!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2139!2 String)
(assert (= var2139!2 (str.++ var2139!1 "set ")))
(define-const var979 String (fieldName/-488737871 (cast-from-var939-to-var2041 var3717))) ; Statement: $r9 = r0.<com.alibaba.fastjson2.reader.FieldReaderLocalDateTime: java.lang.String fieldName> 
(assert true)
(define-const var615 String (append/672562846 var2624 var979)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2624!1 String)
(assert (= var2624!1 (str.++ var2624 var979)))
(assert true)
(define-const var3322 String (append/672562846 var615 " error, object is null")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error, object is null") 
(declare-const var615!1 String)
(assert (= var615!1 (str.++ var615 " error, object is null")))
(assert true)
(define-const var911 String (toString/-2075883882 var3322)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var220 var911)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13) 

(declare-const var220!1 var3557)
(declare-const var911!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var939-to-var2041=([com.alibaba.fastjson2.reader.FieldReaderLocalDateTime], com.alibaba.fastjson2.reader.FieldReader), var3557-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var939=com.alibaba.fastjson2.reader.FieldReaderLocalDateTime, var3717=r0, var3199=java.lang.Object, var975=r2, var2803=java.time.LocalDateTime, var995=r3, var190=com.alibaba.fastjson2.schema.JSONSchema, var2041=com.alibaba.fastjson2.reader.FieldReader, var3103=$r1, var3557=com.alibaba.fastjson2.JSONException, var220=$r7, var2139=$r8, var2624=$r10, var979=$r9, var615=$r11, var3322=$r12, var911=$r13}
; {com.alibaba.fastjson2.reader.FieldReaderLocalDateTime=var939, r0=var3717, java.lang.Object=var3199, r2=var975, java.time.LocalDateTime=var2803, r3=var995, com.alibaba.fastjson2.schema.JSONSchema=var190, com.alibaba.fastjson2.reader.FieldReader=var2041, $r1=var3103, com.alibaba.fastjson2.JSONException=var3557, $r7=var220, $r8=var2139, $r10=var2624, $r9=var979, $r11=var615, $r12=var3322, $r13=var911}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderLocalDateTime;	r2 := @parameter0: java.lang.Object;	r3 := @parameter1: java.time.LocalDateTime;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderLocalDateTime: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto (branch);	if r2 != null goto (branch);	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r0.<com.alibaba.fastjson2.reader.FieldReaderLocalDateTime: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error, object is null");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13);	throw $r7
;block_num 3