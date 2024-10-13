(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1361 0)
(declare-sort var3973 0)
(declare-sort var1833 0)
(declare-sort var3138 0)
(declare-sort var3814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/-1045609669 (var1361) var1833)
(declare-fun var1833_access$1500/493210752 (var1833) var3138)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fullName/-1045609669 (var1361) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun findSymbol/-746875982 (var3138 String) var3814)
(declare-const null-var1361 var1361)
(declare-const null-String String)
(declare-const var2286 var1361) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var2286 null-var1361)))
(declare-const var1832 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1832 null-String)))
(define-const var2324 var1833 (file/-1045609669 var2286)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> 
(define-const var1421 var3138 (var1833_access$1500/493210752 var2324)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1) 
(define-const var2451 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2451)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2451!1 String)
(assert (= var2451!1 ""))
(define-const var1589 String (fullName/-1045609669 var2286)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String fullName> 
(assert true)
(define-const var3251 String (append/672562846 var2451!1 var1589)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2451!2 String)
(assert (= var2451!2 (str.++ var2451!1 var1589)))
(assert true)
(define-const var3726 String (append/-1166366385 var3251 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3251!1 String)
(assert (str.prefixof var3251 var3251!1))
(assert true)
(define-const var2795 String (append/672562846 var3726 var1832)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3726!1 String)
(assert (= var3726!1 (str.++ var3726 var1832)))
(assert true)
(define-const var3353 String (toString/-2075883882 var2795)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1444 var3814 (findSymbol/-746875982 var1421 var3353)) ; Statement: r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8) 
(define-const var2944 Bool false) ; Statement: $z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var2944 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {file/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var1833_access$1500/493210752=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fullName/-1045609669=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), findSymbol/-746875982=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor)}
; {var1361=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var2286=r0, var1832=r5, var3973=null_type, var1833=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var2324=$r1, var3138=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var1421=$r9, var2451=$r2, var1589=$r3, var3251=$r4, var3726=$r6, var2795=$r7, var3353=$r8, var3814=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var1444=r10, var2944=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var1361, r0=var2286, r5=var1832, null_type=var3973, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var1833, $r1=var2324, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var3138, $r9=var1421, $r2=var2451, $r3=var1589, $r4=var3251, $r6=var3726, $r7=var2795, $r8=var3353, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var3814, r10=var1444, $z0=var2944}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	r5 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file>;	$r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String fullName>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8);	$z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	if $z0 == 0 goto return null;	return null
;block_num 2