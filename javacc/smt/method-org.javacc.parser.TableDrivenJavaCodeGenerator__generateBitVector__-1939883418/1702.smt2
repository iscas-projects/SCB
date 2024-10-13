(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2879 0)
(declare-sort var3911 0)
(declare-sort var3397 0)
(declare-sort var1 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1-init () (Array Int var1))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var1 (String) var1)
(declare-fun genCodeLine/787715242 (var3397 (Array Int var1)) void)
(declare-fun toLongArray/-721251322 (var3911) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const null-var3911 var3911)
(declare-const null-var3397 var3397)
(declare-const null-__Array__Int__var1__ (Array Int var1))
(declare-const var705 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var705 null-String)))
(declare-const var1395 var3911) ; Statement: r8 := @parameter1: java.util.BitSet 
(assert (not (= var1395 null-var3911)))
(declare-const var2978 var3397) ; Statement: r0 := @parameter2: org.javacc.parser.CodeGenerator 
(assert (not (= var2978 null-var3397)))
(define-const var1629 (Array Int var1) arr-var1-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var399 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var399)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var399!1 String)
(assert (= var399!1 ""))
(assert true)
(define-const var859 String (append/672562846 var399!1 "private static final long[] ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private static final long[] ") 
(declare-const var399!2 String)
(assert (= var399!2 (str.++ var399!1 "private static final long[] ")))
(assert true)
(define-const var2492 String (append/672562846 var859 var705)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var859!1 String)
(assert (= var859!1 (str.++ var859 var705)))
(assert true)
(define-const var3623 String (append/672562846 var2492 " = {")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = {") 
(declare-const var2492!1 String)
(assert (= var2492!1 (str.++ var2492 " = {")))
(assert true)
(define-const var1541 String (toString/-2075883882 var3623)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1629!1 (Array Int var1))
(assert (not (= var1629!1 null-__Array__Int__var1__)))
(assert (= (select var1629!1 0) (cast-from-String-to-var1 var1541))) ; Statement: $r1[0] = $r7 
(assert true)
;(assert (genCodeLine/787715242 var2978 var1629!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var2978!1 var3397)
(declare-const var1629!2 (Array Int var1))
(assert true)
(define-const var3105 (Array Int Int) (toLongArray/-721251322 var1395)) ; Statement: r9 = virtualinvoke r8.<java.util.BitSet: long[] toLongArray()>() 
(define-const var1434 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var2513 Int (getLength-Arr-Int-1 var3105)) ; Statement: $i0 = lengthof r9 
 ; Statement: if i2 >= $i0 goto $r10 = newarray (java.lang.Object)[1] 
(assert (>= var1434 var2513)) ; Cond: i2 >= $i0 
(define-const var3098 (Array Int var1) arr-var1-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var3098!1 (Array Int var1))
(assert (not (= var3098!1 null-__Array__Int__var1__)))
(assert (= (select var3098!1 0) (cast-from-String-to-var1 "};"))) ; Statement: $r10[0] = "};" 
(assert true)
;(assert (genCodeLine/787715242 var2978!1 var3098!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var2978!2 var3397)
(declare-const var3098!2 (Array Int var1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var1=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), toLongArray/-721251322=([java.util.BitSet], long[]), getLength-Arr-Int-1=([long[]], int)}
; {var705=r3, var2879=null_type, var3911=java.util.BitSet, var1395=r8, var3397=org.javacc.parser.CodeGenerator, var2978=r0, var1=java.lang.Object, var1629=$r1, var399=$r2, var859=$r4, var2492=$r5, var3623=$r6, var1541=$r7, var3105=r9, var1434=i2, var2513=$i0, var3098=$r10}
; {r3=var705, null_type=var2879, java.util.BitSet=var3911, r8=var1395, org.javacc.parser.CodeGenerator=var3397, r0=var2978, java.lang.Object=var1, $r1=var1629, $r2=var399, $r4=var859, $r5=var2492, $r6=var3623, $r7=var1541, r9=var3105, i2=var1434, $i0=var2513, $r10=var3098}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r8 := @parameter1: java.util.BitSet;	r0 := @parameter2: org.javacc.parser.CodeGenerator;	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private static final long[] ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = {");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r7;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1);	r9 = virtualinvoke r8.<java.util.BitSet: long[] toLongArray()>();	i2 = 0;	$i0 = lengthof r9;	if i2 >= $i0 goto $r10 = newarray (java.lang.Object)[1];	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "};";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10);	return
;block_num 3