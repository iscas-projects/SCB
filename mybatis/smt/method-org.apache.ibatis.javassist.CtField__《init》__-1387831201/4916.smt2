(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1084 0)
(declare-sort var1503 0)
(declare-sort var166 0)
(declare-sort var491 0)
(declare-sort var2427 0)
(declare-sort var1874 0)
(declare-sort var2373 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1027843989 (var491 var166) void)
(declare-fun cast-from-var1084-to-var491 (var1084) var491)
(declare-fun getClassFile2/769767517 (var166) var2427)
(declare-fun var1874-init () var1874)
(declare-fun getConstPool/-1380712921 (var2427) var2373)
(declare-fun <init>/-1518717466 (var1874 var2373 String String) void)
(declare-fun fieldInfo/-1703048415 (var1084) var1874)
(declare-const null-var1084 var1084)
(declare-const null-String String)
(declare-const null-var166 var166)
(declare-const null-var2427 var2427)
(declare-const var1710 var1084) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtField 
(assert (not (= var1710 null-var1084)))
(declare-const var262 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var262 null-String)))
(declare-const var1735 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1735 null-String)))
(declare-const var2423 var166) ; Statement: r1 := @parameter2: org.apache.ibatis.javassist.CtClass 
(assert (not (= var2423 null-var166)))
(assert true)
;(assert (<init>/1027843989 (cast-from-var1084-to-var491 var1710) var2423)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.CtMember: void <init>(org.apache.ibatis.javassist.CtClass)>(r1) 

(declare-const var1710!1 var1084)
(declare-const var2423!1 var166)
(assert true)
(define-const var1469 var2427 (getClassFile2/769767517 var2423!1)) ; Statement: r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.bytecode.ClassFile getClassFile2()>() 
 ; Statement: if r2 != null goto $r3 = new org.apache.ibatis.javassist.bytecode.FieldInfo 
(assert (not (= var1469 null-var2427))) ; Cond: r2 != null 
(define-const var2996 var1874 var1874-init) ; Statement: $r3 = new org.apache.ibatis.javassist.bytecode.FieldInfo 
(assert true)
(define-const var3638 var2373 (getConstPool/-1380712921 var1469)) ; Statement: $r6 = virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.ClassFile: org.apache.ibatis.javassist.bytecode.ConstPool getConstPool()>() 
(assert true)
;(assert (<init>/-1518717466 var2996 var3638 var1735 var262)) ; Statement: specialinvoke $r3.<org.apache.ibatis.javassist.bytecode.FieldInfo: void <init>(org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.String,java.lang.String)>($r6, r4, r5) 

(declare-const var2996!1 var1874)
(declare-const var3638!1 var2373)
(declare-const var1735!1 String)
(declare-const var262!1 String)
(declare-const var1710!2 var1084)
(assert (not (= var1710!2 null-var1084)))
(assert (= (fieldInfo/-1703048415 var1710!2) var2996!1)) ; Statement: r0.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.bytecode.FieldInfo fieldInfo> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1027843989=([org.apache.ibatis.javassist.CtMember, org.apache.ibatis.javassist.CtClass], void), cast-from-var1084-to-var491=([org.apache.ibatis.javassist.CtField], org.apache.ibatis.javassist.CtMember), getClassFile2/769767517=([org.apache.ibatis.javassist.CtClass], org.apache.ibatis.javassist.bytecode.ClassFile), var1874-init=([], org.apache.ibatis.javassist.bytecode.FieldInfo), getConstPool/-1380712921=([org.apache.ibatis.javassist.bytecode.ClassFile], org.apache.ibatis.javassist.bytecode.ConstPool), <init>/-1518717466=([org.apache.ibatis.javassist.bytecode.FieldInfo, org.apache.ibatis.javassist.bytecode.ConstPool, java.lang.String, java.lang.String], void), fieldInfo/-1703048415=([org.apache.ibatis.javassist.CtField], org.apache.ibatis.javassist.bytecode.FieldInfo)}
; {var1084=org.apache.ibatis.javassist.CtField, var1710=r0, var262=r5, var1503=null_type, var1735=r4, var166=org.apache.ibatis.javassist.CtClass, var2423=r1, var491=org.apache.ibatis.javassist.CtMember, var2427=org.apache.ibatis.javassist.bytecode.ClassFile, var1469=r2, var1874=org.apache.ibatis.javassist.bytecode.FieldInfo, var2996=$r3, var2373=org.apache.ibatis.javassist.bytecode.ConstPool, var3638=$r6}
; {org.apache.ibatis.javassist.CtField=var1084, r0=var1710, r5=var262, null_type=var1503, r4=var1735, org.apache.ibatis.javassist.CtClass=var166, r1=var2423, org.apache.ibatis.javassist.CtMember=var491, org.apache.ibatis.javassist.bytecode.ClassFile=var2427, r2=var1469, org.apache.ibatis.javassist.bytecode.FieldInfo=var1874, $r3=var2996, org.apache.ibatis.javassist.bytecode.ConstPool=var2373, $r6=var3638}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.javassist.CtField;	r5 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r1 := @parameter2: org.apache.ibatis.javassist.CtClass;	specialinvoke r0.<org.apache.ibatis.javassist.CtMember: void <init>(org.apache.ibatis.javassist.CtClass)>(r1);	r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.bytecode.ClassFile getClassFile2()>();	if r2 != null goto $r3 = new org.apache.ibatis.javassist.bytecode.FieldInfo;	$r3 = new org.apache.ibatis.javassist.bytecode.FieldInfo;	$r6 = virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.ClassFile: org.apache.ibatis.javassist.bytecode.ConstPool getConstPool()>();	specialinvoke $r3.<org.apache.ibatis.javassist.bytecode.FieldInfo: void <init>(org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.String,java.lang.String)>($r6, r4, r5);	r0.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.bytecode.FieldInfo fieldInfo> = $r3;	return
;block_num 2