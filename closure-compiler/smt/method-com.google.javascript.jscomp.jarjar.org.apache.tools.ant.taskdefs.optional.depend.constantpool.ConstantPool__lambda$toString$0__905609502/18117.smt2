(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2912 0)
(declare-sort var125 0)
(declare-sort var2291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var125-init () (Array Int var125))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var125 (Int) var125)
(declare-fun getEntry/-615620452 (var2912 Int) var2291)
(declare-fun cast-from-var2291-to-var125 (var2291) var125)
(declare-fun String_format/1339386452 (String (Array Int var125)) String)
(declare-const null-var2912 var2912)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var125__ (Array Int var125))
(declare-const var2252 var2912) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPool 
(assert (not (= var2252 null-var2912)))
(declare-const var1431 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1431 null-Int)))
(define-const var3912 (Array Int var125) arr-var125-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var3037 Int (Int_valueOf/-1371140006 var1431)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var3912!1 (Array Int var125))
(assert (not (= var3912!1 null-__Array__Int__var125__)))
(assert (= (select var3912!1 0) (cast-from-Int-to-var125 var3037))) ; Statement: $r0[0] = $r1 
(assert true)
(define-const var3682 var2291 (getEntry/-615620452 var2252 var1431)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry getEntry(int)>(i0) 
(declare-const var3912!2 (Array Int var125))
(assert (not (= var3912!2 null-__Array__Int__var125__)))
(assert (= (select var3912!2 1) (cast-from-var2291-to-var125 var3682))) ; Statement: $r0[1] = $r3 
(define-const var3710 String (String_format/1339386452 "[%d] = %s" var3912!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("[%d] = %s", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var125-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var125=([java.lang.Integer], java.lang.Object), getEntry/-615620452=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPool, int], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry), cast-from-var2291-to-var125=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2912=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPool, var2252=r2, var1431=i0, var125=java.lang.Object, var3912=$r0, var3037=$r1, var2291=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry, var3682=$r3, var3710=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPool=var2912, r2=var2252, i0=var1431, java.lang.Object=var125, $r0=var3912, $r1=var3037, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry=var2291, $r3=var3682, $r4=var3710}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPool;	i0 := @parameter0: int;	$r0 = newarray (java.lang.Object)[2];	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r0[0] = $r1;	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry getEntry(int)>(i0);	$r0[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("[%d] = %s", $r0);	return $r4
;block_num 1