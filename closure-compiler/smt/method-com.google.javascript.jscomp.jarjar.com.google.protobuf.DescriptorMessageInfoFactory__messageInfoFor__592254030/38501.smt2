(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var141 0)
(declare-sort var1582 0)
(declare-sort var2023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1582!class ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var2023-init () var2023)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2023 String) void)
(declare-const null-var141 var141)
(declare-const null-ClassObject ClassObject)
(declare-const var260 var141) ; Statement: r10 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory 
(assert (not (= var260 null-var141)))
(declare-const var1080 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1080 null-ClassObject)))
(define-const var620 ClassObject var1582!class) ; Statement: $r1 = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/GeneratedMessageV3;" 
(assert true)
(define-const var3297 Bool (isAssignableFrom/-1028998700 var620 var1080)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptorForType(java.lang.Class)>(r0) 
(assert (not (not (= (ite var3297 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3755 var2023 var2023-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var2559 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2559)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2559!1 String)
(assert (= var2559!1 ""))
(assert true)
(define-const var3084 String (append/672562846 var2559!1 "Unsupported message type: ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported message type: ") 
(declare-const var2559!2 String)
(assert (= var2559!2 (str.++ var2559!1 "Unsupported message type: ")))
(assert true)
(define-const var2214 String (getName/-1958580599 var1080)) ; Statement: $r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3360 String (append/672562846 var3084 var2214)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3084!1 String)
(assert (= var3084!1 (str.++ var3084 var2214)))
(assert true)
(define-const var3359 String (toString/-2075883882 var3360)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3755 var3359)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var3755!1 var2023)
(declare-const var3359!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var2023-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var141=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory, var260=r10, var1080=r0, var1582=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var620=$r1, var3297=$z0, var2023=java.lang.IllegalArgumentException, var3755=$r4, var2559=$r5, var3084=$r7, var2214=$r6, var3360=$r8, var3359=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory=var141, r10=var260, r0=var1080, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var1582, $r1=var620, $z0=var3297, java.lang.IllegalArgumentException=var2023, $r4=var3755, $r5=var2559, $r7=var3084, $r6=var2214, $r8=var3360, $r9=var3359}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory;	r0 := @parameter0: java.lang.Class;	$r1 = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/GeneratedMessageV3;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0);	if $z0 != 0 goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptorForType(java.lang.Class)>(r0);	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported message type: ");	$r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2