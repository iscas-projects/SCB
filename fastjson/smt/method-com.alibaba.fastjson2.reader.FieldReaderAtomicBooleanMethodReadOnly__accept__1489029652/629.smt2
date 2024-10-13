(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1541 0)
(declare-sort var3325 0)
(declare-sort var852 0)
(declare-sort var584 0)
(declare-sort var330 0)
(declare-sort var308 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var584-init () var584)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var330) String)
(declare-fun cast-from-var1541-to-var330 (var1541) var330)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var584 String var308) void)
(declare-fun cast-from-var852-to-var308 (var852) var308)
(declare-const null-var1541 var1541)
(declare-const null-var3325 var3325)
(declare-const null-var852 var852)
(declare-const var932 var1541) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanMethodReadOnly 
(assert (not (= var932 null-var1541)))
(declare-const var1193 var3325) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1193 null-var3325)))
(declare-const var137 var3325) ; Statement: r15 := @parameter1: java.lang.Object 
(assert (not (= var137 null-var3325)))
 ; Statement: if r15 != null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanMethodReadOnly: java.lang.reflect.Method method> 
(assert (not (not (= var137 null-var3325)))) ; Negate: Cond: r15 != null  
(declare-const var1142 var852) ; Statement: $r7 := @caughtexception 
(assert (not (= var1142 null-var852)))
(define-const var3940 var584 var584-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var3429 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3429)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3429!1 String)
(assert (= var3429!1 ""))
(assert true)
(define-const var3777 String (append/672562846 var3429!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3429!2 String)
(assert (= var3429!2 (str.++ var3429!1 "set ")))
(define-const var909 String (fieldName/-488737871 (cast-from-var1541-to-var330 var932))) ; Statement: $r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanMethodReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var3913 String (append/672562846 var3777 var909)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3777!1 String)
(assert (= var3777!1 (str.++ var3777 var909)))
(assert true)
(define-const var706 String (append/672562846 var3913 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3913!1 String)
(assert (= var3913!1 (str.++ var3913 " error")))
(assert true)
(define-const var3618 String (toString/-2075883882 var706)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3940 var3618 (cast-from-var852-to-var308 var1142))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var3940!1 var584)
(declare-const var3618!1 String)
(declare-const var1142!1 var852)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var584-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var1541-to-var330=([com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanMethodReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var852-to-var308=([java.lang.Exception], java.lang.Throwable)}
; {var1541=com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanMethodReadOnly, var932=r0, var3325=java.lang.Object, var1193=r1, var137=r15, var852=java.lang.Exception, var1142=$r7, var584=com.alibaba.fastjson2.JSONException, var3940=$r8, var3429=$r9, var3777=$r11, var330=com.alibaba.fastjson2.reader.FieldReader, var909=$r10, var3913=$r12, var706=$r13, var3618=$r14, var308=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanMethodReadOnly=var1541, r0=var932, java.lang.Object=var3325, r1=var1193, r15=var137, java.lang.Exception=var852, $r7=var1142, com.alibaba.fastjson2.JSONException=var584, $r8=var3940, $r9=var3429, $r11=var3777, com.alibaba.fastjson2.reader.FieldReader=var330, $r10=var909, $r12=var3913, $r13=var706, $r14=var3618, java.lang.Throwable=var308}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanMethodReadOnly;	r1 := @parameter0: java.lang.Object;	r15 := @parameter1: java.lang.Object;	if r15 != null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanMethodReadOnly: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanMethodReadOnly: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2