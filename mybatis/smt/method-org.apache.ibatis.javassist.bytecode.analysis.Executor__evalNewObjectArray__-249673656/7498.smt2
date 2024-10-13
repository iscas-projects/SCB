(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1060 0)
(declare-sort var1202 0)
(declare-sort var1279 0)
(declare-sort var2195 0)
(declare-sort var245 0)
(declare-sort var2784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun constPool/-20364844 (var1060) var2195)
(declare-fun u16bitAt/1097213481 (var1202 Int) Int)
(declare-fun getClassInfo/1878292087 (var2195 Int) String)
(declare-fun resolveClassInfo/804978521 (var1060 String) var245)
(declare-fun getCtClass/-271391250 (var245) var2784)
(declare-fun getName/1611768686 (var2784) String)
(declare-fun byteAt/822625918 (var1202 Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getType/-933463839 (var1060 String) var245)
(declare-fun simplePush/270023542 (var1060 var245 var1279) void)
(declare-const null-var1060 var1060)
(declare-const null-Int Int)
(declare-const null-var1202 var1202)
(declare-const null-var1279 var1279)
(declare-const var1136 var1060) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor 
(assert (not (= var1136 null-var1060)))
(declare-const var3742 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3742 null-Int)))
(declare-const var3106 var1202) ; Statement: r1 := @parameter1: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var3106 null-var1202)))
(declare-const var851 var1279) ; Statement: r9 := @parameter2: org.apache.ibatis.javassist.bytecode.analysis.Frame 
(assert (not (= var851 null-var1279)))
(define-const var1727 var2195 (constPool/-20364844 var1136)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.ConstPool constPool> 
(define-const var3423 Int (+ var3742 1)) ; Statement: $i1 = i0 + 1 
(assert true)
(define-const var463 Int (u16bitAt/1097213481 var3106 var3423)) ; Statement: $i2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i1) 
(assert true)
(define-const var1599 String (getClassInfo/1878292087 var1727 var463)) ; Statement: $r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getClassInfo(int)>($i2) 
(assert true)
(define-const var614 var245 (resolveClassInfo/804978521 var1136 var1599)) ; Statement: r4 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type resolveClassInfo(java.lang.String)>($r3) 
(assert true)
(define-const var2517 var2784 (getCtClass/-271391250 var614)) ; Statement: $r5 = virtualinvoke r4.<org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.CtClass getCtClass()>() 
(assert true)
(define-const var3782 String (getName/1611768686 var2517)) ; Statement: r13 = virtualinvoke $r5.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var3961 Int (byteAt/822625918 var3106 var3742)) ; Statement: i3 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0) 
 ; Statement: if i3 != 197 goto $r14 = new java.lang.StringBuilder 
(assert (not (= var3961 197))) ; Cond: i3 != 197 
(define-const var731 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var731)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var731!1 String)
(assert (= var731!1 ""))
(assert true)
(define-const var3576 String (append/672562846 var731!1 var3782)) ; Statement: $r7 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(declare-const var731!2 String)
(assert (= var731!2 (str.++ var731!1 var3782)))
(assert true)
(define-const var3120 String (append/672562846 var3576 "[]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[]") 
(declare-const var3576!1 String)
(assert (= var3576!1 (str.++ var3576 "[]")))
(assert true)
(define-const var3782!1 String (toString/-2075883882 var3120)) ; Statement: r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var173 Int 1) ; Statement: i5 = 1 
(assert true) ; Non Conditional
(define-const var2610 Int var173) ; Statement: $i6 = i5 
(define-const var2427 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(define-const var173!1 Int (+ var173 var2427)) ; Statement: i5 = i5 + $i8 
 ; Statement: if $i6 <= 0 goto $r10 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>(r13) 
(assert (<= var2610 0)) ; Cond: $i6 <= 0 
(assert true)
(define-const var2980 var245 (getType/-933463839 var1136 var3782!1)) ; Statement: $r10 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>(r13) 
(assert true)
;(assert (simplePush/270023542 var1136 var2980 var851)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: void simplePush(org.apache.ibatis.javassist.bytecode.analysis.Type,org.apache.ibatis.javassist.bytecode.analysis.Frame)>($r10, r9) 

(declare-const var1136!1 var1060)
(declare-const var2980!1 var245)
(declare-const var851!1 var1279)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {constPool/-20364844=([org.apache.ibatis.javassist.bytecode.analysis.Executor], org.apache.ibatis.javassist.bytecode.ConstPool), u16bitAt/1097213481=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), getClassInfo/1878292087=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), resolveClassInfo/804978521=([org.apache.ibatis.javassist.bytecode.analysis.Executor, java.lang.String], org.apache.ibatis.javassist.bytecode.analysis.Type), getCtClass/-271391250=([org.apache.ibatis.javassist.bytecode.analysis.Type], org.apache.ibatis.javassist.CtClass), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), byteAt/822625918=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-Int-to-Int=([int], int), getType/-933463839=([org.apache.ibatis.javassist.bytecode.analysis.Executor, java.lang.String], org.apache.ibatis.javassist.bytecode.analysis.Type), simplePush/270023542=([org.apache.ibatis.javassist.bytecode.analysis.Executor, org.apache.ibatis.javassist.bytecode.analysis.Type, org.apache.ibatis.javassist.bytecode.analysis.Frame], void)}
; {var1060=org.apache.ibatis.javassist.bytecode.analysis.Executor, var1136=r0, var3742=i0, var1202=org.apache.ibatis.javassist.bytecode.CodeIterator, var3106=r1, var1279=org.apache.ibatis.javassist.bytecode.analysis.Frame, var851=r9, var2195=org.apache.ibatis.javassist.bytecode.ConstPool, var1727=$r2, var3423=$i1, var463=$i2, var1599=$r3, var245=org.apache.ibatis.javassist.bytecode.analysis.Type, var614=r4, var2784=org.apache.ibatis.javassist.CtClass, var2517=$r5, var3782=r13, var3961=i3, var731=$r14, var3576=$r7, var3120=$r8, var173=i5, var2610=$i6, var2427=$i8, var2980=$r10}
; {org.apache.ibatis.javassist.bytecode.analysis.Executor=var1060, r0=var1136, i0=var3742, org.apache.ibatis.javassist.bytecode.CodeIterator=var1202, r1=var3106, org.apache.ibatis.javassist.bytecode.analysis.Frame=var1279, r9=var851, org.apache.ibatis.javassist.bytecode.ConstPool=var2195, $r2=var1727, $i1=var3423, $i2=var463, $r3=var1599, org.apache.ibatis.javassist.bytecode.analysis.Type=var245, r4=var614, org.apache.ibatis.javassist.CtClass=var2784, $r5=var2517, r13=var3782, i3=var3961, $r14=var731, $r7=var3576, $r8=var3120, i5=var173, $i6=var2610, $i8=var2427, $r10=var2980}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor;	i0 := @parameter0: int;	r1 := @parameter1: org.apache.ibatis.javassist.bytecode.CodeIterator;	r9 := @parameter2: org.apache.ibatis.javassist.bytecode.analysis.Frame;	$r2 = r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.ConstPool constPool>;	$i1 = i0 + 1;	$i2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i1);	$r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getClassInfo(int)>($i2);	r4 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type resolveClassInfo(java.lang.String)>($r3);	$r5 = virtualinvoke r4.<org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.CtClass getCtClass()>();	r13 = virtualinvoke $r5.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	i3 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0);	if i3 != 197 goto $r14 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[]");	r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	i5 = 1;	$i6 = i5;	$i8 = (int) -1;	i5 = i5 + $i8;	if $i6 <= 0 goto $r10 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>(r13);	$r10 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>(r13);	specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: void simplePush(org.apache.ibatis.javassist.bytecode.analysis.Type,org.apache.ibatis.javassist.bytecode.analysis.Frame)>($r10, r9);	return
;block_num 4