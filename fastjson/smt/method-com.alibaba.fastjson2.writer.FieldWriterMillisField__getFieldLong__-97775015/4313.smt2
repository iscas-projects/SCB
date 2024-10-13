(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2990 0)
(declare-sort var3457 0)
(declare-sort var1984 0)
(declare-sort var827 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1984-init () var1984)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var827) String)
(declare-fun cast-from-var2990-to-var827 (var2990) var827)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1984 String) void)
(declare-const null-var2990 var2990)
(declare-const null-var3457 var3457)
(declare-const var744 var2990) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.FieldWriterMillisField 
(assert (not (= var744 null-var2990)))
(declare-const var2406 var3457) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2406 null-var3457)))
 ; Statement: if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterMillisField: long fieldOffset> 
(assert (not (not (= var2406 null-var3457)))) ; Negate: Cond: r0 != null  
(define-const var3515 var1984 var1984-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var1315 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1315)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1315!1 String)
(assert (= var1315!1 ""))
(assert true)
(define-const var3215 String (append/672562846 var1315!1 "field.get error, ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ") 
(declare-const var1315!2 String)
(assert (= var1315!2 (str.++ var1315!1 "field.get error, ")))
(define-const var670 String (fieldName/-2048851183 (cast-from-var2990-to-var827 var744))) ; Statement: $r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterMillisField: java.lang.String fieldName> 
(assert true)
(define-const var656 String (append/672562846 var3215 var670)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3215!1 String)
(assert (= var3215!1 (str.++ var3215 var670)))
(assert true)
(define-const var3541 String (toString/-2075883882 var656)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3515 var3541)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var3515!1 var1984)
(declare-const var3541!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1984-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), cast-from-var2990-to-var827=([com.alibaba.fastjson2.writer.FieldWriterMillisField], com.alibaba.fastjson2.writer.FieldWriter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2990=com.alibaba.fastjson2.writer.FieldWriterMillisField, var744=r1, var3457=java.lang.Object, var2406=r0, var1984=com.alibaba.fastjson2.JSONException, var3515=$r4, var1315=$r5, var3215=$r7, var827=com.alibaba.fastjson2.writer.FieldWriter, var670=$r6, var656=$r8, var3541=$r9}
; {com.alibaba.fastjson2.writer.FieldWriterMillisField=var2990, r1=var744, java.lang.Object=var3457, r0=var2406, com.alibaba.fastjson2.JSONException=var1984, $r4=var3515, $r5=var1315, $r7=var3215, com.alibaba.fastjson2.writer.FieldWriter=var827, $r6=var670, $r8=var656, $r9=var3541}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.FieldWriterMillisField;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterMillisField: long fieldOffset>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ");	$r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterMillisField: java.lang.String fieldName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2