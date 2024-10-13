(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1404 0)
(declare-sort var1271 0)
(declare-sort var3257 0)
(declare-sort var731 0)
(declare-sort var3778 0)
(declare-sort var1901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var731-init () var731)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3778) String)
(declare-fun cast-from-var1404-to-var3778 (var1404) var3778)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var731 String var1901) void)
(declare-fun cast-from-var3257-to-var1901 (var3257) var1901)
(declare-const null-var1404 var1404)
(declare-const null-var1271 var1271)
(declare-const null-var3257 var3257)
(declare-const var2451 var1404) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceField 
(assert (not (= var2451 null-var1404)))
(declare-const var2001 var1271) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2001 null-var1271)))
(declare-const var2808 var1271) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2808 null-var1271)))
 ; Statement: if r0 != null goto $z0 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceField: boolean readOnly> 
(assert (not (not (= var2808 null-var1271)))) ; Negate: Cond: r0 != null  
(declare-const var1536 var3257) ; Statement: $r7 := @caughtexception 
(assert (not (= var1536 null-var3257)))
(define-const var2342 var731 var731-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var3022 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3022)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3022!1 String)
(assert (= var3022!1 ""))
(assert true)
(define-const var3900 String (append/672562846 var3022!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3022!2 String)
(assert (= var3022!2 (str.++ var3022!1 "set ")))
(define-const var899 String (fieldName/-488737871 (cast-from-var1404-to-var3778 var2451))) ; Statement: $r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceField: java.lang.String fieldName> 
(assert true)
(define-const var3087 String (append/672562846 var3900 var899)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3900!1 String)
(assert (= var3900!1 (str.++ var3900 var899)))
(assert true)
(define-const var1539 String (append/672562846 var3087 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3087!1 String)
(assert (= var3087!1 (str.++ var3087 " error")))
(assert true)
(define-const var957 String (toString/-2075883882 var1539)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2342 var957 (cast-from-var3257-to-var1901 var1536))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var2342!1 var731)
(declare-const var957!1 String)
(declare-const var1536!1 var3257)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var731-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var1404-to-var3778=([com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceField], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3257-to-var1901=([java.lang.Exception], java.lang.Throwable)}
; {var1404=com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceField, var2451=r1, var1271=java.lang.Object, var2001=r2, var2808=r0, var3257=java.lang.Exception, var1536=$r7, var731=com.alibaba.fastjson2.JSONException, var2342=$r8, var3022=$r9, var3900=$r11, var3778=com.alibaba.fastjson2.reader.FieldReader, var899=$r10, var3087=$r12, var1539=$r13, var957=$r14, var1901=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceField=var1404, r1=var2451, java.lang.Object=var1271, r2=var2001, r0=var2808, java.lang.Exception=var3257, $r7=var1536, com.alibaba.fastjson2.JSONException=var731, $r8=var2342, $r9=var3022, $r11=var3900, com.alibaba.fastjson2.reader.FieldReader=var3778, $r10=var899, $r12=var3087, $r13=var1539, $r14=var957, java.lang.Throwable=var1901}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceField;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != null goto $z0 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceField: boolean readOnly>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceField: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2