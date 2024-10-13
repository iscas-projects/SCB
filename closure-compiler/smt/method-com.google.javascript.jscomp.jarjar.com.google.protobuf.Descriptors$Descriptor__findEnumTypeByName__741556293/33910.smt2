(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3103 0)
(declare-sort var472 0)
(declare-sort var2871 0)
(declare-sort var335 0)
(declare-sort var3707 0)
(declare-sort var3529 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/-1045609669 (var3103) var2871)
(declare-fun var2871_access$1500/493210752 (var2871) var335)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fullName/-1045609669 (var3103) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun findSymbol/-746875982 (var335 String) var3707)
(declare-fun cast-from-var3707-to-var3529 (var3707) var3529)
(declare-const null-var3103 var3103)
(declare-const null-String String)
(declare-const var1645 var3103) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var1645 null-var3103)))
(declare-const var3994 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3994 null-String)))
(define-const var1227 var2871 (file/-1045609669 var1645)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> 
(define-const var2408 var335 (var2871_access$1500/493210752 var1227)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1) 
(define-const var18 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var18)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var18!1 String)
(assert (= var18!1 ""))
(define-const var672 String (fullName/-1045609669 var1645)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String fullName> 
(assert true)
(define-const var3091 String (append/672562846 var18!1 var672)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var18!2 String)
(assert (= var18!2 (str.++ var18!1 var672)))
(assert true)
(define-const var1592 String (append/-1166366385 var3091 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3091!1 String)
(assert (str.prefixof var3091 var3091!1))
(assert true)
(define-const var3508 String (append/672562846 var1592 var3994)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1592!1 String)
(assert (= var1592!1 (str.++ var1592 var3994)))
(assert true)
(define-const var141 String (toString/-2075883882 var3508)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var390 var3707 (findSymbol/-746875982 var2408 var141)) ; Statement: r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8) 
(define-const var1160 Bool false) ; Statement: $z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var1160 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var101 var3529 (cast-from-var3707-to-var3529 var390)) ; Statement: $r11 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor) r10 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {file/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var2871_access$1500/493210752=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fullName/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), findSymbol/-746875982=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), cast-from-var3707-to-var3529=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor)}
; {var3103=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var1645=r0, var3994=r5, var472=null_type, var2871=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var1227=$r1, var335=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var2408=$r9, var18=$r2, var672=$r3, var3091=$r4, var1592=$r6, var3508=$r7, var141=$r8, var3707=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var390=r10, var1160=$z0, var3529=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor, var101=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var3103, r0=var1645, r5=var3994, null_type=var472, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var2871, $r1=var1227, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var335, $r9=var2408, $r2=var18, $r3=var672, $r4=var3091, $r6=var1592, $r7=var3508, $r8=var141, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var3707, r10=var390, $z0=var1160, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor=var3529, $r11=var101}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	r5 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file>;	$r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String fullName>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8);	$z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor;	if $z0 == 0 goto return null;	$r11 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor) r10;	return $r11
;block_num 2