(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1232 0)
(declare-sort var496 0)
(declare-sort var3386 0)
(declare-sort var2127 0)
(declare-sort var3464 0)
(declare-sort var2713 0)
(declare-sort var3980 0)
(declare-sort var3552 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/882680716 (var3464 var2713) void)
(declare-fun cast-from-var1232-to-var3464 (var1232) var3464)
(declare-fun index/-1721105924 (var1232) Int)
(declare-fun proto/-1721105924 (var1232) var496)
(declare-fun file/-1721105924 (var1232) var3386)
(declare-fun service/-1721105924 (var1232) var2127)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getFullName/-441936666 (var2127) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/197549531 (var496) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fullName/-1721105924 (var1232) String)
(declare-fun var3386_access$1500/493210752 (var3386) var3552)
(declare-fun addSymbol/1500440269 (var3552 var3464) void)
(declare-const null-var1232 var1232)
(declare-const null-var496 var496)
(declare-const null-var3386 var3386)
(declare-const null-var2127 var2127)
(declare-const null-Int Int)
(declare-const null-NullType var3980)
(declare-const null-var2713 var2713)
(declare-const var2929 var1232) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor 
(assert (not (= var2929 null-var1232)))
(declare-const var1042 var496) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto 
(assert (not (= var1042 null-var496)))
(declare-const var2228 var3386) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert (not (= var2228 null-var3386)))
(declare-const var2337 var2127) ; Statement: r3 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor 
(assert (not (= var2337 null-var2127)))
(declare-const var2519 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2519 null-Int)))
(assert true)
;(assert (<init>/882680716 (cast-from-var1232-to-var3464 var2929) null-var2713)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(null) 

(declare-const var2929!1 var1232)
(declare-const var1691 var3980)
(declare-const var2929!2 var1232)
(assert (not (= var2929!2 null-var1232)))
(assert (= (index/-1721105924 var2929!2) var2519)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: int index> = i0 
(declare-const var2929!3 var1232)
(assert (not (= var2929!3 null-var1232)))
(assert (= (proto/-1721105924 var2929!3) var1042)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto proto> = r1 
(declare-const var2929!4 var1232)
(assert (not (= var2929!4 null-var1232)))
(assert (= (file/-1721105924 var2929!4) var2228)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> = r2 
(declare-const var2929!5 var1232)
(assert (not (= var2929!5 null-var1232)))
(assert (= (service/-1721105924 var2929!5) var2337)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor service> = r3 
(define-const var1579 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1579)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1579!1 String)
(assert (= var1579!1 ""))
(assert true)
(define-const var3922 String (getFullName/-441936666 var2337)) ; Statement: $r5 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var232 String (append/672562846 var1579!1 var3922)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1579!2 String)
(assert (= var1579!2 (str.++ var1579!1 var3922)))
(assert true)
(define-const var512 String (append/-1166366385 var232 46)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var232!1 String)
(assert (str.prefixof var232 var232!1))
(assert true)
(define-const var3100 String (getName/197549531 var1042)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto: java.lang.String getName()>() 
(assert true)
(define-const var1491 String (append/672562846 var512 var3100)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var512!1 String)
(assert (= var512!1 (str.++ var512 var3100)))
(assert true)
(define-const var1504 String (toString/-2075883882 var1491)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2929!6 var1232)
(assert (not (= var2929!6 null-var1232)))
(assert (= (fullName/-1721105924 var2929!6) var1504)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: java.lang.String fullName> = $r10 
(define-const var2524 var3552 (var3386_access$1500/493210752 var2228)) ; Statement: $r11 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>(r2) 
(assert true)
;(assert (addSymbol/1500440269 var2524 (cast-from-var1232-to-var3464 var2929!6))) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: void addSymbol(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor)>(r0) 

(declare-const var2524!1 var3552)
(declare-const var2929!7 var1232)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/882680716=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1], void), cast-from-var1232-to-var3464=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), index/-1721105924=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor], int), proto/-1721105924=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto), file/-1721105924=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), service/-1721105924=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getFullName/-441936666=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/197549531=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fullName/-1721105924=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor], java.lang.String), var3386_access$1500/493210752=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), addSymbol/1500440269=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor], void)}
; {var1232=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor, var2929=r0, var496=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto, var1042=r1, var3386=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var2228=r2, var2127=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor, var2337=r3, var2519=i0, var3464=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var2713=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1, var1691=null, var3980=null_type, var1579=$r4, var3922=$r5, var232=$r6, var512=$r8, var3100=$r7, var1491=$r9, var1504=$r10, var3552=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var2524=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor=var1232, r0=var2929, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto=var496, r1=var1042, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var3386, r2=var2228, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor=var2127, r3=var2337, i0=var2519, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var3464, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1=var2713, null=var1691, null_type=var3980, $r4=var1579, $r5=var3922, $r6=var232, $r8=var512, $r7=var3100, $r9=var1491, $r10=var1504, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var3552, $r11=var2524}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	r3 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor;	i0 := @parameter3: int;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(null);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: int index> = i0;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto proto> = r1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> = r2;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor service> = r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$ServiceDescriptor: java.lang.String getFullName()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$MethodDescriptorProto: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$MethodDescriptor: java.lang.String fullName> = $r10;	$r11 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>(r2);	virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: void addSymbol(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor)>(r0);	return
;block_num 1