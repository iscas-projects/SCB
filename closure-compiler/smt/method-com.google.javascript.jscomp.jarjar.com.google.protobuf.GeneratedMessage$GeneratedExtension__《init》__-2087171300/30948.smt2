(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1647 0)
(declare-sort var2341 0)
(declare-sort var2384 0)
(declare-sort var813 0)
(declare-sort var37 0)
(declare-sort var397 0)
(declare-sort var2209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2384!class ClassObject)
(declare-fun <init>/-1745123108 (var37) void)
(declare-fun cast-from-var1647-to-var37 (var1647) var37)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun isInstance/451912363 (ClassObject var397) Bool)
(declare-fun cast-from-var2384-to-var397 (var2384) var397)
(declare-fun var2209-init () var2209)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2209 String) void)
(declare-const null-var1647 var1647)
(declare-const null-var2341 var2341)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2384 var2384)
(declare-const null-var813 var813)
(declare-const var2149 var1647) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$GeneratedExtension 
(assert (not (= var2149 null-var1647)))
(declare-const var3071 var2341) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtensionDescriptorRetriever 
(assert (not (= var3071 null-var2341)))
(declare-const var476 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var476 null-ClassObject)))
(declare-const var3746 var2384) ; Statement: r4 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.Message 
(assert (not (= var3746 null-var2384)))
(declare-const var742 var813) ; Statement: r6 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension$ExtensionType 
(assert (not (= var742 null-var813)))
(assert true)
;(assert (<init>/-1745123108 (cast-from-var1647-to-var37 var2149))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension: void <init>()>() 

(declare-const var2149!1 var1647)
(define-const var2735 ClassObject var2384!class) ; Statement: $r2 = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/Message;" 
(assert true)
(define-const var2638 Bool (isAssignableFrom/-1028998700 var2735 var476)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1) 
 ; Statement: if $z0 == 0 goto r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtensionDescriptorRetriever descriptorRetriever> = r3 
(assert (not (= (ite var2638 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3867 Bool (isInstance/451912363 var476 (cast-from-var2384-to-var397 var3746))) ; Statement: $z2 = virtualinvoke r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r4) 
 ; Statement: if $z2 != 0 goto r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtensionDescriptorRetriever descriptorRetriever> = r3 
(assert (not (not (= (ite var3867 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2797 var2209 var2209-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var1194 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1194)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1194!1 String)
(assert (= var1194!1 ""))
(assert true)
(define-const var2788 String (append/672562846 var1194!1 "Bad messageDefaultInstance for ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad messageDefaultInstance for ") 
(declare-const var1194!2 String)
(assert (= var1194!2 (str.++ var1194!1 "Bad messageDefaultInstance for ")))
(assert true)
(define-const var594 String (getName/-1958580599 var476)) ; Statement: $r13 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var150 String (append/672562846 var2788 var594)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2788!1 String)
(assert (= var2788!1 (str.++ var2788 var594)))
(assert true)
(define-const var637 String (toString/-2075883882 var150)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2797 var637)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16) 

(declare-const var2797!1 var2209)
(declare-const var637!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1745123108=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension], void), cast-from-var1647-to-var37=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$GeneratedExtension], com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var2384-to-var397=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Message], java.lang.Object), var2209-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1647=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$GeneratedExtension, var2149=r0, var2341=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtensionDescriptorRetriever, var3071=r3, var476=r1, var2384=com.google.javascript.jscomp.jarjar.com.google.protobuf.Message, var3746=r4, var813=com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension$ExtensionType, var742=r6, var37=com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension, var2735=$r2, var2638=$z0, var397=java.lang.Object, var3867=$z2, var2209=java.lang.IllegalArgumentException, var2797=$r11, var1194=$r12, var2788=$r14, var594=$r13, var150=$r15, var637=$r16}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$GeneratedExtension=var1647, r0=var2149, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtensionDescriptorRetriever=var2341, r3=var3071, r1=var476, com.google.javascript.jscomp.jarjar.com.google.protobuf.Message=var2384, r4=var3746, com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension$ExtensionType=var813, r6=var742, com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension=var37, $r2=var2735, $z0=var2638, java.lang.Object=var397, $z2=var3867, java.lang.IllegalArgumentException=var2209, $r11=var2797, $r12=var1194, $r14=var2788, $r13=var594, $r15=var150, $r16=var637}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$GeneratedExtension;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtensionDescriptorRetriever;	r1 := @parameter1: java.lang.Class;	r4 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.Message;	r6 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension$ExtensionType;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension: void <init>()>();	$r2 = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/Message;";	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1);	if $z0 == 0 goto r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtensionDescriptorRetriever descriptorRetriever> = r3;	$z2 = virtualinvoke r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r4);	if $z2 != 0 goto r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$GeneratedExtension: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtensionDescriptorRetriever descriptorRetriever> = r3;	$r11 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad messageDefaultInstance for ");	$r13 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16);	throw $r11
;block_num 3