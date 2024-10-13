(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2610 0)
(declare-sort var600 0)
(declare-sort var3932 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var600!class ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var3932-init () var3932)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3932 String) void)
(declare-const null-var2610 var2610)
(declare-const null-ClassObject ClassObject)
(declare-const var1109 var2610) ; Statement: r19 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageInfoFactory 
(assert (not (= var1109 null-var2610)))
(declare-const var3679 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3679 null-ClassObject)))
(define-const var2777 ClassObject var600!class) ; Statement: $r1 = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/GeneratedMessageLite;" 
(assert true)
(define-const var1697 Bool (isAssignableFrom/-1028998700 var2777 var3679)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<java.lang.Class: java.lang.Class asSubclass(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/GeneratedMessageLite;") 
(assert (not (not (= (ite var1697 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3740 var3932 var3932-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var3704 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3704)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3704!1 String)
(assert (= var3704!1 ""))
(assert true)
(define-const var748 String (append/672562846 var3704!1 "Unsupported message type: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported message type: ") 
(declare-const var3704!2 String)
(assert (= var3704!2 (str.++ var3704!1 "Unsupported message type: ")))
(assert true)
(define-const var3881 String (getName/-1958580599 var3679)) ; Statement: $r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var623 String (append/672562846 var748 var3881)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var748!1 String)
(assert (= var748!1 (str.++ var748 var3881)))
(assert true)
(define-const var2066 String (toString/-2075883882 var623)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3740 var2066)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var3740!1 var3932)
(declare-const var2066!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var3932-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2610=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageInfoFactory, var1109=r19, var3679=r0, var600=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite, var2777=$r1, var1697=$z0, var3932=java.lang.IllegalArgumentException, var3740=$r6, var3704=$r7, var748=$r9, var3881=$r8, var623=$r10, var2066=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageInfoFactory=var2610, r19=var1109, r0=var3679, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite=var600, $r1=var2777, $z0=var1697, java.lang.IllegalArgumentException=var3932, $r6=var3740, $r7=var3704, $r9=var748, $r8=var3881, $r10=var623, $r11=var2066}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r19 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageInfoFactory;	r0 := @parameter0: java.lang.Class;	$r1 = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/GeneratedMessageLite;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0);	if $z0 != 0 goto $r2 = virtualinvoke r0.<java.lang.Class: java.lang.Class asSubclass(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/GeneratedMessageLite;");	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported message type: ");	$r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2