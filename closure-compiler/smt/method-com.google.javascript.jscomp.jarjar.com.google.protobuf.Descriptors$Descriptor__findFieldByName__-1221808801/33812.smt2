(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var575 0)
(declare-sort var1213 0)
(declare-sort var617 0)
(declare-sort var2892 0)
(declare-sort var2536 0)
(declare-sort var3960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/-1045609669 (var575) var617)
(declare-fun var617_access$1500/493210752 (var617) var2892)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fullName/-1045609669 (var575) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun findSymbol/-746875982 (var2892 String) var2536)
(declare-fun cast-from-var2536-to-var3960 (var2536) var3960)
(declare-const null-var575 var575)
(declare-const null-String String)
(declare-const var1057 var575) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var1057 null-var575)))
(declare-const var2334 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2334 null-String)))
(define-const var3462 var617 (file/-1045609669 var1057)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> 
(define-const var1444 var2892 (var617_access$1500/493210752 var3462)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1) 
(define-const var3104 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3104)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3104!1 String)
(assert (= var3104!1 ""))
(define-const var2049 String (fullName/-1045609669 var1057)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String fullName> 
(assert true)
(define-const var2481 String (append/672562846 var3104!1 var2049)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3104!2 String)
(assert (= var3104!2 (str.++ var3104!1 var2049)))
(assert true)
(define-const var990 String (append/-1166366385 var2481 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2481!1 String)
(assert (str.prefixof var2481 var2481!1))
(assert true)
(define-const var3046 String (append/672562846 var990 var2334)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var990!1 String)
(assert (= var990!1 (str.++ var990 var2334)))
(assert true)
(define-const var3450 String (toString/-2075883882 var3046)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3460 var2536 (findSymbol/-746875982 var1444 var3450)) ; Statement: r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8) 
(define-const var481 Bool false) ; Statement: $z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var481 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3506 var3960 (cast-from-var2536-to-var3960 var3460)) ; Statement: $r11 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor) r10 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {file/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var617_access$1500/493210752=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fullName/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), findSymbol/-746875982=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), cast-from-var2536-to-var3960=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor)}
; {var575=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var1057=r0, var2334=r5, var1213=null_type, var617=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var3462=$r1, var2892=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var1444=$r9, var3104=$r2, var2049=$r3, var2481=$r4, var990=$r6, var3046=$r7, var3450=$r8, var2536=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var3460=r10, var481=$z0, var3960=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var3506=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var575, r0=var1057, r5=var2334, null_type=var1213, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var617, $r1=var3462, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var2892, $r9=var1444, $r2=var3104, $r3=var2049, $r4=var2481, $r6=var990, $r7=var3046, $r8=var3450, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var2536, r10=var3460, $z0=var481, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var3960, $r11=var3506}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	r5 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file>;	$r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String fullName>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8);	$z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	if $z0 == 0 goto return null;	$r11 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor) r10;	return $r11
;block_num 2