(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2401 0)
(declare-sort var1370 0)
(declare-sort var2046 0)
(declare-sort var1811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2046-init () var2046)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun messageClassName/666690106 (var2401) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var2046 String var1811) void)
(declare-fun cast-from-var1370-to-var1811 (var1370) var1811)
(declare-const null-var2401 var2401)
(declare-const null-var1370 var1370)
(declare-const var2434 var2401) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm 
(assert (not (= var2434 null-var2401)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3153 var1370) ; Statement: $r19 := @caughtexception 
(assert (not (= var3153 null-var1370)))
(define-const var2806 var2046 var2046-init) ; Statement: $r20 = new java.lang.RuntimeException 
(define-const var1134 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1134)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1134!1 String)
(assert (= var1134!1 ""))
(assert true)
(define-const var2594 String (append/672562846 var1134!1 "Unable to find defaultInstance in ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find defaultInstance in ") 
(declare-const var1134!2 String)
(assert (= var1134!2 (str.++ var1134!1 "Unable to find defaultInstance in ")))
(define-const var3449 String (messageClassName/666690106 var2434)) ; Statement: $r22 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm: java.lang.String messageClassName> 
(assert true)
(define-const var1227 String (append/672562846 var2594 var3449)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2594!1 String)
(assert (= var2594!1 (str.++ var2594 var3449)))
(assert true)
(define-const var1762 String (toString/-2075883882 var1227)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var2806 var1762 (cast-from-var1370-to-var1811 var3153))) ; Statement: specialinvoke $r20.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r19) 

(declare-const var2806!1 var2046)
(declare-const var1762!1 String)
(declare-const var3153!1 var1370)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var2046-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), messageClassName/666690106=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var1370-to-var1811=([java.lang.NoSuchFieldException], java.lang.Throwable)}
; {var2401=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm, var2434=r0, var1370=java.lang.NoSuchFieldException, var3153=$r19, var2046=java.lang.RuntimeException, var2806=$r20, var1134=$r21, var2594=$r23, var3449=$r22, var1227=$r24, var1762=$r25, var1811=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm=var2401, r0=var2434, java.lang.NoSuchFieldException=var1370, $r19=var3153, java.lang.RuntimeException=var2046, $r20=var2806, $r21=var1134, $r23=var2594, $r22=var3449, $r24=var1227, $r25=var1762, java.lang.Throwable=var1811}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm;	$r19 := @caughtexception;	$r20 = new java.lang.RuntimeException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find defaultInstance in ");	$r22 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm: java.lang.String messageClassName>;	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r19);	throw $r20
;block_num 2