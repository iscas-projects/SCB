(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3025 0)
(declare-sort var57 0)
(declare-sort var541 0)
(declare-sort var2793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun byteAt/822625918 (var3025 Int) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2793-init () var2793)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2793 String) void)
(declare-const null-var3025 var3025)
(declare-const null-Int Int)
(declare-const null-var57 var57)
(declare-const var541-opcodes (Array Int String))
(declare-const var1298 var3025) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var1298 null-var3025)))
(declare-const var2551 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2551 null-Int)))
(declare-const var3595 var57) ; Statement: r18 := @parameter2: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var3595 null-var57)))
(assert true)
(define-const var1686 Int (byteAt/822625918 var1298 var2551)) ; Statement: i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0) 
(define-const var3100 (Array Int String) var541-opcodes) ; Statement: $r1 = <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String[] opcodes> 
(define-const var1814 Int (getLength-Arr-String-1 var3100)) ; Statement: $i2 = lengthof $r1 
 ; Statement: if i1 > $i2 goto $r2 = new java.lang.IllegalArgumentException 
(assert (> var1686 var1814)) ; Cond: i1 > $i2 
(define-const var436 var2793 var2793-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var1899 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1899)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1899!1 String)
(assert (= var1899!1 ""))
(assert true)
(define-const var3256 String (append/672562846 var1899!1 "Invalid opcode, opcode: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid opcode, opcode: ") 
(declare-const var1899!2 String)
(assert (= var1899!2 (str.++ var1899!1 "Invalid opcode, opcode: ")))
(assert true)
(define-const var2541 String (append/-1001720160 var3256 var1686)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3256!1 String)
(assert (str.prefixof var3256 var3256!1))
(assert true)
(define-const var1897 String (append/672562846 var2541 " pos: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" pos: ") 
(declare-const var2541!1 String)
(assert (= var2541!1 (str.++ var2541 " pos: ")))
(assert true)
(define-const var88 String (append/-1001720160 var1897 var2551)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1897!1 String)
(assert (str.prefixof var1897 var1897!1))
(assert true)
(define-const var2127 String (toString/-2075883882 var88)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var436 var2127)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var436!1 var2793)
(declare-const var2127!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {byteAt/822625918=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), getLength-Arr-String-1=([java.lang.String[]], int), var2793-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3025=org.apache.ibatis.javassist.bytecode.CodeIterator, var1298=r0, var2551=i0, var57=org.apache.ibatis.javassist.bytecode.ConstPool, var3595=r18, var1686=i1, var541=org.apache.ibatis.javassist.bytecode.InstructionPrinter, var3100=$r1, var1814=$i2, var2793=java.lang.IllegalArgumentException, var436=$r2, var1899=$r3, var3256=$r4, var2541=$r5, var1897=$r6, var88=$r7, var2127=$r8}
; {org.apache.ibatis.javassist.bytecode.CodeIterator=var3025, r0=var1298, i0=var2551, org.apache.ibatis.javassist.bytecode.ConstPool=var57, r18=var3595, i1=var1686, org.apache.ibatis.javassist.bytecode.InstructionPrinter=var541, $r1=var3100, $i2=var1814, java.lang.IllegalArgumentException=var2793, $r2=var436, $r3=var1899, $r4=var3256, $r5=var2541, $r6=var1897, $r7=var88, $r8=var2127}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.bytecode.CodeIterator;	i0 := @parameter1: int;	r18 := @parameter2: org.apache.ibatis.javassist.bytecode.ConstPool;	i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0);	$r1 = <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String[] opcodes>;	$i2 = lengthof $r1;	if i1 > $i2 goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid opcode, opcode: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" pos: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2