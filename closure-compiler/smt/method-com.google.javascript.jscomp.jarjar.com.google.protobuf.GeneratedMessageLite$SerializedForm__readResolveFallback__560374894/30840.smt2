(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2575 0)
(declare-sort var2165 0)
(declare-sort var620 0)
(declare-sort var3338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var620-init () var620)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun messageClassName/666690106 (var2575) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var620 String var3338) void)
(declare-fun cast-from-var2165-to-var3338 (var2165) var3338)
(declare-const null-var2575 var2575)
(declare-const null-var2165 var2165)
(declare-const var3851 var2575) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm 
(assert (not (= var3851 null-var2575)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1031 var2165) ; Statement: $r12 := @caughtexception 
(assert (not (= var1031 null-var2165)))
(define-const var1736 var620 var620-init) ; Statement: $r13 = new java.lang.RuntimeException 
(define-const var1504 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1504)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1504!1 String)
(assert (= var1504!1 ""))
(assert true)
(define-const var3218 String (append/672562846 var1504!1 "Unable to call defaultInstance in ")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to call defaultInstance in ") 
(declare-const var1504!2 String)
(assert (= var1504!2 (str.++ var1504!1 "Unable to call defaultInstance in ")))
(define-const var1153 String (messageClassName/666690106 var3851)) ; Statement: $r15 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm: java.lang.String messageClassName> 
(assert true)
(define-const var8 String (append/672562846 var3218 var1153)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3218!1 String)
(assert (= var3218!1 (str.++ var3218 var1153)))
(assert true)
(define-const var2938 String (toString/-2075883882 var8)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var1736 var2938 (cast-from-var2165-to-var3338 var1031))) ; Statement: specialinvoke $r13.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12) 

(declare-const var1736!1 var620)
(declare-const var2938!1 String)
(declare-const var1031!1 var2165)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var620-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), messageClassName/666690106=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var2165-to-var3338=([java.lang.SecurityException], java.lang.Throwable)}
; {var2575=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm, var3851=r0, var2165=java.lang.SecurityException, var1031=$r12, var620=java.lang.RuntimeException, var1736=$r13, var1504=$r14, var3218=$r16, var1153=$r15, var8=$r17, var2938=$r18, var3338=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm=var2575, r0=var3851, java.lang.SecurityException=var2165, $r12=var1031, java.lang.RuntimeException=var620, $r13=var1736, $r14=var1504, $r16=var3218, $r15=var1153, $r17=var8, $r18=var2938, java.lang.Throwable=var3338}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm;	$r12 := @caughtexception;	$r13 = new java.lang.RuntimeException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to call defaultInstance in ");	$r15 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm: java.lang.String messageClassName>;	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12);	throw $r13
;block_num 2