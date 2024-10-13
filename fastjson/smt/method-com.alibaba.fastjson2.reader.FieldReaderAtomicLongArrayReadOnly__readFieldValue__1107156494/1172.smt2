(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1941 0)
(declare-sort var130 0)
(declare-sort var3968 0)
(declare-sort var1465 0)
(declare-sort var1534 0)
(declare-sort var2671 0)
(declare-sort var102 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readIfNull/-460644769 (var130) Bool)
(declare-fun var1534-init () var1534)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2671) String)
(declare-fun cast-from-var1941-to-var2671 (var1941) var2671)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var130 String) String)
(declare-fun <init>/-743866570 (var1534 String var102) void)
(declare-fun cast-from-var1465-to-var102 (var1465) var102)
(declare-const null-var1941 var1941)
(declare-const null-var130 var130)
(declare-const null-var3968 var3968)
(declare-const null-var1465 var1465)
(declare-const var3770 var1941) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly 
(assert (not (= var3770 null-var1941)))
(declare-const var3584 var130) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3584 null-var130)))
(declare-const var2009 var3968) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2009 null-var3968)))
(assert true)
(define-const var3017 Bool (readIfNull/-460644769 var3584)) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readIfNull()>() 
 ; Statement: if $z0 == 0 goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly: java.lang.reflect.Method method> 
(assert (not (= (ite var3017 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3726 var1465) ; Statement: $r7 := @caughtexception 
(assert (not (= var3726 null-var1465)))
(define-const var1803 var1534 var1534-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var3539 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3539)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3539!1 String)
(assert (= var3539!1 ""))
(assert true)
(define-const var2231 String (append/672562846 var3539!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3539!2 String)
(assert (= var3539!2 (str.++ var3539!1 "set ")))
(define-const var11 String (fieldName/-488737871 (cast-from-var1941-to-var2671 var3770))) ; Statement: $r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var3856 String (append/672562846 var2231 var11)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2231!1 String)
(assert (= var2231!1 (str.++ var2231 var11)))
(assert true)
(define-const var1552 String (append/672562846 var3856 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3856!1 String)
(assert (= var3856!1 (str.++ var3856 " error")))
(assert true)
(define-const var2809 String (toString/-2075883882 var1552)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var816 String (info/-1659839707 var3584 var2809)) ; Statement: $r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-743866570 var1803 var816 (cast-from-var1465-to-var102 var3726))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7) 

(declare-const var1803!1 var1534)
(declare-const var816!1 String)
(declare-const var3726!1 var1465)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {readIfNull/-460644769=([com.alibaba.fastjson2.JSONReader], boolean), var1534-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var1941-to-var2671=([com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1465-to-var102=([java.lang.Exception], java.lang.Throwable)}
; {var1941=com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly, var3770=r1, var130=com.alibaba.fastjson2.JSONReader, var3584=r0, var3968=java.lang.Object, var2009=r2, var3017=$z0, var1465=java.lang.Exception, var3726=$r7, var1534=com.alibaba.fastjson2.JSONException, var1803=$r8, var3539=$r9, var2231=$r11, var2671=com.alibaba.fastjson2.reader.FieldReader, var11=$r10, var3856=$r12, var1552=$r13, var2809=$r14, var816=$r15, var102=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly=var1941, r1=var3770, com.alibaba.fastjson2.JSONReader=var130, r0=var3584, java.lang.Object=var3968, r2=var2009, $z0=var3017, java.lang.Exception=var1465, $r7=var3726, com.alibaba.fastjson2.JSONException=var1534, $r8=var1803, $r9=var3539, $r11=var2231, com.alibaba.fastjson2.reader.FieldReader=var2671, $r10=var11, $r12=var3856, $r13=var1552, $r14=var2809, $r15=var816, java.lang.Throwable=var102}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r2 := @parameter1: java.lang.Object;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readIfNull()>();	if $z0 == 0 goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicLongArrayReadOnly: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14);	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7);	throw $r8
;block_num 2