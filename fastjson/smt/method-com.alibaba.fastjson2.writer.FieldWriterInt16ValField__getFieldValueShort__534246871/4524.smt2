(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var451 0)
(declare-sort var1424 0)
(declare-sort var1240 0)
(declare-sort var2195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1240-init () var1240)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var2195) String)
(declare-fun cast-from-var451-to-var2195 (var451) var2195)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1240 String) void)
(declare-const null-var451 var451)
(declare-const null-var1424 var1424)
(declare-const var595 var451) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.FieldWriterInt16ValField 
(assert (not (= var595 null-var451)))
(declare-const var3311 var1424) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3311 null-var1424)))
 ; Statement: if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt16ValField: long fieldOffset> 
(assert (not (not (= var3311 null-var1424)))) ; Negate: Cond: r0 != null  
(define-const var361 var1240 var1240-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var3390 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3390)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3390!1 String)
(assert (= var3390!1 ""))
(assert true)
(define-const var3444 String (append/672562846 var3390!1 "field.get error, ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ") 
(declare-const var3390!2 String)
(assert (= var3390!2 (str.++ var3390!1 "field.get error, ")))
(define-const var736 String (fieldName/-2048851183 (cast-from-var451-to-var2195 var595))) ; Statement: $r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt16ValField: java.lang.String fieldName> 
(assert true)
(define-const var3664 String (append/672562846 var3444 var736)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3444!1 String)
(assert (= var3444!1 (str.++ var3444 var736)))
(assert true)
(define-const var3211 String (toString/-2075883882 var3664)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var361 var3211)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var361!1 var1240)
(declare-const var3211!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1240-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), cast-from-var451-to-var2195=([com.alibaba.fastjson2.writer.FieldWriterInt16ValField], com.alibaba.fastjson2.writer.FieldWriter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var451=com.alibaba.fastjson2.writer.FieldWriterInt16ValField, var595=r1, var1424=java.lang.Object, var3311=r0, var1240=com.alibaba.fastjson2.JSONException, var361=$r4, var3390=$r5, var3444=$r7, var2195=com.alibaba.fastjson2.writer.FieldWriter, var736=$r6, var3664=$r8, var3211=$r9}
; {com.alibaba.fastjson2.writer.FieldWriterInt16ValField=var451, r1=var595, java.lang.Object=var1424, r0=var3311, com.alibaba.fastjson2.JSONException=var1240, $r4=var361, $r5=var3390, $r7=var3444, com.alibaba.fastjson2.writer.FieldWriter=var2195, $r6=var736, $r8=var3664, $r9=var3211}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.FieldWriterInt16ValField;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt16ValField: long fieldOffset>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ");	$r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterInt16ValField: java.lang.String fieldName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2