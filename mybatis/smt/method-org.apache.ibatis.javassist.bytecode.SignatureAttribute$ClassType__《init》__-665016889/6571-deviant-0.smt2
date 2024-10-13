(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2429 0)
(declare-sort var633 0)
(declare-sort var3039 0)
(declare-sort var2019 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-344143735 (var2019) void)
(declare-fun cast-from-var2429-to-var2019 (var2429) var2019)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun name/-751637629 (var2429) String)
(declare-fun arguments/-751637629 (var2429) (Array Int var3039))
(declare-const null-var2429 var2429)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3039__ (Array Int var3039))
(declare-const var3227 var2429) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType 
(assert (not (= var3227 null-var2429)))
(declare-const var119 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var119 null-String)))
(declare-const var2651 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2651 null-Int)))
(declare-const var1376 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1376 null-Int)))
(declare-const var3835 (Array Int var3039)) ; Statement: r4 := @parameter3: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[] 
(assert (not (= var3835 null-__Array__Int__var3039__)))
(assert true)
;(assert (<init>/-344143735 (cast-from-var2429-to-var2019 var3227))) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType: void <init>()>() 

(declare-const var3227!1 var2429)
(assert (not (and true (and (>= var2651 0) (>= (str.len var119) var1376) (>= var1376 var2651)))))
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-344143735=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType], void), cast-from-var2429-to-var2019=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType), substring/-1240304868=([java.lang.String, int, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), name/-751637629=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], java.lang.String), arguments/-751637629=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[])}
; {var2429=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, var3227=r0, var119=r1, var633=null_type, var2651=i0, var1376=i1, var3039=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument, var3835=r4, var2019=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType, var170=$r2, var121=$r3}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType=var2429, r0=var3227, r1=var119, null_type=var633, i0=var2651, i1=var1376, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument=var3039, r4=var3835, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType=var2019, $r2=var170, $r3=var121}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r4 := @parameter3: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[];	specialinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ObjectType: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: java.lang.String name> = $r3;	r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[] arguments> = r4;	return
;block_num 1