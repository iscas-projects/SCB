(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3953 0)
(declare-sort var1622 0)
(declare-sort var2869 0)
(declare-sort var3478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2869-init () var2869)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun messageClassName/666690106 (var3953) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var2869 String var3478) void)
(declare-fun cast-from-var1622-to-var3478 (var1622) var3478)
(declare-const null-var3953 var3953)
(declare-const null-var1622 var1622)
(declare-const var1927 var3953) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm 
(assert (not (= var1927 null-var3953)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var492 var1622) ; Statement: $r12 := @caughtexception 
(assert (not (= var492 null-var1622)))
(define-const var1497 var2869 var2869-init) ; Statement: $r13 = new java.lang.RuntimeException 
(define-const var3524 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3524)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3524!1 String)
(assert (= var3524!1 ""))
(assert true)
(define-const var1161 String (append/672562846 var3524!1 "Unable to call DEFAULT_INSTANCE in ")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to call DEFAULT_INSTANCE in ") 
(declare-const var3524!2 String)
(assert (= var3524!2 (str.++ var3524!1 "Unable to call DEFAULT_INSTANCE in ")))
(define-const var3625 String (messageClassName/666690106 var1927)) ; Statement: $r15 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm: java.lang.String messageClassName> 
(assert true)
(define-const var3750 String (append/672562846 var1161 var3625)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1161!1 String)
(assert (= var1161!1 (str.++ var1161 var3625)))
(assert true)
(define-const var3458 String (toString/-2075883882 var3750)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var1497 var3458 (cast-from-var1622-to-var3478 var492))) ; Statement: specialinvoke $r13.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12) 

(declare-const var1497!1 var2869)
(declare-const var3458!1 String)
(declare-const var492!1 var1622)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var2869-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), messageClassName/666690106=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var1622-to-var3478=([java.lang.SecurityException], java.lang.Throwable)}
; {var3953=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm, var1927=r0, var1622=java.lang.SecurityException, var492=$r12, var2869=java.lang.RuntimeException, var1497=$r13, var3524=$r14, var1161=$r16, var3625=$r15, var3750=$r17, var3458=$r18, var3478=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm=var3953, r0=var1927, java.lang.SecurityException=var1622, $r12=var492, java.lang.RuntimeException=var2869, $r13=var1497, $r14=var3524, $r16=var1161, $r15=var3625, $r17=var3750, $r18=var3458, java.lang.Throwable=var3478}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm;	$r12 := @caughtexception;	$r13 = new java.lang.RuntimeException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to call DEFAULT_INSTANCE in ");	$r15 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm: java.lang.String messageClassName>;	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12);	throw $r13
;block_num 2