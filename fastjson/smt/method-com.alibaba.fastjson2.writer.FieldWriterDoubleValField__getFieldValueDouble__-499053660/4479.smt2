(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2266 0)
(declare-sort var1482 0)
(declare-sort var2507 0)
(declare-sort var3619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2507-init () var2507)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var3619) String)
(declare-fun cast-from-var2266-to-var3619 (var2266) var3619)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2507 String) void)
(declare-const null-var2266 var2266)
(declare-const null-var1482 var1482)
(declare-const var2716 var2266) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.FieldWriterDoubleValField 
(assert (not (= var2716 null-var2266)))
(declare-const var647 var1482) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var647 null-var1482)))
 ; Statement: if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterDoubleValField: long fieldOffset> 
(assert (not (not (= var647 null-var1482)))) ; Negate: Cond: r0 != null  
(define-const var1027 var2507 var2507-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var3733 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3733)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3733!1 String)
(assert (= var3733!1 ""))
(assert true)
(define-const var3265 String (append/672562846 var3733!1 "field.get error, ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ") 
(declare-const var3733!2 String)
(assert (= var3733!2 (str.++ var3733!1 "field.get error, ")))
(define-const var3834 String (fieldName/-2048851183 (cast-from-var2266-to-var3619 var2716))) ; Statement: $r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterDoubleValField: java.lang.String fieldName> 
(assert true)
(define-const var1995 String (append/672562846 var3265 var3834)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3265!1 String)
(assert (= var3265!1 (str.++ var3265 var3834)))
(assert true)
(define-const var3153 String (toString/-2075883882 var1995)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1027 var3153)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var1027!1 var2507)
(declare-const var3153!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2507-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), cast-from-var2266-to-var3619=([com.alibaba.fastjson2.writer.FieldWriterDoubleValField], com.alibaba.fastjson2.writer.FieldWriter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2266=com.alibaba.fastjson2.writer.FieldWriterDoubleValField, var2716=r1, var1482=java.lang.Object, var647=r0, var2507=com.alibaba.fastjson2.JSONException, var1027=$r4, var3733=$r5, var3265=$r7, var3619=com.alibaba.fastjson2.writer.FieldWriter, var3834=$r6, var1995=$r8, var3153=$r9}
; {com.alibaba.fastjson2.writer.FieldWriterDoubleValField=var2266, r1=var2716, java.lang.Object=var1482, r0=var647, com.alibaba.fastjson2.JSONException=var2507, $r4=var1027, $r5=var3733, $r7=var3265, com.alibaba.fastjson2.writer.FieldWriter=var3619, $r6=var3834, $r8=var1995, $r9=var3153}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.FieldWriterDoubleValField;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterDoubleValField: long fieldOffset>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ");	$r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterDoubleValField: java.lang.String fieldName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2