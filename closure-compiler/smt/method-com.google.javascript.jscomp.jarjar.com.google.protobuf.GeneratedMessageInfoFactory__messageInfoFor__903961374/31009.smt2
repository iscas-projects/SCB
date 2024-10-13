(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1643 0)
(declare-sort var229 0)
(declare-sort var217 0)
(declare-sort var527 0)
(declare-sort var2035 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var229!class ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var527-init () var527)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var527 String var2035) void)
(declare-fun cast-from-var217-to-var2035 (var217) var2035)
(declare-const null-var1643 var1643)
(declare-const null-ClassObject ClassObject)
(declare-const null-var217 var217)
(declare-const var3907 var1643) ; Statement: r19 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageInfoFactory 
(assert (not (= var3907 null-var1643)))
(declare-const var3433 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3433 null-ClassObject)))
(define-const var2107 ClassObject var229!class) ; Statement: $r1 = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/GeneratedMessageLite;" 
(assert true)
(define-const var1110 Bool (isAssignableFrom/-1028998700 var2107 var3433)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<java.lang.Class: java.lang.Class asSubclass(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/GeneratedMessageLite;") 
(assert (not (not (= (ite var1110 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var2970 var217) ; Statement: $r12 := @caughtexception 
(assert (not (= var2970 null-var217)))
(define-const var601 var527 var527-init) ; Statement: $r13 = new java.lang.RuntimeException 
(define-const var2768 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2768)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2768!1 String)
(assert (= var2768!1 ""))
(assert true)
(define-const var3751 String (append/672562846 var2768!1 "Unable to get message info for ")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to get message info for ") 
(declare-const var2768!2 String)
(assert (= var2768!2 (str.++ var2768!1 "Unable to get message info for ")))
(assert true)
(define-const var633 String (getName/-1958580599 var3433)) ; Statement: $r15 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2164 String (append/672562846 var3751 var633)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3751!1 String)
(assert (= var3751!1 (str.++ var3751 var633)))
(assert true)
(define-const var1611 String (toString/-2075883882 var2164)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var601 var1611 (cast-from-var217-to-var2035 var2970))) ; Statement: specialinvoke $r13.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12) 

(declare-const var601!1 var527)
(declare-const var1611!1 String)
(declare-const var2970!1 var217)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var527-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var217-to-var2035=([java.lang.Exception], java.lang.Throwable)}
; {var1643=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageInfoFactory, var3907=r19, var3433=r0, var229=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite, var2107=$r1, var1110=$z0, var217=java.lang.Exception, var2970=$r12, var527=java.lang.RuntimeException, var601=$r13, var2768=$r14, var3751=$r16, var633=$r15, var2164=$r17, var1611=$r18, var2035=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageInfoFactory=var1643, r19=var3907, r0=var3433, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite=var229, $r1=var2107, $z0=var1110, java.lang.Exception=var217, $r12=var2970, java.lang.RuntimeException=var527, $r13=var601, $r14=var2768, $r16=var3751, $r15=var633, $r17=var2164, $r18=var1611, java.lang.Throwable=var2035}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r19 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageInfoFactory;	r0 := @parameter0: java.lang.Class;	$r1 = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/GeneratedMessageLite;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0);	if $z0 != 0 goto $r2 = virtualinvoke r0.<java.lang.Class: java.lang.Class asSubclass(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/GeneratedMessageLite;");	$r12 := @caughtexception;	$r13 = new java.lang.RuntimeException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to get message info for ");	$r15 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12);	throw $r13
;block_num 2