(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2809 0)
(declare-sort var3150 0)
(declare-sort var3033 0)
(declare-sort var2858 0)
(declare-sort var2372 0)
(declare-sort var1180 0)
(declare-sort var2713 0)
(declare-sort var3008 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readBool/-2111978331 (var3150) var2858)
(declare-fun var1180-init () var1180)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2713) String)
(declare-fun cast-from-var2809-to-var2713 (var2809) var2713)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3150 String) String)
(declare-fun <init>/-743866570 (var1180 String var3008) void)
(declare-fun cast-from-var2372-to-var3008 (var2372) var3008)
(declare-const null-var2809 var2809)
(declare-const null-var3150 var3150)
(declare-const null-var3033 var3033)
(declare-const null-var2372 var2372)
(declare-const var3958 var2809) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolField 
(assert (not (= var3958 null-var2809)))
(declare-const var1959 var3150) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1959 null-var3150)))
(declare-const var901 var3033) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var901 null-var3033)))
(assert true)
(define-const var149 var2858 (readBool/-2111978331 var1959)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Boolean readBool()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3021 var2372) ; Statement: $r5 := @caughtexception 
(assert (not (= var3021 null-var2372)))
(define-const var631 var1180 var1180-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var872 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var872)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var872!1 String)
(assert (= var872!1 ""))
(assert true)
(define-const var931 String (append/672562846 var872!1 "set ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var872!2 String)
(assert (= var872!2 (str.++ var872!1 "set ")))
(define-const var2904 String (fieldName/-488737871 (cast-from-var2809-to-var2713 var3958))) ; Statement: $r8 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolField: java.lang.String fieldName> 
(assert true)
(define-const var2992 String (append/672562846 var931 var2904)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var931!1 String)
(assert (= var931!1 (str.++ var931 var2904)))
(assert true)
(define-const var564 String (append/672562846 var2992 " error")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2992!1 String)
(assert (= var2992!1 (str.++ var2992 " error")))
(assert true)
(define-const var3034 String (toString/-2075883882 var564)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var329 String (info/-1659839707 var1959 var3034)) ; Statement: $r13 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r12) 
(assert true)
;(assert (<init>/-743866570 var631 var329 (cast-from-var2372-to-var3008 var3021))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r5) 

(declare-const var631!1 var1180)
(declare-const var329!1 String)
(declare-const var3021!1 var2372)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {readBool/-2111978331=([com.alibaba.fastjson2.JSONReader], java.lang.Boolean), var1180-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var2809-to-var2713=([com.alibaba.fastjson2.reader.FieldReaderBoolField], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2372-to-var3008=([java.lang.Exception], java.lang.Throwable)}
; {var2809=com.alibaba.fastjson2.reader.FieldReaderBoolField, var3958=r2, var3150=com.alibaba.fastjson2.JSONReader, var1959=r0, var3033=java.lang.Object, var901=r3, var2858=java.lang.Boolean, var149=r1, var2372=java.lang.Exception, var3021=$r5, var1180=com.alibaba.fastjson2.JSONException, var631=$r6, var872=$r7, var931=$r9, var2713=com.alibaba.fastjson2.reader.FieldReader, var2904=$r8, var2992=$r10, var564=$r11, var3034=$r12, var329=$r13, var3008=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBoolField=var2809, r2=var3958, com.alibaba.fastjson2.JSONReader=var3150, r0=var1959, java.lang.Object=var3033, r3=var901, java.lang.Boolean=var2858, r1=var149, java.lang.Exception=var2372, $r5=var3021, com.alibaba.fastjson2.JSONException=var1180, $r6=var631, $r7=var872, $r9=var931, com.alibaba.fastjson2.reader.FieldReader=var2713, $r8=var2904, $r10=var2992, $r11=var564, $r12=var3034, $r13=var329, java.lang.Throwable=var3008}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Boolean readBool()>();	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r8 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolField: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r12);	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r5);	throw $r6
;block_num 2