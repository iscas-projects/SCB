(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2474 0)
(declare-sort var964 0)
(declare-sort var1591 0)
(declare-sort var1575 0)
(declare-sort var3870 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/-1045609669 (var2474) var1591)
(declare-fun var1591_access$1500/493210752 (var1591) var1575)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fullName/-1045609669 (var2474) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun findSymbol/-746875982 (var1575 String) var3870)
(declare-const null-var2474 var2474)
(declare-const null-String String)
(declare-const var1089 var2474) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var1089 null-var2474)))
(declare-const var2541 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2541 null-String)))
(define-const var1303 var1591 (file/-1045609669 var1089)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> 
(define-const var2824 var1575 (var1591_access$1500/493210752 var1303)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1) 
(define-const var1333 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1333)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1333!1 String)
(assert (= var1333!1 ""))
(define-const var1831 String (fullName/-1045609669 var1089)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String fullName> 
(assert true)
(define-const var33 String (append/672562846 var1333!1 var1831)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1333!2 String)
(assert (= var1333!2 (str.++ var1333!1 var1831)))
(assert true)
(define-const var577 String (append/-1166366385 var33 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var33!1 String)
(assert (str.prefixof var33 var33!1))
(assert true)
(define-const var292 String (append/672562846 var577 var2541)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var577!1 String)
(assert (= var577!1 (str.++ var577 var2541)))
(assert true)
(define-const var2995 String (toString/-2075883882 var292)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2638 var3870 (findSymbol/-746875982 var2824 var2995)) ; Statement: r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8) 
(define-const var1117 Bool false) ; Statement: $z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var1117 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {file/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var1591_access$1500/493210752=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fullName/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), findSymbol/-746875982=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor)}
; {var2474=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var1089=r0, var2541=r5, var964=null_type, var1591=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var1303=$r1, var1575=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var2824=$r9, var1333=$r2, var1831=$r3, var33=$r4, var577=$r6, var292=$r7, var2995=$r8, var3870=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var2638=r10, var1117=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2474, r0=var1089, r5=var2541, null_type=var964, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var1591, $r1=var1303, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var1575, $r9=var2824, $r2=var1333, $r3=var1831, $r4=var33, $r6=var577, $r7=var292, $r8=var2995, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var3870, r10=var2638, $z0=var1117}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	r5 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file>;	$r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String fullName>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8);	$z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	if $z0 == 0 goto return null;	return null
;block_num 2