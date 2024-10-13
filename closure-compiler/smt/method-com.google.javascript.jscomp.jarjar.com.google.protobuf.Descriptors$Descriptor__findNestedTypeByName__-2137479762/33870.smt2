(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2802 0)
(declare-sort var3979 0)
(declare-sort var2969 0)
(declare-sort var2418 0)
(declare-sort var3873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/-1045609669 (var2802) var2969)
(declare-fun var2969_access$1500/493210752 (var2969) var2418)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fullName/-1045609669 (var2802) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun findSymbol/-746875982 (var2418 String) var3873)
(declare-fun cast-from-var3873-to-var2802 (var3873) var2802)
(declare-const null-var2802 var2802)
(declare-const null-String String)
(declare-const var2256 var2802) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var2256 null-var2802)))
(declare-const var2097 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2097 null-String)))
(define-const var7 var2969 (file/-1045609669 var2256)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> 
(define-const var2750 var2418 (var2969_access$1500/493210752 var7)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1) 
(define-const var3959 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3959)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3959!1 String)
(assert (= var3959!1 ""))
(define-const var2525 String (fullName/-1045609669 var2256)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String fullName> 
(assert true)
(define-const var1429 String (append/672562846 var3959!1 var2525)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3959!2 String)
(assert (= var3959!2 (str.++ var3959!1 var2525)))
(assert true)
(define-const var21 String (append/-1166366385 var1429 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1429!1 String)
(assert (str.prefixof var1429 var1429!1))
(assert true)
(define-const var2849 String (append/672562846 var21 var2097)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var21!1 String)
(assert (= var21!1 (str.++ var21 var2097)))
(assert true)
(define-const var208 String (toString/-2075883882 var2849)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2888 var3873 (findSymbol/-746875982 var2750 var208)) ; Statement: r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8) 
(define-const var2182 Bool false) ; Statement: $z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var2182 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2055 var2802 (cast-from-var3873-to-var2802 var2888)) ; Statement: $r11 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor) r10 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {file/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var2969_access$1500/493210752=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fullName/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), findSymbol/-746875982=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), cast-from-var3873-to-var2802=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)}
; {var2802=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var2256=r0, var2097=r5, var3979=null_type, var2969=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var7=$r1, var2418=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var2750=$r9, var3959=$r2, var2525=$r3, var1429=$r4, var21=$r6, var2849=$r7, var208=$r8, var3873=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var2888=r10, var2182=$z0, var2055=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2802, r0=var2256, r5=var2097, null_type=var3979, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var2969, $r1=var7, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var2418, $r9=var2750, $r2=var3959, $r3=var2525, $r4=var1429, $r6=var21, $r7=var2849, $r8=var208, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var3873, r10=var2888, $z0=var2182, $r11=var2055}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	r5 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file>;	$r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String fullName>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8);	$z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	if $z0 == 0 goto return null;	$r11 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor) r10;	return $r11
;block_num 2