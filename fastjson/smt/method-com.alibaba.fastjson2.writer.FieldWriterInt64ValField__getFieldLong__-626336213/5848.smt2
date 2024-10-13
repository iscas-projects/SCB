(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3424 0)
(declare-sort var2816 0)
(declare-sort var1631 0)
(declare-sort var1245 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1631-init () var1631)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var1245) String)
(declare-fun cast-from-var3424-to-var1245 (var3424) var1245)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1631 String) void)
(declare-const null-var3424 var3424)
(declare-const null-var2816 var2816)
(declare-const var199 var3424) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.FieldWriterInt64ValField 
(assert (not (= var199 null-var3424)))
(declare-const var3853 var2816) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3853 null-var2816)))
 ; Statement: if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt64ValField: long fieldOffset> 
(assert (not (not (= var3853 null-var2816)))) ; Negate: Cond: r0 != null  
(define-const var3794 var1631 var1631-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var215 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var215)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var215!1 String)
(assert (= var215!1 ""))
(assert true)
(define-const var3571 String (append/672562846 var215!1 "field.get error, ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ") 
(declare-const var215!2 String)
(assert (= var215!2 (str.++ var215!1 "field.get error, ")))
(define-const var675 String (fieldName/-2048851183 (cast-from-var3424-to-var1245 var199))) ; Statement: $r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt64ValField: java.lang.String fieldName> 
(assert true)
(define-const var3211 String (append/672562846 var3571 var675)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3571!1 String)
(assert (= var3571!1 (str.++ var3571 var675)))
(assert true)
(define-const var771 String (toString/-2075883882 var3211)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3794 var771)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var3794!1 var1631)
(declare-const var771!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1631-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), cast-from-var3424-to-var1245=([com.alibaba.fastjson2.writer.FieldWriterInt64ValField], com.alibaba.fastjson2.writer.FieldWriter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3424=com.alibaba.fastjson2.writer.FieldWriterInt64ValField, var199=r1, var2816=java.lang.Object, var3853=r0, var1631=com.alibaba.fastjson2.JSONException, var3794=$r4, var215=$r5, var3571=$r7, var1245=com.alibaba.fastjson2.writer.FieldWriter, var675=$r6, var3211=$r8, var771=$r9}
; {com.alibaba.fastjson2.writer.FieldWriterInt64ValField=var3424, r1=var199, java.lang.Object=var2816, r0=var3853, com.alibaba.fastjson2.JSONException=var1631, $r4=var3794, $r5=var215, $r7=var3571, com.alibaba.fastjson2.writer.FieldWriter=var1245, $r6=var675, $r8=var3211, $r9=var771}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.FieldWriterInt64ValField;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt64ValField: long fieldOffset>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ");	$r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt64ValField: java.lang.String fieldName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2