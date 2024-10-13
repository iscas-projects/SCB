(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3958 0)
(declare-sort var616 0)
(declare-sort var690 0)
(declare-sort var804 0)
(declare-sort var738 0)
(declare-sort var1855 0)
(declare-sort var3223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readIfNull/-460644769 (var616) Bool)
(declare-fun var738-init () var738)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1855) String)
(declare-fun cast-from-var3958-to-var1855 (var3958) var1855)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var616 String) String)
(declare-fun <init>/-743866570 (var738 String var3223) void)
(declare-fun cast-from-var804-to-var3223 (var804) var3223)
(declare-const null-var3958 var3958)
(declare-const null-var616 var616)
(declare-const null-var690 var690)
(declare-const null-var804 var804)
(declare-const var3904 var3958) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly 
(assert (not (= var3904 null-var3958)))
(declare-const var3869 var616) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3869 null-var616)))
(declare-const var958 var690) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var958 null-var690)))
(assert true)
(define-const var3604 Bool (readIfNull/-460644769 var3869)) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readIfNull()>() 
 ; Statement: if $z0 == 0 goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly: java.lang.reflect.Method method> 
(assert (not (= (ite var3604 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1909 var804) ; Statement: $r7 := @caughtexception 
(assert (not (= var1909 null-var804)))
(define-const var3600 var738 var738-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var2525 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2525)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2525!1 String)
(assert (= var2525!1 ""))
(assert true)
(define-const var38 String (append/672562846 var2525!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2525!2 String)
(assert (= var2525!2 (str.++ var2525!1 "set ")))
(define-const var974 String (fieldName/-488737871 (cast-from-var3958-to-var1855 var3904))) ; Statement: $r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var370 String (append/672562846 var38 var974)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var38!1 String)
(assert (= var38!1 (str.++ var38 var974)))
(assert true)
(define-const var430 String (append/672562846 var370 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var370!1 String)
(assert (= var370!1 (str.++ var370 " error")))
(assert true)
(define-const var3730 String (toString/-2075883882 var430)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1885 String (info/-1659839707 var3869 var3730)) ; Statement: $r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-743866570 var3600 var1885 (cast-from-var804-to-var3223 var1909))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7) 

(declare-const var3600!1 var738)
(declare-const var1885!1 String)
(declare-const var1909!1 var804)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {readIfNull/-460644769=([com.alibaba.fastjson2.JSONReader], boolean), var738-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var3958-to-var1855=([com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var804-to-var3223=([java.lang.Exception], java.lang.Throwable)}
; {var3958=com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly, var3904=r1, var616=com.alibaba.fastjson2.JSONReader, var3869=r0, var690=java.lang.Object, var958=r2, var3604=$z0, var804=java.lang.Exception, var1909=$r7, var738=com.alibaba.fastjson2.JSONException, var3600=$r8, var2525=$r9, var38=$r11, var1855=com.alibaba.fastjson2.reader.FieldReader, var974=$r10, var370=$r12, var430=$r13, var3730=$r14, var1885=$r15, var3223=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly=var3958, r1=var3904, com.alibaba.fastjson2.JSONReader=var616, r0=var3869, java.lang.Object=var690, r2=var958, $z0=var3604, java.lang.Exception=var804, $r7=var1909, com.alibaba.fastjson2.JSONException=var738, $r8=var3600, $r9=var2525, $r11=var38, com.alibaba.fastjson2.reader.FieldReader=var1855, $r10=var974, $r12=var370, $r13=var430, $r14=var3730, $r15=var1885, java.lang.Throwable=var3223}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r2 := @parameter1: java.lang.Object;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readIfNull()>();	if $z0 == 0 goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14);	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7);	throw $r8
;block_num 2