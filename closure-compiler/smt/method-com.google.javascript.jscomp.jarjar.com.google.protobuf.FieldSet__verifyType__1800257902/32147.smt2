(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1790 0)
(declare-sort var3594 0)
(declare-sort var3027 0)
(declare-sort var630 0)
(declare-sort var2363 0)
(declare-sort var1351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3594_getLiteType/1707797790 (var3594) var630)
(declare-fun var1790_isValidType/-1829317390 (var630 var3027) Bool)
(declare-fun var2363-init () var2363)
(declare-fun arr-var3027-init () (Array Int var3027))
(declare-fun var3594_getNumber/-339457160 (var3594) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3027 (Int) var3027)
(declare-fun getJavaType/-160023923 (var630) var1351)
(declare-fun cast-from-var1351-to-var3027 (var1351) var3027)
(declare-fun getClass/1258963082 (var3027) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var3027 (String) var3027)
(declare-fun String_format/1339386452 (String (Array Int var3027)) String)
(declare-fun <init>/875830710 (var2363 String) void)
(declare-const null-var1790 var1790)
(declare-const null-var3594 var3594)
(declare-const null-var3027 var3027)
(declare-const null-__Array__Int__var3027__ (Array Int var3027))
(declare-const var1943 var1790) ; Statement: r11 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet 
(assert (not (= var1943 null-var1790)))
(declare-const var2530 var3594) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite 
(assert (not (= var2530 null-var3594)))
(declare-const var2662 var3027) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var2662 null-var3027)))
(define-const var3981 var630 (var3594_getLiteType/1707797790 var2530)) ; Statement: $r2 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>() 
(define-const var902 Bool (var1790_isValidType/-1829317390 var3981 var2662)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet: boolean isValidType(com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType,java.lang.Object)>($r2, r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var902 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3668 var2363 var2363-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var1091 (Array Int var3027) arr-var3027-init) ; Statement: $r4 = newarray (java.lang.Object)[3] 
(define-const var948 Int (var3594_getNumber/-339457160 var2530)) ; Statement: $i0 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite: int getNumber()>() 
(define-const var1636 Int (Int_valueOf/-1371140006 var948)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var1091!1 (Array Int var3027))
(assert (not (= var1091!1 null-__Array__Int__var3027__)))
(assert (= (select var1091!1 0) (cast-from-Int-to-var3027 var1636))) ; Statement: $r4[0] = $r5 
(define-const var1640 var630 (var3594_getLiteType/1707797790 var2530)) ; Statement: $r6 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>() 
(assert true)
(define-const var3839 var1351 (getJavaType/-160023923 var1640)) ; Statement: $r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$JavaType getJavaType()>() 
(declare-const var1091!2 (Array Int var3027))
(assert (not (= var1091!2 null-__Array__Int__var3027__)))
(assert (= (select var1091!2 1) (cast-from-var1351-to-var3027 var3839))) ; Statement: $r4[1] = $r7 
(assert true)
(define-const var3535 ClassObject (getClass/1258963082 var2662)) ; Statement: $r8 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3100 String (getName/-1958580599 var3535)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1091!3 (Array Int var3027))
(assert (not (= var1091!3 null-__Array__Int__var3027__)))
(assert (= (select var1091!3 2) (cast-from-String-to-var3027 var3100))) ; Statement: $r4[2] = $r9 
(define-const var1783 String (String_format/1339386452 "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n" var1091!3)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", $r4) 
(assert true)
;(assert (<init>/875830710 var3668 var1783)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var3668!1 var2363)
(declare-const var1783!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3594_getLiteType/1707797790=([com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite], com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType), var1790_isValidType/-1829317390=([com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType, java.lang.Object], boolean), var2363-init=([], java.lang.IllegalArgumentException), arr-var3027-init=([], java.lang.Object[]), var3594_getNumber/-339457160=([com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3027=([java.lang.Integer], java.lang.Object), getJavaType/-160023923=([com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType], com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$JavaType), cast-from-var1351-to-var3027=([com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$JavaType], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var3027=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1790=com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet, var1943=r11, var3594=com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite, var2530=r0, var3027=java.lang.Object, var2662=r1, var630=com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType, var3981=$r2, var902=$z0, var2363=java.lang.IllegalArgumentException, var3668=$r3, var1091=$r4, var948=$i0, var1636=$r5, var1640=$r6, var1351=com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$JavaType, var3839=$r7, var3535=$r8, var3100=$r9, var1783=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet=var1790, r11=var1943, com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite=var3594, r0=var2530, java.lang.Object=var3027, r1=var2662, com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType=var630, $r2=var3981, $z0=var902, java.lang.IllegalArgumentException=var2363, $r3=var3668, $r4=var1091, $i0=var948, $r5=var1636, $r6=var1640, com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$JavaType=var1351, $r7=var3839, $r8=var3535, $r9=var3100, $r10=var1783}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite;	r1 := @parameter1: java.lang.Object;	$r2 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>();	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet: boolean isValidType(com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType,java.lang.Object)>($r2, r1);	if $z0 != 0 goto return;	$r3 = new java.lang.IllegalArgumentException;	$r4 = newarray (java.lang.Object)[3];	$i0 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite: int getNumber()>();	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r4[0] = $r5;	$r6 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>();	$r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$JavaType getJavaType()>();	$r4[1] = $r7;	$r8 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r4[2] = $r9;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", $r4);	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r3
;block_num 2