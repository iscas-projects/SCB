(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2111 0)
(declare-sort var3149 0)
(declare-sort var2523 0)
(declare-sort var2428 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2523-init () var2523)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var2428) String)
(declare-fun cast-from-var2111-to-var2428 (var2111) var2428)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2523 String) void)
(declare-const null-var2111 var2111)
(declare-const null-var3149 var3149)
(declare-const var2293 var2111) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.FieldWriterFloatField 
(assert (not (= var2293 null-var2111)))
(declare-const var640 var3149) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var640 null-var3149)))
 ; Statement: if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterFloatField: long fieldOffset> 
(assert (not (not (= var640 null-var3149)))) ; Negate: Cond: r0 != null  
(define-const var2863 var2523 var2523-init) ; Statement: $r5 = new com.alibaba.fastjson2.JSONException 
(define-const var186 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var186)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var186!1 String)
(assert (= var186!1 ""))
(assert true)
(define-const var31 String (append/672562846 var186!1 "field.get error, ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ") 
(declare-const var186!2 String)
(assert (= var186!2 (str.++ var186!1 "field.get error, ")))
(define-const var3509 String (fieldName/-2048851183 (cast-from-var2111-to-var2428 var2293))) ; Statement: $r7 = r1.<com.alibaba.fastjson2.writer.FieldWriterFloatField: java.lang.String fieldName> 
(assert true)
(define-const var3437 String (append/672562846 var31 var3509)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var31!1 String)
(assert (= var31!1 (str.++ var31 var3509)))
(assert true)
(define-const var3849 String (toString/-2075883882 var3437)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2863 var3849)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var2863!1 var2523)
(declare-const var3849!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2523-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), cast-from-var2111-to-var2428=([com.alibaba.fastjson2.writer.FieldWriterFloatField], com.alibaba.fastjson2.writer.FieldWriter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2111=com.alibaba.fastjson2.writer.FieldWriterFloatField, var2293=r1, var3149=java.lang.Object, var640=r0, var2523=com.alibaba.fastjson2.JSONException, var2863=$r5, var186=$r6, var31=$r8, var2428=com.alibaba.fastjson2.writer.FieldWriter, var3509=$r7, var3437=$r9, var3849=$r10}
; {com.alibaba.fastjson2.writer.FieldWriterFloatField=var2111, r1=var2293, java.lang.Object=var3149, r0=var640, com.alibaba.fastjson2.JSONException=var2523, $r5=var2863, $r6=var186, $r8=var31, com.alibaba.fastjson2.writer.FieldWriter=var2428, $r7=var3509, $r9=var3437, $r10=var3849}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.FieldWriterFloatField;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterFloatField: long fieldOffset>;	$r5 = new com.alibaba.fastjson2.JSONException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ");	$r7 = r1.<com.alibaba.fastjson2.writer.FieldWriterFloatField: java.lang.String fieldName>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2