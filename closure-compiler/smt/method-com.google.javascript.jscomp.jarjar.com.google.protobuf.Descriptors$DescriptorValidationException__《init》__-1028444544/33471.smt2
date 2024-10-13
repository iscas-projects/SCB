(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var69 0)
(declare-sort var3352 0)
(declare-sort var3108 0)
(declare-sort var3827 0)
(declare-sort var2753 0)
(declare-sort var285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/107793982 (var3352) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var3827 String) void)
(declare-fun cast-from-var69-to-var3827 (var69) var3827)
(declare-fun name/-1710216037 (var69) String)
(declare-fun toProto/2003362200 (var3352) var2753)
(declare-fun cast-from-var2753-to-var285 (var2753) var285)
(declare-fun proto/-1710216037 (var69) var285)
(declare-fun description/-1710216037 (var69) String)
(declare-const null-var69 var69)
(declare-const null-var3352 var3352)
(declare-const null-String String)
(declare-const var2914 var69) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException 
(assert (not (= var2914 null-var69)))
(declare-const var2707 var3352) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert (not (= var2707 null-var3352)))
(declare-const var3331 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3331 null-String)))
(define-const var293 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var293)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var293!1 String)
(assert (= var293!1 ""))
(assert true)
(define-const var1450 String (getName/107793982 var2707)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var3061 String (append/672562846 var293!1 var1450)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var293!2 String)
(assert (= var293!2 (str.++ var293!1 var1450)))
(assert true)
(define-const var3906 String (append/672562846 var3061 ": ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3061!1 String)
(assert (= var3061!1 (str.++ var3061 ": ")))
(assert true)
(define-const var2417 String (append/672562846 var3906 var3331)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3906!1 String)
(assert (= var3906!1 (str.++ var3906 var3331)))
(assert true)
(define-const var927 String (toString/-2075883882 var2417)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 (cast-from-var69-to-var3827 var2914) var927)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r8) 

(declare-const var2914!1 var69)
(declare-const var927!1 String)
(assert true)
(define-const var1759 String (getName/107793982 var2707)) ; Statement: $r9 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: java.lang.String getName()>() 
(declare-const var2914!2 var69)
(assert (not (= var2914!2 null-var69)))
(assert (= (name/-1710216037 var2914!2) var1759)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: java.lang.String name> = $r9 
(assert true)
(define-const var2070 var2753 (toProto/2003362200 var2707)) ; Statement: $r10 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto toProto()>() 
(declare-const var2914!3 var69)
(assert (not (= var2914!3 null-var69)))
(assert (= (proto/-1710216037 var2914!3) (cast-from-var2753-to-var285 var2070))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: com.google.javascript.jscomp.jarjar.com.google.protobuf.Message proto> = $r10 
(declare-const var2914!4 var69)
(assert (not (= var2914!4 null-var69)))
(assert (= (description/-1710216037 var2914!4) var3331)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: java.lang.String description> = r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/107793982=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var69-to-var3827=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException], java.lang.Exception), name/-1710216037=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException], java.lang.String), toProto/2003362200=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto), cast-from-var2753-to-var285=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto], com.google.javascript.jscomp.jarjar.com.google.protobuf.Message), proto/-1710216037=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException], com.google.javascript.jscomp.jarjar.com.google.protobuf.Message), description/-1710216037=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException], java.lang.String)}
; {var69=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException, var2914=r0, var3352=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var2707=r2, var3331=r5, var3108=null_type, var293=$r1, var1450=$r3, var3061=$r4, var3906=$r6, var2417=$r7, var927=$r8, var3827=java.lang.Exception, var1759=$r9, var2753=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto, var2070=$r10, var285=com.google.javascript.jscomp.jarjar.com.google.protobuf.Message}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException=var69, r0=var2914, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var3352, r2=var2707, r5=var3331, null_type=var3108, $r1=var293, $r3=var1450, $r4=var3061, $r6=var3906, $r7=var2417, $r8=var927, java.lang.Exception=var3827, $r9=var1759, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto=var2753, $r10=var2070, com.google.javascript.jscomp.jarjar.com.google.protobuf.Message=var285}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	r5 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: java.lang.String getName()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r8);	$r9 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: java.lang.String getName()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: java.lang.String name> = $r9;	$r10 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto toProto()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: com.google.javascript.jscomp.jarjar.com.google.protobuf.Message proto> = $r10;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: java.lang.String description> = r5;	return
;block_num 1