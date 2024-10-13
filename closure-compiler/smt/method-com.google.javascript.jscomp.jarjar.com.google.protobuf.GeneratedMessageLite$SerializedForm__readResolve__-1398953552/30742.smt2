(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2914 0)
(declare-sort var1081 0)
(declare-sort var2983 0)
(declare-sort var3525 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2983-init () var2983)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun messageClassName/666690106 (var2914) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var2983 String var3525) void)
(declare-fun cast-from-var1081-to-var3525 (var1081) var3525)
(declare-const null-var2914 var2914)
(declare-const null-var1081 var1081)
(declare-const var3992 var2914) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm 
(assert (not (= var3992 null-var2914)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1093 var1081) ; Statement: $r21 := @caughtexception 
(assert (not (= var1093 null-var1081)))
(define-const var2596 var2983 var2983-init) ; Statement: $r22 = new java.lang.RuntimeException 
(define-const var1676 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1676)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1676!1 String)
(assert (= var1676!1 ""))
(assert true)
(define-const var2751 String (append/672562846 var1676!1 "Unable to find proto buffer class: ")) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find proto buffer class: ") 
(declare-const var1676!2 String)
(assert (= var1676!2 (str.++ var1676!1 "Unable to find proto buffer class: ")))
(define-const var1067 String (messageClassName/666690106 var3992)) ; Statement: $r24 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm: java.lang.String messageClassName> 
(assert true)
(define-const var886 String (append/672562846 var2751 var1067)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2751!1 String)
(assert (= var2751!1 (str.++ var2751 var1067)))
(assert true)
(define-const var2817 String (toString/-2075883882 var886)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var2596 var2817 (cast-from-var1081-to-var3525 var1093))) ; Statement: specialinvoke $r22.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r27, $r21) 

(declare-const var2596!1 var2983)
(declare-const var2817!1 String)
(declare-const var1093!1 var1081)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var2983-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), messageClassName/666690106=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var1081-to-var3525=([java.lang.ClassNotFoundException], java.lang.Throwable)}
; {var2914=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm, var3992=r0, var1081=java.lang.ClassNotFoundException, var1093=$r21, var2983=java.lang.RuntimeException, var2596=$r22, var1676=$r23, var2751=$r25, var1067=$r24, var886=$r26, var2817=$r27, var3525=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm=var2914, r0=var3992, java.lang.ClassNotFoundException=var1081, $r21=var1093, java.lang.RuntimeException=var2983, $r22=var2596, $r23=var1676, $r25=var2751, $r24=var1067, $r26=var886, $r27=var2817, java.lang.Throwable=var3525}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm;	$r21 := @caughtexception;	$r22 = new java.lang.RuntimeException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find proto buffer class: ");	$r24 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm: java.lang.String messageClassName>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r27, $r21);	throw $r22
;block_num 2