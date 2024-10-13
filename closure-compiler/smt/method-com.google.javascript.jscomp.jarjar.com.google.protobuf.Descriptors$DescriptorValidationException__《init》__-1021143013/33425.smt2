(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1375 0)
(declare-sort var2622 0)
(declare-sort var1764 0)
(declare-sort var200 0)
(declare-sort var296 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getFullName/2089644164 (var2622) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var200 String) void)
(declare-fun cast-from-var1375-to-var200 (var1375) var200)
(declare-fun name/-1710216037 (var1375) String)
(declare-fun toProto/329416953 (var2622) var296)
(declare-fun proto/-1710216037 (var1375) var296)
(declare-fun description/-1710216037 (var1375) String)
(declare-const null-var1375 var1375)
(declare-const null-var2622 var2622)
(declare-const null-String String)
(declare-const var3379 var1375) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException 
(assert (not (= var3379 null-var1375)))
(declare-const var2965 var2622) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor 
(assert (not (= var2965 null-var2622)))
(declare-const var2434 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2434 null-String)))
(define-const var805 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var805)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var805!1 String)
(assert (= var805!1 ""))
(assert true)
(define-const var1336 String (getFullName/2089644164 var2965)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var2456 String (append/672562846 var805!1 var1336)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var805!2 String)
(assert (= var805!2 (str.++ var805!1 var1336)))
(assert true)
(define-const var3726 String (append/672562846 var2456 ": ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2456!1 String)
(assert (= var2456!1 (str.++ var2456 ": ")))
(assert true)
(define-const var2498 String (append/672562846 var3726 var2434)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3726!1 String)
(assert (= var3726!1 (str.++ var3726 var2434)))
(assert true)
(define-const var1835 String (toString/-2075883882 var2498)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 (cast-from-var1375-to-var200 var3379) var1835)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r8) 

(declare-const var3379!1 var1375)
(declare-const var1835!1 String)
(assert true)
(define-const var3880 String (getFullName/2089644164 var2965)) ; Statement: $r9 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: java.lang.String getFullName()>() 
(declare-const var3379!2 var1375)
(assert (not (= var3379!2 null-var1375)))
(assert (= (name/-1710216037 var3379!2) var3880)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: java.lang.String name> = $r9 
(assert true)
(define-const var2671 var296 (toProto/329416953 var2965)) ; Statement: $r10 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Message toProto()>() 
(declare-const var3379!3 var1375)
(assert (not (= var3379!3 null-var1375)))
(assert (= (proto/-1710216037 var3379!3) var2671)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: com.google.javascript.jscomp.jarjar.com.google.protobuf.Message proto> = $r10 
(declare-const var3379!4 var1375)
(assert (not (= var3379!4 null-var1375)))
(assert (= (description/-1710216037 var3379!4) var2434)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: java.lang.String description> = r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getFullName/2089644164=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var1375-to-var200=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException], java.lang.Exception), name/-1710216037=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException], java.lang.String), toProto/329416953=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Message), proto/-1710216037=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException], com.google.javascript.jscomp.jarjar.com.google.protobuf.Message), description/-1710216037=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException], java.lang.String)}
; {var1375=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException, var3379=r0, var2622=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var2965=r2, var2434=r5, var1764=null_type, var805=$r1, var1336=$r3, var2456=$r4, var3726=$r6, var2498=$r7, var1835=$r8, var200=java.lang.Exception, var3880=$r9, var296=com.google.javascript.jscomp.jarjar.com.google.protobuf.Message, var2671=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException=var1375, r0=var3379, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var2622, r2=var2965, r5=var2434, null_type=var1764, $r1=var805, $r3=var1336, $r4=var2456, $r6=var3726, $r7=var2498, $r8=var1835, java.lang.Exception=var200, $r9=var3880, com.google.javascript.jscomp.jarjar.com.google.protobuf.Message=var296, $r10=var2671}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor;	r5 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: java.lang.String getFullName()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r8);	$r9 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: java.lang.String getFullName()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: java.lang.String name> = $r9;	$r10 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Message toProto()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: com.google.javascript.jscomp.jarjar.com.google.protobuf.Message proto> = $r10;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: java.lang.String description> = r5;	return
;block_num 1