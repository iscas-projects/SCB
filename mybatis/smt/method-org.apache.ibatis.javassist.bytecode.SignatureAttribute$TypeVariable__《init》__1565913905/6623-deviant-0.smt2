(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3331 0)
(declare-sort var692 0)
(declare-sort var2640 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-344143735 (var2640) void)
(declare-fun cast-from-var3331-to-var2640 (var3331) var2640)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun name/-1737529467 (var3331) String)
(declare-const null-var3331 var3331)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1760 var3331) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable 
(assert (not (= var1760 null-var3331)))
(declare-const var1003 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1003 null-String)))
(declare-const var252 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var252 null-Int)))
(declare-const var2334 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2334 null-Int)))
(assert true)
;(assert (<init>/-344143735 (cast-from-var3331-to-var2640 var1760))) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType: void <init>()>() 

(declare-const var1760!1 var3331)
(assert (not (and true (and (>= var252 0) (>= (str.len var1003) var2334) (>= var2334 var252)))))
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-344143735=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType], void), cast-from-var3331-to-var2640=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType), substring/-1240304868=([java.lang.String, int, int], java.lang.String), name/-1737529467=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable], java.lang.String)}
; {var3331=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable, var1760=r0, var1003=r1, var692=null_type, var252=i0, var2334=i1, var2640=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType, var2364=$r2}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable=var3331, r0=var1760, r1=var1003, null_type=var692, i0=var252, i1=var2334, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType=var2640, $r2=var2364}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	specialinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeVariable: java.lang.String name> = $r2;	return
;block_num 1