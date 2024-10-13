(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1671 0)
(declare-sort var54 0)
(declare-sort var609 0)
(declare-sort var3275 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var609-init () var609)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var3275) String)
(declare-fun cast-from-var1671-to-var3275 (var1671) var3275)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var609 String) void)
(declare-const null-var1671 var1671)
(declare-const null-var54 var54)
(declare-const var246 var1671) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.FieldWriterCharValField 
(assert (not (= var246 null-var1671)))
(declare-const var2981 var54) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2981 null-var54)))
 ; Statement: if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterCharValField: long fieldOffset> 
(assert (not (not (= var2981 null-var54)))) ; Negate: Cond: r0 != null  
(define-const var2661 var609 var609-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var50 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var50)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var50!1 String)
(assert (= var50!1 ""))
(assert true)
(define-const var2079 String (append/672562846 var50!1 "field.get error, ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ") 
(declare-const var50!2 String)
(assert (= var50!2 (str.++ var50!1 "field.get error, ")))
(define-const var2060 String (fieldName/-2048851183 (cast-from-var1671-to-var3275 var246))) ; Statement: $r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterCharValField: java.lang.String fieldName> 
(assert true)
(define-const var3080 String (append/672562846 var2079 var2060)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2079!1 String)
(assert (= var2079!1 (str.++ var2079 var2060)))
(assert true)
(define-const var781 String (toString/-2075883882 var3080)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2661 var781)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var2661!1 var609)
(declare-const var781!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var609-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), cast-from-var1671-to-var3275=([com.alibaba.fastjson2.writer.FieldWriterCharValField], com.alibaba.fastjson2.writer.FieldWriter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1671=com.alibaba.fastjson2.writer.FieldWriterCharValField, var246=r1, var54=java.lang.Object, var2981=r0, var609=com.alibaba.fastjson2.JSONException, var2661=$r4, var50=$r5, var2079=$r7, var3275=com.alibaba.fastjson2.writer.FieldWriter, var2060=$r6, var3080=$r8, var781=$r9}
; {com.alibaba.fastjson2.writer.FieldWriterCharValField=var1671, r1=var246, java.lang.Object=var54, r0=var2981, com.alibaba.fastjson2.JSONException=var609, $r4=var2661, $r5=var50, $r7=var2079, com.alibaba.fastjson2.writer.FieldWriter=var3275, $r6=var2060, $r8=var3080, $r9=var781}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.FieldWriterCharValField;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterCharValField: long fieldOffset>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ");	$r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterCharValField: java.lang.String fieldName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2