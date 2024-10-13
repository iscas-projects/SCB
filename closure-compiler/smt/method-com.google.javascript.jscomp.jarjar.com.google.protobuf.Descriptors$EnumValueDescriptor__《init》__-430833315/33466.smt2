(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2312 0)
(declare-sort var3185 0)
(declare-sort var1576 0)
(declare-sort var2385 0)
(declare-sort var419 0)
(declare-sort var2714 0)
(declare-sort var2397 0)
(declare-sort var3543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/882680716 (var419 var2714) void)
(declare-fun cast-from-var2312-to-var419 (var2312) var419)
(declare-fun index/-1718100429 (var2312) Int)
(declare-fun proto/-1718100429 (var2312) var3185)
(declare-fun file/-1718100429 (var2312) var1576)
(declare-fun type/-1718100429 (var2312) var2385)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getFullName/-375304694 (var2385) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/1377605158 (var3185) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fullName/-1718100429 (var2312) String)
(declare-fun var1576_access$1500/493210752 (var1576) var3543)
(declare-fun addSymbol/1500440269 (var3543 var419) void)
(declare-fun addEnumValueByNumber/-1533500030 (var3543 var2312) void)
(declare-const null-var2312 var2312)
(declare-const null-var3185 var3185)
(declare-const null-var1576 var1576)
(declare-const null-var2385 var2385)
(declare-const null-Int Int)
(declare-const null-NullType var2397)
(declare-const null-var2714 var2714)
(declare-const var2700 var2312) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor 
(assert (not (= var2700 null-var2312)))
(declare-const var1957 var3185) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto 
(assert (not (= var1957 null-var3185)))
(declare-const var3947 var1576) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert (not (= var3947 null-var1576)))
(declare-const var1762 var2385) ; Statement: r3 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor 
(assert (not (= var1762 null-var2385)))
(declare-const var2926 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2926 null-Int)))
(assert true)
;(assert (<init>/882680716 (cast-from-var2312-to-var419 var2700) null-var2714)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(null) 

(declare-const var2700!1 var2312)
(declare-const var323 var2397)
(declare-const var2700!2 var2312)
(assert (not (= var2700!2 null-var2312)))
(assert (= (index/-1718100429 var2700!2) var2926)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: int index> = i0 
(declare-const var2700!3 var2312)
(assert (not (= var2700!3 null-var2312)))
(assert (= (proto/-1718100429 var2700!3) var1957)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto proto> = r1 
(declare-const var2700!4 var2312)
(assert (not (= var2700!4 null-var2312)))
(assert (= (file/-1718100429 var2700!4) var3947)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> = r2 
(declare-const var2700!5 var2312)
(assert (not (= var2700!5 null-var2312)))
(assert (= (type/-1718100429 var2700!5) var1762)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor type> = r3 
(define-const var3129 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3129)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3129!1 String)
(assert (= var3129!1 ""))
(assert true)
(define-const var2898 String (getFullName/-375304694 var1762)) ; Statement: $r5 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var2417 String (append/672562846 var3129!1 var2898)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3129!2 String)
(assert (= var3129!2 (str.++ var3129!1 var2898)))
(assert true)
(define-const var1197 String (append/-1166366385 var2417 46)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2417!1 String)
(assert (str.prefixof var2417 var2417!1))
(assert true)
(define-const var3987 String (getName/1377605158 var1957)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto: java.lang.String getName()>() 
(assert true)
(define-const var774 String (append/672562846 var1197 var3987)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1197!1 String)
(assert (= var1197!1 (str.++ var1197 var3987)))
(assert true)
(define-const var81 String (toString/-2075883882 var774)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2700!6 var2312)
(assert (not (= var2700!6 null-var2312)))
(assert (= (fullName/-1718100429 var2700!6) var81)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: java.lang.String fullName> = $r10 
(define-const var2523 var3543 (var1576_access$1500/493210752 var3947)) ; Statement: $r11 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>(r2) 
(assert true)
;(assert (addSymbol/1500440269 var2523 (cast-from-var2312-to-var419 var2700!6))) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: void addSymbol(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor)>(r0) 

(declare-const var2523!1 var3543)
(declare-const var2700!7 var2312)
(define-const var1350 var3543 (var1576_access$1500/493210752 var3947)) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>(r2) 
(assert true)
;(assert (addEnumValueByNumber/-1533500030 var1350 var2700!7)) ; Statement: virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: void addEnumValueByNumber(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor)>(r0) 

(declare-const var1350!1 var3543)
(declare-const var2700!8 var2312)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/882680716=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1], void), cast-from-var2312-to-var419=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), index/-1718100429=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor], int), proto/-1718100429=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto), file/-1718100429=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor), type/-1718100429=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getFullName/-375304694=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/1377605158=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fullName/-1718100429=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor], java.lang.String), var1576_access$1500/493210752=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool), addSymbol/1500440269=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor], void), addEnumValueByNumber/-1533500030=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor], void)}
; {var2312=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor, var2700=r0, var3185=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto, var1957=r1, var1576=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var3947=r2, var2385=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor, var1762=r3, var2926=i0, var419=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var2714=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1, var323=null, var2397=null_type, var3129=$r4, var2898=$r5, var2417=$r6, var1197=$r8, var3987=$r7, var774=$r9, var81=$r10, var3543=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var2523=$r11, var1350=$r12}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor=var2312, r0=var2700, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto=var3185, r1=var1957, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var1576, r2=var3947, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor=var2385, r3=var1762, i0=var2926, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var419, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1=var2714, null=var323, null_type=var2397, $r4=var3129, $r5=var2898, $r6=var2417, $r8=var1197, $r7=var3987, $r9=var774, $r10=var81, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var3543, $r11=var2523, $r12=var1350}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	r3 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor;	i0 := @parameter3: int;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(null);	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: int index> = i0;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto proto> = r1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor file> = r2;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor type> = r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor: java.lang.String getFullName()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor: java.lang.String fullName> = $r10;	$r11 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>(r2);	virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: void addSymbol(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor)>(r0);	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool access$1500(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>(r2);	virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: void addEnumValueByNumber(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumValueDescriptor)>(r0);	return
;block_num 1