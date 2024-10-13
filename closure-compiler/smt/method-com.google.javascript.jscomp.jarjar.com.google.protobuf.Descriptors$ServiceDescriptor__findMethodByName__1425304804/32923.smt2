(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var276 0)
(declare-sort var675 0)
(declare-sort var1439 0)
(declare-sort var2439 0)
(declare-sort var3282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/-1958098248 (var276) var1439)
(declare-fun var1439_access$1500/493210752 (var1439) var2439)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fullName/-1958098248 (var276) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun findSymbol/-746875982 (var2439 String) var3282)
(declare-const null-var276 var276)
(declare-const null-String String)
(declare-const var3736 var276) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor 
(assert (not (= var3736 null-var276)))
(declare-const var2188 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2188 null-String)))
(define-const var509 var1439 (file/-1958098248 var3736)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> 
(define-const var1302 var2439 (var1439_access$1500/493210752 var509)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1) 
(define-const var3069 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3069)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3069!1 String)
(assert (= var3069!1 ""))
(define-const var1697 String (fullName/-1958098248 var3736)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor: java.lang.String fullName> 
(assert true)
(define-const var599 String (append/672562846 var3069!1 var1697)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3069!2 String)
(assert (= var3069!2 (str.++ var3069!1 var1697)))
(assert true)
(define-const var1318 String (append/-1166366385 var599 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var599!1 String)
(assert (str.prefixof var599 var599!1))
(assert true)
(define-const var393 String (append/672562846 var1318 var2188)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1318!1 String)
(assert (= var1318!1 (str.++ var1318 var2188)))
(assert true)
(define-const var2279 String (toString/-2075883882 var393)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3845 var3282 (findSymbol/-746875982 var1302 var2279)) ; Statement: r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8) 
(define-const var305 Bool false) ; Statement: $z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var305 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {file/-1958098248=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), var1439_access$1500/493210752=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fullName/-1958098248=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), findSymbol/-746875982=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor)}
; {var276=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor, var3736=r0, var2188=r5, var675=null_type, var1439=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var509=$r1, var2439=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var1302=$r9, var3069=$r2, var1697=$r3, var599=$r4, var1318=$r6, var393=$r7, var2279=$r8, var3282=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var3845=r10, var305=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor=var276, r0=var3736, r5=var2188, null_type=var675, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var1439, $r1=var509, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var2439, $r9=var1302, $r2=var3069, $r3=var1697, $r4=var599, $r6=var1318, $r7=var393, $r8=var2279, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var3282, r10=var3845, $z0=var305}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor;	r5 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file>;	$r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor: java.lang.String fullName>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String)>($r8);	$z0 = r10 instanceof com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor;	if $z0 == 0 goto return null;	return null
;block_num 2