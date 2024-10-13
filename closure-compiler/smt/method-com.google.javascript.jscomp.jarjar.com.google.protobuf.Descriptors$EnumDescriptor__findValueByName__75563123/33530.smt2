(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3750 0)
(declare-sort var3271 0)
(declare-sort var244 0)
(declare-sort var976 0)
(declare-sort var560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/2118672668 (var3750) var244)
(declare-fun var244_access$1500/493210752 (var244) var976)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fullName/2118672668 (var3750) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun findSymbol/-746875982 (var976 String) var560)
(declare-const null-var3750 var3750)
(declare-const null-String String)
(declare-const var914 var3750) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor 
(assert (not (= var914 null-var3750)))
(declare-const var707 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var707 null-String)))
(define-const var1363 var244 (file/2118672668 var914)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> 
(define-const var3553 var976 (var244_access$1500/493210752 var1363)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1) 
(define-const var267 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var267)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var267!1 String)
(assert (= var267!1 ""))
(define-const var3810 String (fullName/2118672668 var914)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: java.lang.String fullName> 
(assert true)
(define-const var656 String (append/672562846 var267!1 var3810)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var267!2 String)
(assert (= var267!2 (str.++ var267!1 var3810)))
(assert true)
(define-const var291 String (append/-1166366385 var656 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var656!1 String)
(assert (str.prefixof var656 var656!1))
(assert true)
(define-const var1997 String (append/672562846 var291 var707)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var291!1 String)
(assert (= var291!1 (str.++ var291 var707)))
(assert true)
(define-const var3814 String (toString/-2075883882 var1997)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2227 var560 (findSymbol/-746875982 var3553 var3814)) ; Statement: r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8) 
(define-const var752 Bool false) ; Statement: $z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var752 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {file/2118672668=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var244_access$1500/493210752=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fullName/2118672668=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), findSymbol/-746875982=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor)}
; {var3750=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor, var914=r0, var707=r5, var3271=null_type, var244=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var1363=$r1, var976=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var3553=$r9, var267=$r2, var3810=$r3, var656=$r4, var291=$r6, var1997=$r7, var3814=$r8, var560=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var2227=r10, var752=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor=var3750, r0=var914, r5=var707, null_type=var3271, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var244, $r1=var1363, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var976, $r9=var3553, $r2=var267, $r3=var3810, $r4=var656, $r6=var291, $r7=var1997, $r8=var3814, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var560, r10=var2227, $z0=var752}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor;	r5 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file>;	$r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: java.lang.String fullName>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8);	$z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor;	if $z0 == 0 goto return null;	return null
;block_num 2