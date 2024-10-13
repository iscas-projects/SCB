(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1047 0)
(declare-sort var1281 0)
(declare-sort var2704 0)
(declare-sort var1560 0)
(declare-sort var2847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1560!class ClassObject)
(declare-fun var2704_getInternalName/-319692553 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun visitMethodInsn/-1690375605 (var2847 Int String String String Bool) void)
(declare-fun cast-from-var1047-to-var2847 (var1047) var2847)
(declare-const null-var1047 var1047)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var566 var1047) ; Statement: r2 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.BiDirectionalAssociationHandler$WrappingAppender$1 
(assert (not (= var566 null-var1047)))
(declare-const var173 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var173 null-Int)))
(declare-const var1706 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1706 null-String)))
(declare-const var391 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var391 null-String)))
(declare-const var1285 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var1285 null-String)))
(declare-const var3752 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var3752 null-Bool)))
(define-const var3353 String (var2704_getInternalName/-319692553 var1560!class)) ; Statement: $r1 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getInternalName(java.lang.Class)>(class "Lorg/hibernate/bytecode/enhance/internal/bytebuddy/CodeTemplates;") 
(assert true)
(define-const var2597 Bool (startsWith/-1785782452 var1706 var3353)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r1) 
 ; Statement: if $z0 == 0 goto specialinvoke r2.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(i0, r0, r3, r4, z1) 
(assert (= (ite var2597 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (visitMethodInsn/-1690375605 (cast-from-var1047-to-var2847 var566) var173 var1706 var391 var1285 var3752)) ; Statement: specialinvoke r2.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(i0, r0, r3, r4, z1) 

(declare-const var566!1 var1047)
(declare-const var173!1 Int)
(declare-const var1706!1 String)
(declare-const var391!1 String)
(declare-const var1285!1 String)
(declare-const var3752!1 Bool)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2704_getInternalName/-319692553=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), visitMethodInsn/-1690375605=([net.bytebuddy.jar.asm.MethodVisitor, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), cast-from-var1047-to-var2847=([org.hibernate.bytecode.enhance.internal.bytebuddy.BiDirectionalAssociationHandler$WrappingAppender$1], net.bytebuddy.jar.asm.MethodVisitor)}
; {var1047=org.hibernate.bytecode.enhance.internal.bytebuddy.BiDirectionalAssociationHandler$WrappingAppender$1, var566=r2, var173=i0, var1706=r0, var1281=null_type, var391=r3, var1285=r4, var3752=z1, var2704=net.bytebuddy.jar.asm.Type, var1560=org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates, var3353=$r1, var2597=$z0, var2847=net.bytebuddy.jar.asm.MethodVisitor}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.BiDirectionalAssociationHandler$WrappingAppender$1=var1047, r2=var566, i0=var173, r0=var1706, null_type=var1281, r3=var391, r4=var1285, z1=var3752, net.bytebuddy.jar.asm.Type=var2704, org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates=var1560, $r1=var3353, $z0=var2597, net.bytebuddy.jar.asm.MethodVisitor=var2847}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.BiDirectionalAssociationHandler$WrappingAppender$1;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String;	z1 := @parameter4: boolean;	$r1 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getInternalName(java.lang.Class)>(class "Lorg/hibernate/bytecode/enhance/internal/bytebuddy/CodeTemplates;");	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r1);	if $z0 == 0 goto specialinvoke r2.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(i0, r0, r3, r4, z1);	specialinvoke r2.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(i0, r0, r3, r4, z1);	return
;block_num 3