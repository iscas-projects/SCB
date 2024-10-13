(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3057 0)
(declare-sort var3479 0)
(declare-sort var839 0)
(declare-sort var1856 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var839-init () var839)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var1856) String)
(declare-fun cast-from-var3057-to-var1856 (var3057) var1856)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var839 String) void)
(declare-const null-var3057 var3057)
(declare-const null-var3479 var3479)
(declare-const var934 var3057) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.FieldWriterInt32Val 
(assert (not (= var934 null-var3057)))
(declare-const var2571 var3479) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2571 null-var3479)))
 ; Statement: if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt32Val: long fieldOffset> 
(assert (not (not (= var2571 null-var3479)))) ; Negate: Cond: r0 != null  
(define-const var3431 var839 var839-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var3272 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3272)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3272!1 String)
(assert (= var3272!1 ""))
(assert true)
(define-const var3664 String (append/672562846 var3272!1 "field.get error, ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ") 
(declare-const var3272!2 String)
(assert (= var3272!2 (str.++ var3272!1 "field.get error, ")))
(define-const var2622 String (fieldName/-2048851183 (cast-from-var3057-to-var1856 var934))) ; Statement: $r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt32Val: java.lang.String fieldName> 
(assert true)
(define-const var1820 String (append/672562846 var3664 var2622)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3664!1 String)
(assert (= var3664!1 (str.++ var3664 var2622)))
(assert true)
(define-const var544 String (toString/-2075883882 var1820)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3431 var544)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var3431!1 var839)
(declare-const var544!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var839-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), cast-from-var3057-to-var1856=([com.alibaba.fastjson2.writer.FieldWriterInt32Val], com.alibaba.fastjson2.writer.FieldWriter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3057=com.alibaba.fastjson2.writer.FieldWriterInt32Val, var934=r1, var3479=java.lang.Object, var2571=r0, var839=com.alibaba.fastjson2.JSONException, var3431=$r4, var3272=$r5, var3664=$r7, var1856=com.alibaba.fastjson2.writer.FieldWriter, var2622=$r6, var1820=$r8, var544=$r9}
; {com.alibaba.fastjson2.writer.FieldWriterInt32Val=var3057, r1=var934, java.lang.Object=var3479, r0=var2571, com.alibaba.fastjson2.JSONException=var839, $r4=var3431, $r5=var3272, $r7=var3664, com.alibaba.fastjson2.writer.FieldWriter=var1856, $r6=var2622, $r8=var1820, $r9=var544}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.FieldWriterInt32Val;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt32Val: long fieldOffset>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ");	$r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt32Val: java.lang.String fieldName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2