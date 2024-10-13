(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1767 0)
(declare-sort var2313 0)
(declare-sort var3009 0)
(declare-sort var1117 0)
(declare-sort var2757 0)
(declare-sort var1000 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1117-init () var1117)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2757) String)
(declare-fun cast-from-var1767-to-var2757 (var1767) var2757)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1117 String var1000) void)
(declare-fun cast-from-var3009-to-var1000 (var3009) var1000)
(declare-const null-var1767 var1767)
(declare-const null-var2313 var2313)
(declare-const null-var3009 var3009)
(declare-const var864 var1767) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly 
(assert (not (= var864 null-var1767)))
(declare-const var3697 var2313) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3697 null-var2313)))
(declare-const var3142 var2313) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3142 null-var2313)))
 ; Statement: if r0 != null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly: java.lang.reflect.Method method> 
(assert (not (not (= var3142 null-var2313)))) ; Negate: Cond: r0 != null  
(declare-const var1041 var3009) ; Statement: $r7 := @caughtexception 
(assert (not (= var1041 null-var3009)))
(define-const var1696 var1117 var1117-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var456 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var456)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var456!1 String)
(assert (= var456!1 ""))
(assert true)
(define-const var414 String (append/672562846 var456!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var456!2 String)
(assert (= var456!2 (str.++ var456!1 "set ")))
(define-const var1479 String (fieldName/-488737871 (cast-from-var1767-to-var2757 var864))) ; Statement: $r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var523 String (append/672562846 var414 var1479)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var414!1 String)
(assert (= var414!1 (str.++ var414 var1479)))
(assert true)
(define-const var1742 String (append/672562846 var523 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var523!1 String)
(assert (= var523!1 (str.++ var523 " error")))
(assert true)
(define-const var2019 String (toString/-2075883882 var1742)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1696 var2019 (cast-from-var3009-to-var1000 var1041))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var1696!1 var1117)
(declare-const var2019!1 String)
(declare-const var1041!1 var3009)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1117-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var1767-to-var2757=([com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3009-to-var1000=([java.lang.Exception], java.lang.Throwable)}
; {var1767=com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly, var864=r1, var2313=java.lang.Object, var3697=r2, var3142=r0, var3009=java.lang.Exception, var1041=$r7, var1117=com.alibaba.fastjson2.JSONException, var1696=$r8, var456=$r9, var414=$r11, var2757=com.alibaba.fastjson2.reader.FieldReader, var1479=$r10, var523=$r12, var1742=$r13, var2019=$r14, var1000=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly=var1767, r1=var864, java.lang.Object=var2313, r2=var3697, r0=var3142, java.lang.Exception=var3009, $r7=var1041, com.alibaba.fastjson2.JSONException=var1117, $r8=var1696, $r9=var456, $r11=var414, com.alibaba.fastjson2.reader.FieldReader=var2757, $r10=var1479, $r12=var523, $r13=var1742, $r14=var2019, java.lang.Throwable=var1000}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2