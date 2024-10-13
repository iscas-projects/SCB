(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1662 0)
(declare-sort var1675 0)
(declare-sort var847 0)
(declare-sort var3633 0)
(declare-sort var1811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getContainingType/-747419587 (var1675) var847)
(declare-fun metadata/-1217004702 (var1662) var3633)
(declare-fun descriptor/618212945 (var3633) var847)
(declare-fun var1811-init () var1811)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFullName/-1802894463 (var1675) String)
(declare-fun getFullName/-1302123061 (var847) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var1811 String) void)
(declare-const null-var1662 var1662)
(declare-const null-var1675 var1675)
(declare-const var3823 var1662) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry 
(assert (not (= var3823 null-var1662)))
(declare-const var234 var1675) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var234 null-var1675)))
(assert true)
(define-const var1021 var847 (getContainingType/-747419587 var234)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>() 
(define-const var470 var3633 (metadata/-1217004702 var3823)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata metadata> 
(define-const var3887 var847 (descriptor/618212945 var470)) ; Statement: $r3 = $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor> 
 ; Statement: if $r4 == $r3 goto return 
(assert (not (= var1021 var3887))) ; Negate: Cond: $r4 == $r3  
(define-const var2150 var1811 var1811-init) ; Statement: $r5 = new java.lang.RuntimeException 
(define-const var1783 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1783)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1783!1 String)
(assert (= var1783!1 ""))
(assert true)
(define-const var3414 String (append/672562846 var1783!1 "Wrong FieldDescriptor \u0022")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Wrong FieldDescriptor \"") 
(declare-const var1783!2 String)
(assert (= var1783!2 (str.++ var1783!1 "Wrong FieldDescriptor \u0022")))
(assert true)
(define-const var1481 String (getFullName/-1802894463 var234)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var1435 String (append/672562846 var3414 var1481)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3414!1 String)
(assert (= var3414!1 (str.++ var3414 var1481)))
(assert true)
(define-const var3605 String (append/672562846 var1435 "\u0022 used in message \u0022")) ; Statement: $r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" used in message \"") 
(declare-const var1435!1 String)
(assert (= var1435!1 (str.++ var1435 "\u0022 used in message \u0022")))
(define-const var515 var3633 (metadata/-1217004702 var3823)) ; Statement: $r10 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata metadata> 
(define-const var1836 var847 (descriptor/618212945 var515)) ; Statement: $r11 = $r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor> 
(assert true)
(define-const var2051 String (getFullName/-1302123061 var1836)) ; Statement: $r12 = virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var1119 String (append/672562846 var3605 var2051)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3605!1 String)
(assert (= var3605!1 (str.++ var3605 var2051)))
(assert true)
(define-const var2841 String (toString/-2075883882 var1119)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2150 var2841)) ; Statement: specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String)>($r15) 

(declare-const var2150!1 var1811)
(declare-const var2841!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getContainingType/-747419587=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), metadata/-1217004702=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry], com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata), descriptor/618212945=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), var1811-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFullName/-1802894463=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], java.lang.String), getFullName/-1302123061=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1662=com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry, var3823=r1, var1675=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var234=r0, var847=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var1021=$r4, var3633=com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata, var470=$r2, var3887=$r3, var1811=java.lang.RuntimeException, var2150=$r5, var1783=$r6, var3414=$r8, var1481=$r7, var1435=$r9, var3605=$r13, var515=$r10, var1836=$r11, var2051=$r12, var1119=$r14, var2841=$r15}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry=var1662, r1=var3823, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1675, r0=var234, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var847, $r4=var1021, com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata=var3633, $r2=var470, $r3=var3887, java.lang.RuntimeException=var1811, $r5=var2150, $r6=var1783, $r8=var3414, $r7=var1481, $r9=var1435, $r13=var3605, $r10=var515, $r11=var1836, $r12=var2051, $r14=var1119, $r15=var2841}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata metadata>;	$r3 = $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor>;	if $r4 == $r3 goto return;	$r5 = new java.lang.RuntimeException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Wrong FieldDescriptor \"");	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getFullName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" used in message \"");	$r10 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata metadata>;	$r11 = $r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor>;	$r12 = virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String)>($r15);	throw $r5
;block_num 2