(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1733 0)
(declare-sort var2697 0)
(declare-sort var3970 0)
(declare-sort var359 0)
(declare-sort var3968 0)
(declare-sort var1326 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var359-init () var359)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3968) String)
(declare-fun cast-from-var1733-to-var3968 (var1733) var3968)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var359 String var1326) void)
(declare-fun cast-from-var3970-to-var1326 (var3970) var1326)
(declare-const null-var1733 var1733)
(declare-const null-var2697 var2697)
(declare-const null-var3970 var3970)
(declare-const var1296 var1733) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderCollectionMethodReadOnly 
(assert (not (= var1296 null-var1733)))
(declare-const var3445 var2697) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3445 null-var2697)))
(declare-const var1893 var2697) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1893 null-var2697)))
 ; Statement: if r0 != null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderCollectionMethodReadOnly: java.lang.reflect.Method method> 
(assert (not (not (= var1893 null-var2697)))) ; Negate: Cond: r0 != null  
(declare-const var2227 var3970) ; Statement: $r28 := @caughtexception 
(assert (not (= var2227 null-var3970)))
(define-const var3592 var359 var359-init) ; Statement: $r29 = new com.alibaba.fastjson2.JSONException 
(define-const var3386 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3386)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3386!1 String)
(assert (= var3386!1 ""))
(assert true)
(define-const var3844 String (append/672562846 var3386!1 "set ")) ; Statement: $r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3386!2 String)
(assert (= var3386!2 (str.++ var3386!1 "set ")))
(define-const var2491 String (fieldName/-488737871 (cast-from-var1733-to-var3968 var1296))) ; Statement: $r31 = r1.<com.alibaba.fastjson2.reader.FieldReaderCollectionMethodReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var2647 String (append/672562846 var3844 var2491)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31) 
(declare-const var3844!1 String)
(assert (= var3844!1 (str.++ var3844 var2491)))
(assert true)
(define-const var644 String (append/672562846 var2647 " error")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2647!1 String)
(assert (= var2647!1 (str.++ var2647 " error")))
(assert true)
(define-const var2926 String (toString/-2075883882 var644)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3592 var2926 (cast-from-var3970-to-var1326 var2227))) ; Statement: specialinvoke $r29.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r35, $r28) 

(declare-const var3592!1 var359)
(declare-const var2926!1 String)
(declare-const var2227!1 var3970)
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var359-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var1733-to-var3968=([com.alibaba.fastjson2.reader.FieldReaderCollectionMethodReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3970-to-var1326=([java.lang.Exception], java.lang.Throwable)}
; {var1733=com.alibaba.fastjson2.reader.FieldReaderCollectionMethodReadOnly, var1296=r1, var2697=java.lang.Object, var3445=r2, var1893=r0, var3970=java.lang.Exception, var2227=$r28, var359=com.alibaba.fastjson2.JSONException, var3592=$r29, var3386=$r30, var3844=$r32, var3968=com.alibaba.fastjson2.reader.FieldReader, var2491=$r31, var2647=$r33, var644=$r34, var2926=$r35, var1326=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderCollectionMethodReadOnly=var1733, r1=var1296, java.lang.Object=var2697, r2=var3445, r0=var1893, java.lang.Exception=var3970, $r28=var2227, com.alibaba.fastjson2.JSONException=var359, $r29=var3592, $r30=var3386, $r32=var3844, com.alibaba.fastjson2.reader.FieldReader=var3968, $r31=var2491, $r33=var2647, $r34=var644, $r35=var2926, java.lang.Throwable=var1326}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderCollectionMethodReadOnly;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderCollectionMethodReadOnly: java.lang.reflect.Method method>;	$r28 := @caughtexception;	$r29 = new com.alibaba.fastjson2.JSONException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r31 = r1.<com.alibaba.fastjson2.reader.FieldReaderCollectionMethodReadOnly: java.lang.String fieldName>;	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r35, $r28);	throw $r29
;block_num 2