(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2116 0)
(declare-sort var2129 0)
(declare-sort var815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var815_of/1729688858 (String) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun <init>/-1892372303 (var2116 Int) void)
(declare-const null-var2116 var2116)
(declare-const null-String String)
(declare-const var3023 var2116) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$BaseType 
(assert (not (= var3023 null-var2116)))
(declare-const var83 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var83 null-String)))
(define-const var1156 String (var815_of/1729688858 var83)) ; Statement: $r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(java.lang.String)>(r1) 
(assert (not (and true (and (> (str.len var1156) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var815_of/1729688858=([java.lang.String], java.lang.String), charAt/698050440=([java.lang.String, int], char), <init>/-1892372303=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$BaseType, char], void)}
; {var2116=org.apache.ibatis.javassist.bytecode.SignatureAttribute$BaseType, var3023=r0, var83=r1, var2129=null_type, var815=org.apache.ibatis.javassist.bytecode.Descriptor, var1156=$r2, var2559=$c0}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$BaseType=var2116, r0=var3023, r1=var83, null_type=var2129, org.apache.ibatis.javassist.bytecode.Descriptor=var815, $r2=var1156, $c0=var2559}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$BaseType;	r1 := @parameter0: java.lang.String;	$r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(java.lang.String)>(r1);	$c0 = virtualinvoke $r2.<java.lang.String: char charAt(int)>(0);	specialinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$BaseType: void <init>(char)>($c0);	return
;block_num 1