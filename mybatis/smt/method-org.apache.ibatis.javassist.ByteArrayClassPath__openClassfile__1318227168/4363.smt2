(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var132 0)
(declare-sort var3520 0)
(declare-sort var3464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classname/-546390156 (var132) String)
(declare-fun var3464-init () var3464)
(declare-fun classfile/-546390156 (var132) (Array Int Int))
(declare-fun <init>/1208500544 (var3464 (Array Int Int)) void)
(declare-const null-var132 var132)
(declare-const null-String String)
(declare-const var3049 var132) ; Statement: r0 := @this: org.apache.ibatis.javassist.ByteArrayClassPath 
(assert (not (= var3049 null-var132)))
(declare-const var1041 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1041 null-String)))
(define-const var3529 String (classname/-546390156 var3049)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.ByteArrayClassPath: java.lang.String classname> 
(assert true)
(define-const var1169 Bool (= var3529 var1041)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var1169 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3766 var3464 var3464-init) ; Statement: $r3 = new java.io.ByteArrayInputStream 
(define-const var618 (Array Int Int) (classfile/-546390156 var3049)) ; Statement: $r4 = r0.<org.apache.ibatis.javassist.ByteArrayClassPath: byte[] classfile> 
(assert true)
;(assert (<init>/1208500544 var3766 var618)) ; Statement: specialinvoke $r3.<java.io.ByteArrayInputStream: void <init>(byte[])>($r4) 

(declare-const var3766!1 var3464)
(declare-const var618!1 (Array Int Int))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {classname/-546390156=([org.apache.ibatis.javassist.ByteArrayClassPath], java.lang.String), var3464-init=([], java.io.ByteArrayInputStream), classfile/-546390156=([org.apache.ibatis.javassist.ByteArrayClassPath], byte[]), <init>/1208500544=([java.io.ByteArrayInputStream, byte[]], void)}
; {var132=org.apache.ibatis.javassist.ByteArrayClassPath, var3049=r0, var1041=r1, var3520=null_type, var3529=$r2, var1169=$z0, var3464=java.io.ByteArrayInputStream, var3766=$r3, var618=$r4}
; {org.apache.ibatis.javassist.ByteArrayClassPath=var132, r0=var3049, r1=var1041, null_type=var3520, $r2=var3529, $z0=var1169, java.io.ByteArrayInputStream=var3464, $r3=var3766, $r4=var618}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.ByteArrayClassPath;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.ibatis.javassist.ByteArrayClassPath: java.lang.String classname>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	$r3 = new java.io.ByteArrayInputStream;	$r4 = r0.<org.apache.ibatis.javassist.ByteArrayClassPath: byte[] classfile>;	specialinvoke $r3.<java.io.ByteArrayInputStream: void <init>(byte[])>($r4);	return $r3
;block_num 2