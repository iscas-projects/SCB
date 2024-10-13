(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2503 0)
(declare-sort var3903 0)
(declare-sort var3536 0)
(declare-sort var2283 0)
(declare-sort var2104 0)
(declare-sort var2166 0)
(declare-sort var3050 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun thisClass/-68443994 (var2283) var3536)
(declare-fun cast-from-var2503-to-var2283 (var2503) var2283)
(declare-fun getClassFile/856105643 (var3536) var3050)
(declare-fun getConstPool/-1165582126 (var2283) var2104)
(declare-fun currentPos/-68443994 (var2283) Int)
(declare-fun opcode/-1450704182 (var2503) Int)
(declare-fun var2166-init () var2166)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2166 String) void)
(declare-const null-var2503 var2503)
(declare-const null-String String)
(declare-const var2739 var2503) ; Statement: r0 := @this: org.apache.ibatis.javassist.expr.NewArray 
(assert (not (= var2739 null-var2503)))
(declare-const var2103 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2103 null-String)))
(define-const var1698 var3536 (thisClass/-68443994 (cast-from-var2503-to-var2283 var2739))) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.expr.NewArray: org.apache.ibatis.javassist.CtClass thisClass> 
(assert true)
;(assert (getClassFile/856105643 var1698)) ; Statement: virtualinvoke $r1.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.bytecode.ClassFile getClassFile()>() 

(declare-const var1698!1 var3536)
(assert true)
(define-const var1642 var2104 (getConstPool/-1165582126 (cast-from-var2503-to-var2283 var2739))) ; Statement: r2 = virtualinvoke r0.<org.apache.ibatis.javassist.expr.NewArray: org.apache.ibatis.javassist.bytecode.ConstPool getConstPool()>() 
(define-const var850 Int (currentPos/-68443994 (cast-from-var2503-to-var2283 var2739))) ; Statement: i0 = r0.<org.apache.ibatis.javassist.expr.NewArray: int currentPos> 
(define-const var3413 Int 1) ; Statement: i15 = 1 
(define-const var2170 Int (opcode/-1450704182 var2739)) ; Statement: $i1 = r0.<org.apache.ibatis.javassist.expr.NewArray: int opcode> 
 ; Statement: if $i1 != 188 goto $i2 = r0.<org.apache.ibatis.javassist.expr.NewArray: int opcode> 
(assert (not (= var2170 188))) ; Cond: $i1 != 188 
(define-const var1712 Int (opcode/-1450704182 var2739)) ; Statement: $i2 = r0.<org.apache.ibatis.javassist.expr.NewArray: int opcode> 
 ; Statement: if $i2 != 189 goto $i3 = r0.<org.apache.ibatis.javassist.expr.NewArray: int opcode> 
(assert (not (= var1712 189))) ; Cond: $i2 != 189 
(define-const var1786 Int (opcode/-1450704182 var2739)) ; Statement: $i3 = r0.<org.apache.ibatis.javassist.expr.NewArray: int opcode> 
 ; Statement: if $i3 != 197 goto $r3 = new java.lang.RuntimeException 
(assert (not (= var1786 197))) ; Cond: $i3 != 197 
(define-const var1760 var2166 var2166-init) ; Statement: $r3 = new java.lang.RuntimeException 
(define-const var803 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var803)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var803!1 String)
(assert (= var803!1 ""))
(assert true)
(define-const var1334 String (append/672562846 var803!1 "bad opcode: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad opcode: ") 
(declare-const var803!2 String)
(assert (= var803!2 (str.++ var803!1 "bad opcode: ")))
(define-const var1926 Int (opcode/-1450704182 var2739)) ; Statement: $i4 = r0.<org.apache.ibatis.javassist.expr.NewArray: int opcode> 
(assert true)
(define-const var3011 String (append/-1001720160 var1334 var1926)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var1334!1 String)
(assert (str.prefixof var1334 var1334!1))
(assert true)
(define-const var361 String (toString/-2075883882 var3011)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1760 var361)) ; Statement: specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7) 

(declare-const var1760!1 var2166)
(declare-const var361!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {thisClass/-68443994=([org.apache.ibatis.javassist.expr.Expr], org.apache.ibatis.javassist.CtClass), cast-from-var2503-to-var2283=([org.apache.ibatis.javassist.expr.NewArray], org.apache.ibatis.javassist.expr.Expr), getClassFile/856105643=([org.apache.ibatis.javassist.CtClass], org.apache.ibatis.javassist.bytecode.ClassFile), getConstPool/-1165582126=([org.apache.ibatis.javassist.expr.Expr], org.apache.ibatis.javassist.bytecode.ConstPool), currentPos/-68443994=([org.apache.ibatis.javassist.expr.Expr], int), opcode/-1450704182=([org.apache.ibatis.javassist.expr.NewArray], int), var2166-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2503=org.apache.ibatis.javassist.expr.NewArray, var2739=r0, var2103=r10, var3903=null_type, var3536=org.apache.ibatis.javassist.CtClass, var2283=org.apache.ibatis.javassist.expr.Expr, var1698=$r1, var2104=org.apache.ibatis.javassist.bytecode.ConstPool, var1642=r2, var850=i0, var3413=i15, var2170=$i1, var1712=$i2, var1786=$i3, var2166=java.lang.RuntimeException, var1760=$r3, var803=$r4, var1334=$r5, var1926=$i4, var3011=$r6, var361=$r7, var3050=org.apache.ibatis.javassist.bytecode.ClassFile}
; {org.apache.ibatis.javassist.expr.NewArray=var2503, r0=var2739, r10=var2103, null_type=var3903, org.apache.ibatis.javassist.CtClass=var3536, org.apache.ibatis.javassist.expr.Expr=var2283, $r1=var1698, org.apache.ibatis.javassist.bytecode.ConstPool=var2104, r2=var1642, i0=var850, i15=var3413, $i1=var2170, $i2=var1712, $i3=var1786, java.lang.RuntimeException=var2166, $r3=var1760, $r4=var803, $r5=var1334, $i4=var1926, $r6=var3011, $r7=var361, org.apache.ibatis.javassist.bytecode.ClassFile=var3050}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.expr.NewArray;	r10 := @parameter0: java.lang.String;	$r1 = r0.<org.apache.ibatis.javassist.expr.NewArray: org.apache.ibatis.javassist.CtClass thisClass>;	virtualinvoke $r1.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.bytecode.ClassFile getClassFile()>();	r2 = virtualinvoke r0.<org.apache.ibatis.javassist.expr.NewArray: org.apache.ibatis.javassist.bytecode.ConstPool getConstPool()>();	i0 = r0.<org.apache.ibatis.javassist.expr.NewArray: int currentPos>;	i15 = 1;	$i1 = r0.<org.apache.ibatis.javassist.expr.NewArray: int opcode>;	if $i1 != 188 goto $i2 = r0.<org.apache.ibatis.javassist.expr.NewArray: int opcode>;	$i2 = r0.<org.apache.ibatis.javassist.expr.NewArray: int opcode>;	if $i2 != 189 goto $i3 = r0.<org.apache.ibatis.javassist.expr.NewArray: int opcode>;	$i3 = r0.<org.apache.ibatis.javassist.expr.NewArray: int opcode>;	if $i3 != 197 goto $r3 = new java.lang.RuntimeException;	$r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad opcode: ");	$i4 = r0.<org.apache.ibatis.javassist.expr.NewArray: int opcode>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 4