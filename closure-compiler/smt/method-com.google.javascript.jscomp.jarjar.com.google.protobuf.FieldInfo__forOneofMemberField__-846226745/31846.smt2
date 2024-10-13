(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1289 0)
(declare-sort var3876 0)
(declare-sort var321 0)
(declare-sort var2031 0)
(declare-sort var323 0)
(declare-sort var1853 0)
(declare-sort var1907 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2031_checkFieldNumber/-1315310787 (Int) void)
(declare-fun var323_checkNotNull/-1280601537 (var1853 String) var1853)
(declare-fun cast-from-var1289-to-var1853 (var1289) var1853)
(declare-fun cast-from-var3876-to-var1853 (var3876) var1853)
(declare-fun cast-from-ClassObject-to-var1853 (ClassObject) var1853)
(declare-fun isScalar/370512733 (var1289) Bool)
(declare-fun var1907-init () var1907)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1853) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1907 String) void)
(declare-const null-Int Int)
(declare-const null-var1289 var1289)
(declare-const null-var3876 var3876)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-var321 var321)
(declare-const var3753 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3753 null-Int)))
(declare-const var724 var1289) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType 
(assert (not (= var724 null-var1289)))
(declare-const var713 var3876) ; Statement: r1 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo 
(assert (not (= var713 null-var3876)))
(declare-const var2157 ClassObject) ; Statement: r2 := @parameter3: java.lang.Class 
(assert (not (= var2157 null-ClassObject)))
(declare-const var2292 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var2292 null-Bool)))
(declare-const var3607 var321) ; Statement: r4 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumVerifier 
(assert (not (= var3607 null-var321)))
;(assert (var2031_checkFieldNumber/-1315310787 var3753)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo: void checkFieldNumber(int)>(i0) 

(declare-const var3753!1 Int)
;(assert (var323_checkNotNull/-1280601537 (cast-from-var1289-to-var1853 var724) "fieldType")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.lang.Object checkNotNull(java.lang.Object,java.lang.String)>(r0, "fieldType") 

(declare-const var724!1 var1289)
(declare-const var3229 String)
;(assert (var323_checkNotNull/-1280601537 (cast-from-var3876-to-var1853 var713) "oneof")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.lang.Object checkNotNull(java.lang.Object,java.lang.String)>(r1, "oneof") 

(declare-const var713!1 var3876)
(declare-const var679 String)
;(assert (var323_checkNotNull/-1280601537 (cast-from-ClassObject-to-var1853 var2157) "oneofStoredType")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.lang.Object checkNotNull(java.lang.Object,java.lang.String)>(r2, "oneofStoredType") 

(declare-const var2157!1 ClassObject)
(declare-const var638 String)
(assert true)
(define-const var2310 Bool (isScalar/370512733 var724!1)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType: boolean isScalar()>() 
 ; Statement: if $z0 != 0 goto $r3 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo 
(assert (not (not (= (ite var2310 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1159 var1907 var1907-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var319 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var319)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var319!1 String)
(assert (= var319!1 ""))
(assert true)
(define-const var3571 String (append/672562846 var319!1 "Oneof is only supported for scalar fields. Field ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Oneof is only supported for scalar fields. Field ") 
(declare-const var319!2 String)
(assert (= var319!2 (str.++ var319!1 "Oneof is only supported for scalar fields. Field ")))
(assert true)
(define-const var3201 String (append/-1001720160 var3571 var3753!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3571!1 String)
(assert (str.prefixof var3571 var3571!1))
(assert true)
(define-const var1034 String (append/672562846 var3201 " is of type ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is of type ") 
(declare-const var3201!1 String)
(assert (= var3201!1 (str.++ var3201 " is of type ")))
(assert true)
(define-const var2694 String (append/-1031950772 var1034 (cast-from-var1289-to-var1853 var724!1))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1034!1 String)
(assert (str.prefixof var1034 var1034!1))
(assert true)
(define-const var1551 String (toString/-2075883882 var2694)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1159 var1551)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1159!1 var1907)
(declare-const var1551!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2031_checkFieldNumber/-1315310787=([int], void), var323_checkNotNull/-1280601537=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var1289-to-var1853=([com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType], java.lang.Object), cast-from-var3876-to-var1853=([com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo], java.lang.Object), cast-from-ClassObject-to-var1853=([java.lang.Class], java.lang.Object), isScalar/370512733=([com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType], boolean), var1907-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3753=i0, var1289=com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType, var724=r0, var3876=com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo, var713=r1, var2157=r2, var2292=z1, var321=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumVerifier, var3607=r4, var2031=com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo, var323=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var1853=java.lang.Object, var3229="fieldType", var679="oneof", var638="oneofStoredType", var2310=$z0, var1907=java.lang.IllegalArgumentException, var1159=$r5, var319=$r6, var3571=$r7, var3201=$r8, var1034=$r9, var2694=$r10, var1551=$r11}
; {i0=var3753, com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType=var1289, r0=var724, com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo=var3876, r1=var713, r2=var2157, z1=var2292, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumVerifier=var321, r4=var3607, com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo=var2031, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var323, java.lang.Object=var1853, "fieldType"=var3229, "oneof"=var679, "oneofStoredType"=var638, $z0=var2310, java.lang.IllegalArgumentException=var1907, $r5=var1159, $r6=var319, $r7=var3571, $r8=var3201, $r9=var1034, $r10=var2694, $r11=var1551}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType;	r1 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo;	r2 := @parameter3: java.lang.Class;	z1 := @parameter4: boolean;	r4 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumVerifier;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo: void checkFieldNumber(int)>(i0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.lang.Object checkNotNull(java.lang.Object,java.lang.String)>(r0, "fieldType");	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.lang.Object checkNotNull(java.lang.Object,java.lang.String)>(r1, "oneof");	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.lang.Object checkNotNull(java.lang.Object,java.lang.String)>(r2, "oneofStoredType");	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType: boolean isScalar()>();	if $z0 != 0 goto $r3 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Oneof is only supported for scalar fields. Field ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is of type ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r5
;block_num 2