(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1108 0)
(declare-sort var3749 0)
(declare-sort var47 0)
(declare-sort var1602 0)
(declare-sort var797 0)
(declare-sort var809 0)
(declare-sort var2156 0)
(declare-sort var37 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1602_checkFieldNumber/-1315310787 (Int) void)
(declare-fun var797_checkNotNull/-1280601537 (var809 String) var809)
(declare-fun cast-from-var1108-to-var809 (var1108) var809)
(declare-fun cast-from-var3749-to-var809 (var3749) var809)
(declare-fun cast-from-ClassObject-to-var809 (ClassObject) var809)
(declare-fun isScalar/370512733 (var1108) Bool)
(declare-fun var1602-init () var1602)
(declare-fun <init>/254468600 (var1602 var2156 Int var1108 ClassObject var2156 Int Bool Bool var3749 ClassObject var809 var47 var2156) void)
(declare-const null-Int Int)
(declare-const null-var1108 var1108)
(declare-const null-var3749 var3749)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-var47 var47)
(declare-const null-NullType var37)
(declare-const null-var2156 var2156)
(declare-const null-var809 var809)
(declare-const var1997 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1997 null-Int)))
(declare-const var2518 var1108) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType 
(assert (not (= var2518 null-var1108)))
(declare-const var359 var3749) ; Statement: r1 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo 
(assert (not (= var359 null-var3749)))
(declare-const var3739 ClassObject) ; Statement: r2 := @parameter3: java.lang.Class 
(assert (not (= var3739 null-ClassObject)))
(declare-const var2251 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var2251 null-Bool)))
(declare-const var1871 var47) ; Statement: r4 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumVerifier 
(assert (not (= var1871 null-var47)))
;(assert (var1602_checkFieldNumber/-1315310787 var1997)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo: void checkFieldNumber(int)>(i0) 

(declare-const var1997!1 Int)
;(assert (var797_checkNotNull/-1280601537 (cast-from-var1108-to-var809 var2518) "fieldType")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.lang.Object checkNotNull(java.lang.Object,java.lang.String)>(r0, "fieldType") 

(declare-const var2518!1 var1108)
(declare-const var3733 String)
;(assert (var797_checkNotNull/-1280601537 (cast-from-var3749-to-var809 var359) "oneof")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.lang.Object checkNotNull(java.lang.Object,java.lang.String)>(r1, "oneof") 

(declare-const var359!1 var3749)
(declare-const var2661 String)
;(assert (var797_checkNotNull/-1280601537 (cast-from-ClassObject-to-var809 var3739) "oneofStoredType")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.lang.Object checkNotNull(java.lang.Object,java.lang.String)>(r2, "oneofStoredType") 

(declare-const var3739!1 ClassObject)
(declare-const var1622 String)
(assert true)
(define-const var2798 Bool (isScalar/370512733 var2518!1)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType: boolean isScalar()>() 
 ; Statement: if $z0 != 0 goto $r3 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo 
(assert (not (= (ite var2798 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3471 var1602 var1602-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo 
(assert true)
;(assert (<init>/254468600 var3471 null-var2156 var1997!1 var2518!1 null-ClassObject null-var2156 0 (ite (= 1 0) true false) var2251 var359!1 var3739!1 null-var809 var1871 null-var2156)) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo: void <init>(java.lang.reflect.Field,int,com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType,java.lang.Class,java.lang.reflect.Field,int,boolean,boolean,com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo,java.lang.Class,java.lang.Object,com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumVerifier,java.lang.reflect.Field)>(null, i0, r0, null, null, 0, 0, z1, r1, r2, null, r4, null) 

(declare-const var3471!1 var1602)
(declare-const var1859 var37)
(declare-const var1997!2 Int)
(declare-const var2518!2 var1108)
(declare-const var1859!1 var37)
(declare-const var1859!2 var37)
(declare-const var1908 Int)
(declare-const var1908!1 Int)
(declare-const var2251!1 Bool)
(declare-const var359!2 var3749)
(declare-const var3739!2 ClassObject)
(declare-const var1859!3 var37)
(declare-const var1871!1 var47)
(declare-const var1859!4 var37)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1602_checkFieldNumber/-1315310787=([int], void), var797_checkNotNull/-1280601537=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var1108-to-var809=([com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType], java.lang.Object), cast-from-var3749-to-var809=([com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo], java.lang.Object), cast-from-ClassObject-to-var809=([java.lang.Class], java.lang.Object), isScalar/370512733=([com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType], boolean), var1602-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo), <init>/254468600=([com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo, java.lang.reflect.Field, int, com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType, java.lang.Class, java.lang.reflect.Field, int, boolean, boolean, com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo, java.lang.Class, java.lang.Object, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumVerifier, java.lang.reflect.Field], void)}
; {var1997=i0, var1108=com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType, var2518=r0, var3749=com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo, var359=r1, var3739=r2, var2251=z1, var47=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumVerifier, var1871=r4, var1602=com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo, var797=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var809=java.lang.Object, var3733="fieldType", var2661="oneof", var1622="oneofStoredType", var2798=$z0, var3471=$r3, var2156=java.lang.reflect.Field, var1859=null, var37=null_type, var1908=0}
; {i0=var1997, com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType=var1108, r0=var2518, com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo=var3749, r1=var359, r2=var3739, z1=var2251, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumVerifier=var47, r4=var1871, com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo=var1602, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var797, java.lang.Object=var809, "fieldType"=var3733, "oneof"=var2661, "oneofStoredType"=var1622, $z0=var2798, $r3=var3471, java.lang.reflect.Field=var2156, null=var1859, null_type=var37, 0=var1908}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType;	r1 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo;	r2 := @parameter3: java.lang.Class;	z1 := @parameter4: boolean;	r4 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumVerifier;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo: void checkFieldNumber(int)>(i0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.lang.Object checkNotNull(java.lang.Object,java.lang.String)>(r0, "fieldType");	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.lang.Object checkNotNull(java.lang.Object,java.lang.String)>(r1, "oneof");	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.lang.Object checkNotNull(java.lang.Object,java.lang.String)>(r2, "oneofStoredType");	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType: boolean isScalar()>();	if $z0 != 0 goto $r3 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo;	$r3 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo;	specialinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldInfo: void <init>(java.lang.reflect.Field,int,com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldType,java.lang.Class,java.lang.reflect.Field,int,boolean,boolean,com.google.javascript.jscomp.jarjar.com.google.protobuf.OneofInfo,java.lang.Class,java.lang.Object,com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal$EnumVerifier,java.lang.reflect.Field)>(null, i0, r0, null, null, 0, 0, z1, r1, r2, null, r4, null);	return $r3
;block_num 2