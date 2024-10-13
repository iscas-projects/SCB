(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2654 0)
(declare-sort var3828 0)
(declare-sort var3125 0)
(declare-sort var1735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3125-init () var3125)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var1735) String)
(declare-fun cast-from-var2654-to-var1735 (var2654) var1735)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3125 String) void)
(declare-const null-var2654 var2654)
(declare-const null-var3828 var3828)
(declare-const var2914 var2654) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.FieldWriterDoubleField 
(assert (not (= var2914 null-var2654)))
(declare-const var2055 var3828) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2055 null-var3828)))
 ; Statement: if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterDoubleField: long fieldOffset> 
(assert (not (not (= var2055 null-var3828)))) ; Negate: Cond: r0 != null  
(define-const var478 var3125 var3125-init) ; Statement: $r5 = new com.alibaba.fastjson2.JSONException 
(define-const var3369 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3369)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3369!1 String)
(assert (= var3369!1 ""))
(assert true)
(define-const var922 String (append/672562846 var3369!1 "field.get error, ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ") 
(declare-const var3369!2 String)
(assert (= var3369!2 (str.++ var3369!1 "field.get error, ")))
(define-const var2315 String (fieldName/-2048851183 (cast-from-var2654-to-var1735 var2914))) ; Statement: $r7 = r1.<com.alibaba.fastjson2.writer.FieldWriterDoubleField: java.lang.String fieldName> 
(assert true)
(define-const var314 String (append/672562846 var922 var2315)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var922!1 String)
(assert (= var922!1 (str.++ var922 var2315)))
(assert true)
(define-const var1728 String (toString/-2075883882 var314)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var478 var1728)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var478!1 var3125)
(declare-const var1728!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3125-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), cast-from-var2654-to-var1735=([com.alibaba.fastjson2.writer.FieldWriterDoubleField], com.alibaba.fastjson2.writer.FieldWriter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2654=com.alibaba.fastjson2.writer.FieldWriterDoubleField, var2914=r1, var3828=java.lang.Object, var2055=r0, var3125=com.alibaba.fastjson2.JSONException, var478=$r5, var3369=$r6, var922=$r8, var1735=com.alibaba.fastjson2.writer.FieldWriter, var2315=$r7, var314=$r9, var1728=$r10}
; {com.alibaba.fastjson2.writer.FieldWriterDoubleField=var2654, r1=var2914, java.lang.Object=var3828, r0=var2055, com.alibaba.fastjson2.JSONException=var3125, $r5=var478, $r6=var3369, $r8=var922, com.alibaba.fastjson2.writer.FieldWriter=var1735, $r7=var2315, $r9=var314, $r10=var1728}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.FieldWriterDoubleField;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterDoubleField: long fieldOffset>;	$r5 = new com.alibaba.fastjson2.JSONException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ");	$r7 = r1.<com.alibaba.fastjson2.writer.FieldWriterDoubleField: java.lang.String fieldName>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2