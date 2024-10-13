(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3360 0)
(declare-sort var3657 0)
(declare-sort var281 0)
(declare-sort var3577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var281-init () var281)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var3577) String)
(declare-fun cast-from-var3360-to-var3577 (var3360) var3577)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var281 String) void)
(declare-const null-var3360 var3360)
(declare-const null-var3657 var3657)
(declare-const var1466 var3360) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.FieldWriterInt8ValField 
(assert (not (= var1466 null-var3360)))
(declare-const var2682 var3657) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2682 null-var3657)))
 ; Statement: if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt8ValField: long fieldOffset> 
(assert (not (not (= var2682 null-var3657)))) ; Negate: Cond: r0 != null  
(define-const var897 var281 var281-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var3050 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3050)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3050!1 String)
(assert (= var3050!1 ""))
(assert true)
(define-const var3474 String (append/672562846 var3050!1 "field.get error, ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ") 
(declare-const var3050!2 String)
(assert (= var3050!2 (str.++ var3050!1 "field.get error, ")))
(define-const var318 String (fieldName/-2048851183 (cast-from-var3360-to-var3577 var1466))) ; Statement: $r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt8ValField: java.lang.String fieldName> 
(assert true)
(define-const var2528 String (append/672562846 var3474 var318)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3474!1 String)
(assert (= var3474!1 (str.++ var3474 var318)))
(assert true)
(define-const var860 String (toString/-2075883882 var2528)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var897 var860)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var897!1 var281)
(declare-const var860!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var281-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), cast-from-var3360-to-var3577=([com.alibaba.fastjson2.writer.FieldWriterInt8ValField], com.alibaba.fastjson2.writer.FieldWriter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3360=com.alibaba.fastjson2.writer.FieldWriterInt8ValField, var1466=r1, var3657=java.lang.Object, var2682=r0, var281=com.alibaba.fastjson2.JSONException, var897=$r4, var3050=$r5, var3474=$r7, var3577=com.alibaba.fastjson2.writer.FieldWriter, var318=$r6, var2528=$r8, var860=$r9}
; {com.alibaba.fastjson2.writer.FieldWriterInt8ValField=var3360, r1=var1466, java.lang.Object=var3657, r0=var2682, com.alibaba.fastjson2.JSONException=var281, $r4=var897, $r5=var3050, $r7=var3474, com.alibaba.fastjson2.writer.FieldWriter=var3577, $r6=var318, $r8=var2528, $r9=var860}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.FieldWriterInt8ValField;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt8ValField: long fieldOffset>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ");	$r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt8ValField: java.lang.String fieldName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2