(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1497 0)
(declare-sort var1899 0)
(declare-sort var2754 0)
(declare-sort var3660 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2754-init () var2754)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun messageClassName/666690106 (var1497) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var2754 String var3660) void)
(declare-fun cast-from-var1899-to-var3660 (var1899) var3660)
(declare-const null-var1497 var1497)
(declare-const null-var1899 var1899)
(declare-const var2542 var1497) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm 
(assert (not (= var2542 null-var1497)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2831 var1899) ; Statement: $r26 := @caughtexception 
(assert (not (= var2831 null-var1899)))
(define-const var2998 var2754 var2754-init) ; Statement: $r27 = new java.lang.RuntimeException 
(define-const var2761 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2761)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2761!1 String)
(assert (= var2761!1 ""))
(assert true)
(define-const var1457 String (append/672562846 var2761!1 "Unable to find proto buffer class: ")) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find proto buffer class: ") 
(declare-const var2761!2 String)
(assert (= var2761!2 (str.++ var2761!1 "Unable to find proto buffer class: ")))
(define-const var1206 String (messageClassName/666690106 var2542)) ; Statement: $r29 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm: java.lang.String messageClassName> 
(assert true)
(define-const var826 String (append/672562846 var1457 var1206)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var1457!1 String)
(assert (= var1457!1 (str.++ var1457 var1206)))
(assert true)
(define-const var570 String (toString/-2075883882 var826)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var2998 var570 (cast-from-var1899-to-var3660 var2831))) ; Statement: specialinvoke $r27.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r32, $r26) 

(declare-const var2998!1 var2754)
(declare-const var570!1 String)
(declare-const var2831!1 var1899)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {var2754-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), messageClassName/666690106=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var1899-to-var3660=([java.lang.ClassNotFoundException], java.lang.Throwable)}
; {var1497=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm, var2542=r0, var1899=java.lang.ClassNotFoundException, var2831=$r26, var2754=java.lang.RuntimeException, var2998=$r27, var2761=$r28, var1457=$r30, var1206=$r29, var826=$r31, var570=$r32, var3660=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm=var1497, r0=var2542, java.lang.ClassNotFoundException=var1899, $r26=var2831, java.lang.RuntimeException=var2754, $r27=var2998, $r28=var2761, $r30=var1457, $r29=var1206, $r31=var826, $r32=var570, java.lang.Throwable=var3660}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm;	$r26 := @caughtexception;	$r27 = new java.lang.RuntimeException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find proto buffer class: ");	$r29 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm: java.lang.String messageClassName>;	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r32, $r26);	throw $r27
;block_num 2