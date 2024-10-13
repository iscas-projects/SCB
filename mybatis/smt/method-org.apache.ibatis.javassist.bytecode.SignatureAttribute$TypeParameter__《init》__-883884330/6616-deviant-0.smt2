(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3342 0)
(declare-sort var3044 0)
(declare-sort var2449 0)
(declare-sort var3661 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3661) void)
(declare-fun cast-from-var3342-to-var3661 (var3342) var3661)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun name/-286867520 (var3342) String)
(declare-fun superClass/-286867520 (var3342) var2449)
(declare-fun superInterfaces/-286867520 (var3342) (Array Int var2449))
(declare-const null-var3342 var3342)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2449 var2449)
(declare-const null-__Array__Int__var2449__ (Array Int var2449))
(declare-const var2959 var3342) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter 
(assert (not (= var2959 null-var3342)))
(declare-const var3622 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3622 null-String)))
(declare-const var1187 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1187 null-Int)))
(declare-const var3633 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3633 null-Int)))
(declare-const var108 var2449) ; Statement: r3 := @parameter3: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType 
(assert (not (= var108 null-var2449)))
(declare-const var986 (Array Int var2449)) ; Statement: r4 := @parameter4: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[] 
(assert (not (= var986 null-__Array__Int__var2449__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3342-to-var3661 var2959))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2959!1 var3342)
(assert (not (and true (and (>= var1187 0) (>= (str.len var3622) var3633) (>= var3633 var1187)))))
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3342-to-var3661=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter], java.lang.Object), substring/-1240304868=([java.lang.String, int, int], java.lang.String), name/-286867520=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter], java.lang.String), superClass/-286867520=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType), superInterfaces/-286867520=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[])}
; {var3342=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter, var2959=r0, var3622=r1, var3044=null_type, var1187=i0, var3633=i1, var2449=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType, var108=r3, var986=r4, var3661=java.lang.Object, var2586=$r2}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter=var3342, r0=var2959, r1=var3622, null_type=var3044, i0=var1187, i1=var3633, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType=var2449, r3=var108, r4=var986, java.lang.Object=var3661, $r2=var2586}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r3 := @parameter3: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType;	r4 := @parameter4: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[];	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: java.lang.String name> = $r2;	r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType superClass> = r3;	r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType[] superInterfaces> = r4;	return
;block_num 1