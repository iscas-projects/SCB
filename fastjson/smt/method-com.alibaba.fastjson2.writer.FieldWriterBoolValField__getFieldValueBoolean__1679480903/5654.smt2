(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3452 0)
(declare-sort var1430 0)
(declare-sort var3615 0)
(declare-sort var423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3615-init () var3615)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var423) String)
(declare-fun cast-from-var3452-to-var423 (var3452) var423)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3615 String) void)
(declare-const null-var3452 var3452)
(declare-const null-var1430 var1430)
(declare-const var679 var3452) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.FieldWriterBoolValField 
(assert (not (= var679 null-var3452)))
(declare-const var526 var1430) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var526 null-var1430)))
 ; Statement: if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterBoolValField: long fieldOffset> 
(assert (not (not (= var526 null-var1430)))) ; Negate: Cond: r0 != null  
(define-const var246 var3615 var3615-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var3552 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3552)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3552!1 String)
(assert (= var3552!1 ""))
(assert true)
(define-const var1246 String (append/672562846 var3552!1 "field.get error, ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ") 
(declare-const var3552!2 String)
(assert (= var3552!2 (str.++ var3552!1 "field.get error, ")))
(define-const var1654 String (fieldName/-2048851183 (cast-from-var3452-to-var423 var679))) ; Statement: $r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterBoolValField: java.lang.String fieldName> 
(assert true)
(define-const var1937 String (append/672562846 var1246 var1654)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1246!1 String)
(assert (= var1246!1 (str.++ var1246 var1654)))
(assert true)
(define-const var3097 String (toString/-2075883882 var1937)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var246 var3097)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var246!1 var3615)
(declare-const var3097!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3615-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), cast-from-var3452-to-var423=([com.alibaba.fastjson2.writer.FieldWriterBoolValField], com.alibaba.fastjson2.writer.FieldWriter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3452=com.alibaba.fastjson2.writer.FieldWriterBoolValField, var679=r1, var1430=java.lang.Object, var526=r0, var3615=com.alibaba.fastjson2.JSONException, var246=$r4, var3552=$r5, var1246=$r7, var423=com.alibaba.fastjson2.writer.FieldWriter, var1654=$r6, var1937=$r8, var3097=$r9}
; {com.alibaba.fastjson2.writer.FieldWriterBoolValField=var3452, r1=var679, java.lang.Object=var1430, r0=var526, com.alibaba.fastjson2.JSONException=var3615, $r4=var246, $r5=var3552, $r7=var1246, com.alibaba.fastjson2.writer.FieldWriter=var423, $r6=var1654, $r8=var1937, $r9=var3097}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.FieldWriterBoolValField;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterBoolValField: long fieldOffset>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ");	$r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterBoolValField: java.lang.String fieldName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2