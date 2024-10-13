(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1133 0)
(declare-sort var186 0)
(declare-sort var2066 0)
(declare-sort var3689 0)
(declare-sort var2474 0)
(declare-sort var1453 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClassFile2/769767517 (var186) var2066)
(declare-fun getAttribute/-957059846 (var2066 String) var3689)
(declare-fun cast-from-var3689-to-var2474 (var3689) var2474)
(declare-fun var1453_isStatic/-196097779 (Int) Bool)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var186 var186)
(declare-const null-Bool Bool)
(declare-const null-var2474 var2474)
(declare-const var1919 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1919 null-Int)))
(declare-const var1703 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1703 null-String)))
(declare-const var1421 var186) ; Statement: r0 := @parameter2: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1421 null-var186)))
(declare-const var1296 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var1296 null-Bool)))
(assert true)
(define-const var168 var2066 (getClassFile2/769767517 var1421)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.bytecode.ClassFile getClassFile2()>() 
(assert true)
(define-const var2173 var3689 (getAttribute/-957059846 var168 "InnerClasses")) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ClassFile: org.apache.ibatis.javassist.bytecode.AttributeInfo getAttribute(java.lang.String)>("InnerClasses") 
(define-const var2714 var2474 (cast-from-var3689-to-var2474 var2173)) ; Statement: r3 = (org.apache.ibatis.javassist.bytecode.InnerClassesAttribute) $r2 
 ; Statement: if r3 == null goto $z2 = staticinvoke <org.apache.ibatis.javassist.Modifier: boolean isStatic(int)>(i0) 
(assert (= var2714 null-var2474)) ; Cond: r3 == null 
(define-const var2200 Bool (var1453_isStatic/-196097779 var1919)) ; Statement: $z2 = staticinvoke <org.apache.ibatis.javassist.Modifier: boolean isStatic(int)>(i0) 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var2200 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getClassFile2/769767517=([org.apache.ibatis.javassist.CtClass], org.apache.ibatis.javassist.bytecode.ClassFile), getAttribute/-957059846=([org.apache.ibatis.javassist.bytecode.ClassFile, java.lang.String], org.apache.ibatis.javassist.bytecode.AttributeInfo), cast-from-var3689-to-var2474=([org.apache.ibatis.javassist.bytecode.AttributeInfo], org.apache.ibatis.javassist.bytecode.InnerClassesAttribute), var1453_isStatic/-196097779=([int], boolean)}
; {var1919=i0, var1703=r6, var1133=null_type, var186=org.apache.ibatis.javassist.CtClass, var1421=r0, var1296=z0, var2066=org.apache.ibatis.javassist.bytecode.ClassFile, var168=r1, var3689=org.apache.ibatis.javassist.bytecode.AttributeInfo, var2173=$r2, var2474=org.apache.ibatis.javassist.bytecode.InnerClassesAttribute, var2714=r3, var1453=org.apache.ibatis.javassist.Modifier, var2200=$z2}
; {i0=var1919, r6=var1703, null_type=var1133, org.apache.ibatis.javassist.CtClass=var186, r0=var1421, z0=var1296, org.apache.ibatis.javassist.bytecode.ClassFile=var2066, r1=var168, org.apache.ibatis.javassist.bytecode.AttributeInfo=var3689, $r2=var2173, org.apache.ibatis.javassist.bytecode.InnerClassesAttribute=var2474, r3=var2714, org.apache.ibatis.javassist.Modifier=var1453, $z2=var2200}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	r6 := @parameter1: java.lang.String;	r0 := @parameter2: org.apache.ibatis.javassist.CtClass;	z0 := @parameter3: boolean;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.bytecode.ClassFile getClassFile2()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ClassFile: org.apache.ibatis.javassist.bytecode.AttributeInfo getAttribute(java.lang.String)>("InnerClasses");	r3 = (org.apache.ibatis.javassist.bytecode.InnerClassesAttribute) $r2;	if r3 == null goto $z2 = staticinvoke <org.apache.ibatis.javassist.Modifier: boolean isStatic(int)>(i0);	$z2 = staticinvoke <org.apache.ibatis.javassist.Modifier: boolean isStatic(int)>(i0);	if $z2 == 0 goto return;	return
;block_num 3