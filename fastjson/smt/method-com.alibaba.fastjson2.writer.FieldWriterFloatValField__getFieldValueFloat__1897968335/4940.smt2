(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var167 0)
(declare-sort var1029 0)
(declare-sort var1075 0)
(declare-sort var1519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1075-init () var1075)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var1519) String)
(declare-fun cast-from-var167-to-var1519 (var167) var1519)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1075 String) void)
(declare-const null-var167 var167)
(declare-const null-var1029 var1029)
(declare-const var437 var167) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.FieldWriterFloatValField 
(assert (not (= var437 null-var167)))
(declare-const var268 var1029) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var268 null-var1029)))
 ; Statement: if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterFloatValField: long fieldOffset> 
(assert (not (not (= var268 null-var1029)))) ; Negate: Cond: r0 != null  
(define-const var55 var1075 var1075-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var2805 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2805)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2805!1 String)
(assert (= var2805!1 ""))
(assert true)
(define-const var2635 String (append/672562846 var2805!1 "field.get error, ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ") 
(declare-const var2805!2 String)
(assert (= var2805!2 (str.++ var2805!1 "field.get error, ")))
(define-const var3653 String (fieldName/-2048851183 (cast-from-var167-to-var1519 var437))) ; Statement: $r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterFloatValField: java.lang.String fieldName> 
(assert true)
(define-const var952 String (append/672562846 var2635 var3653)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2635!1 String)
(assert (= var2635!1 (str.++ var2635 var3653)))
(assert true)
(define-const var1210 String (toString/-2075883882 var952)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var55 var1210)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var55!1 var1075)
(declare-const var1210!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1075-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), cast-from-var167-to-var1519=([com.alibaba.fastjson2.writer.FieldWriterFloatValField], com.alibaba.fastjson2.writer.FieldWriter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var167=com.alibaba.fastjson2.writer.FieldWriterFloatValField, var437=r1, var1029=java.lang.Object, var268=r0, var1075=com.alibaba.fastjson2.JSONException, var55=$r4, var2805=$r5, var2635=$r7, var1519=com.alibaba.fastjson2.writer.FieldWriter, var3653=$r6, var952=$r8, var1210=$r9}
; {com.alibaba.fastjson2.writer.FieldWriterFloatValField=var167, r1=var437, java.lang.Object=var1029, r0=var268, com.alibaba.fastjson2.JSONException=var1075, $r4=var55, $r5=var2805, $r7=var2635, com.alibaba.fastjson2.writer.FieldWriter=var1519, $r6=var3653, $r8=var952, $r9=var1210}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.FieldWriterFloatValField;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $l0 = r1.<com.alibaba.fastjson2.writer.FieldWriterFloatValField: long fieldOffset>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ");	$r6 = r1.<com.alibaba.fastjson2.writer.FieldWriterFloatValField: java.lang.String fieldName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2