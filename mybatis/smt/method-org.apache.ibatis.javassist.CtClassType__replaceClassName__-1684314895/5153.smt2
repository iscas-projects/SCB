(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1739 0)
(declare-sort var721 0)
(declare-sort var2529 0)
(declare-sort var219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1611768686 (var2529) String)
(declare-fun cast-from-var1739-to-var2529 (var1739) var2529)
(declare-fun replaceClassName/361115403 (var2529 String String) void)
(declare-fun getClassFile2/1096051139 (var1739) var219)
(declare-fun renameClass/1129377612 (var219 String String) void)
(declare-fun nameReplaced/-1293457607 (var1739) void)
(declare-const null-var1739 var1739)
(declare-const null-String String)
(declare-const var1613 var1739) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClassType 
(assert (not (= var1613 null-var1739)))
(declare-const var1861 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1861 null-String)))
(declare-const var1924 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1924 null-String)))
(assert true)
(define-const var1793 String (getName/1611768686 (cast-from-var1739-to-var2529 var1613))) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>() 
(assert true)
(define-const var2451 Bool (= var1793 var1861)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto specialinvoke r0.<org.apache.ibatis.javassist.CtClass: void replaceClassName(java.lang.String,java.lang.String)>(r2, r3) 
(assert (= (ite var2451 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (replaceClassName/361115403 (cast-from-var1739-to-var2529 var1613) var1861 var1924)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.CtClass: void replaceClassName(java.lang.String,java.lang.String)>(r2, r3) 

(declare-const var1613!1 var1739)
(declare-const var1861!1 String)
(declare-const var1924!1 String)
(assert true)
(define-const var1194 var219 (getClassFile2/1096051139 var1613!1)) ; Statement: $r4 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.bytecode.ClassFile getClassFile2()>() 
(assert true)
;(assert (renameClass/1129377612 var1194 var1861!1 var1924!1)) ; Statement: virtualinvoke $r4.<org.apache.ibatis.javassist.bytecode.ClassFile: void renameClass(java.lang.String,java.lang.String)>(r2, r3) 

(declare-const var1194!1 var219)
(declare-const var1861!2 String)
(declare-const var1924!2 String)
(assert true)
;(assert (nameReplaced/-1293457607 var1613!1)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.CtClassType: void nameReplaced()>() 

(declare-const var1613!2 var1739)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), cast-from-var1739-to-var2529=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.CtClass), replaceClassName/361115403=([org.apache.ibatis.javassist.CtClass, java.lang.String, java.lang.String], void), getClassFile2/1096051139=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.bytecode.ClassFile), renameClass/1129377612=([org.apache.ibatis.javassist.bytecode.ClassFile, java.lang.String, java.lang.String], void), nameReplaced/-1293457607=([org.apache.ibatis.javassist.CtClassType], void)}
; {var1739=org.apache.ibatis.javassist.CtClassType, var1613=r0, var1861=r2, var721=null_type, var1924=r3, var2529=org.apache.ibatis.javassist.CtClass, var1793=r1, var2451=$z0, var219=org.apache.ibatis.javassist.bytecode.ClassFile, var1194=$r4}
; {org.apache.ibatis.javassist.CtClassType=var1739, r0=var1613, r2=var1861, null_type=var721, r3=var1924, org.apache.ibatis.javassist.CtClass=var2529, r1=var1793, $z0=var2451, org.apache.ibatis.javassist.bytecode.ClassFile=var219, $r4=var1194}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClassType;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto specialinvoke r0.<org.apache.ibatis.javassist.CtClass: void replaceClassName(java.lang.String,java.lang.String)>(r2, r3);	specialinvoke r0.<org.apache.ibatis.javassist.CtClass: void replaceClassName(java.lang.String,java.lang.String)>(r2, r3);	$r4 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.bytecode.ClassFile getClassFile2()>();	virtualinvoke $r4.<org.apache.ibatis.javassist.bytecode.ClassFile: void renameClass(java.lang.String,java.lang.String)>(r2, r3);	specialinvoke r0.<org.apache.ibatis.javassist.CtClassType: void nameReplaced()>();	return
;block_num 3