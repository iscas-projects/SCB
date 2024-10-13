(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1751 0)
(declare-sort var1197 0)
(declare-sort var3332 0)
(declare-sort var2746 0)
(declare-sort var2174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getContainingType/-747419587 (var1197) var3332)
(declare-fun metadata/1512329273 (var1751) var2746)
(declare-fun descriptor/618212945 (var2746) var3332)
(declare-fun var2174-init () var2174)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFullName/-1802894463 (var1197) String)
(declare-fun getFullName/-1302123061 (var3332) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2174 String) void)
(declare-const null-var1751 var1751)
(declare-const null-var1197 var1197)
(declare-const var3568 var1751) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder 
(assert (not (= var3568 null-var1751)))
(declare-const var2522 var1197) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var2522 null-var1197)))
(assert true)
(define-const var1419 var3332 (getContainingType/-747419587 var2522)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>() 
(define-const var3844 var2746 (metadata/1512329273 var3568)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata metadata> 
(define-const var2711 var3332 (descriptor/618212945 var3844)) ; Statement: $r3 = $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor> 
 ; Statement: if $r4 == $r3 goto return 
(assert (not (= var1419 var2711))) ; Negate: Cond: $r4 == $r3  
(define-const var997 var2174 var2174-init) ; Statement: $r5 = new java.lang.RuntimeException 
(define-const var2113 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2113)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2113!1 String)
(assert (= var2113!1 ""))
(assert true)
(define-const var1799 String (append/672562846 var2113!1 "Wrong FieldDescriptor \u0022")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Wrong FieldDescriptor \"") 
(declare-const var2113!2 String)
(assert (= var2113!2 (str.++ var2113!1 "Wrong FieldDescriptor \u0022")))
(assert true)
(define-const var1075 String (getFullName/-1802894463 var2522)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var551 String (append/672562846 var1799 var1075)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1799!1 String)
(assert (= var1799!1 (str.++ var1799 var1075)))
(assert true)
(define-const var2013 String (append/672562846 var551 "\u0022 used in message \u0022")) ; Statement: $r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" used in message \"") 
(declare-const var551!1 String)
(assert (= var551!1 (str.++ var551 "\u0022 used in message \u0022")))
(define-const var1117 var2746 (metadata/1512329273 var3568)) ; Statement: $r10 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata metadata> 
(define-const var770 var3332 (descriptor/618212945 var1117)) ; Statement: $r11 = $r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor> 
(assert true)
(define-const var1367 String (getFullName/-1302123061 var770)) ; Statement: $r12 = virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var223 String (append/672562846 var2013 var1367)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2013!1 String)
(assert (= var2013!1 (str.++ var2013 var1367)))
(assert true)
(define-const var2706 String (toString/-2075883882 var223)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var997 var2706)) ; Statement: specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String)>($r15) 

(declare-const var997!1 var2174)
(declare-const var2706!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getContainingType/-747419587=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), metadata/1512329273=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder], com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata), descriptor/618212945=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), var2174-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFullName/-1802894463=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], java.lang.String), getFullName/-1302123061=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1751=com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder, var3568=r1, var1197=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var2522=r0, var3332=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var1419=$r4, var2746=com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata, var3844=$r2, var2711=$r3, var2174=java.lang.RuntimeException, var997=$r5, var2113=$r6, var1799=$r8, var1075=$r7, var551=$r9, var2013=$r13, var1117=$r10, var770=$r11, var1367=$r12, var223=$r14, var2706=$r15}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder=var1751, r1=var3568, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1197, r0=var2522, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var3332, $r4=var1419, com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata=var2746, $r2=var3844, $r3=var2711, java.lang.RuntimeException=var2174, $r5=var997, $r6=var2113, $r8=var1799, $r7=var1075, $r9=var551, $r13=var2013, $r10=var1117, $r11=var770, $r12=var1367, $r14=var223, $r15=var2706}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata metadata>;	$r3 = $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor>;	if $r4 == $r3 goto return;	$r5 = new java.lang.RuntimeException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Wrong FieldDescriptor \"");	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String getFullName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" used in message \"");	$r10 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata metadata>;	$r11 = $r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor>;	$r12 = virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String)>($r15);	throw $r5
;block_num 2