(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3105 0)
(declare-sort var1297 0)
(declare-sort var1846 0)
(declare-sort var1880 0)
(declare-sort var156 0)
(declare-sort var1849 0)
(declare-sort var2429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1880) void)
(declare-fun cast-from-var3105-to-var1880 (var3105) var1880)
(declare-fun symbolTable/-1827008135 (var3105) var1297)
(declare-fun accessFlags/-1827008135 (var3105) Int)
(declare-fun addConstantUtf8/-281001296 (var1297 String) Int)
(declare-fun nameIndex/-1827008135 (var3105) Int)
(declare-fun name/-1827008135 (var3105) String)
(declare-fun descriptorIndex/-1827008135 (var3105) Int)
(declare-fun descriptor/-1827008135 (var3105) String)
(declare-fun var156-init () var156)
(declare-fun <init>/-459306080 (var156 Int) void)
(declare-fun code/-1827008135 (var3105) var156)
(declare-fun var1849_getArgumentsAndReturnSizes/-942562819 (String) Int)
(declare-fun maxLocals/-1827008135 (var3105) Int)
(declare-fun var2429-init () var2429)
(declare-fun <init>/-2069075760 (var2429) void)
(declare-fun firstBasicBlock/-1827008135 (var3105) var2429)
(declare-fun visitLabel/567040954 (var3105 var2429) void)
(declare-const null-var3105 var3105)
(declare-const null-var1297 var1297)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2381 var3105) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter 
(assert (not (= var2381 null-var3105)))
(declare-const var2531 var1297) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.internal.asm.SymbolTable 
(assert (not (= var2531 null-var1297)))
(declare-const var126 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var126 null-Int)))
(declare-const var1595 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1595 null-String)))
(declare-const var1635 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var1635 null-String)))
(declare-const var2472 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var2472 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3105-to-var1880 var2381))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2381!1 var3105)
(declare-const var2381!2 var3105)
(assert (not (= var2381!2 null-var3105)))
(assert (= (symbolTable/-1827008135 var2381!2) var2531)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> = r1 
(define-const var1951 String "<init>") ; Statement: $r3 = "<init>" 
(assert true)
(define-const var2736 Bool (= var1951 var1595)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $i7 = i0 
(assert (= (ite var2736 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2226 Int var126) ; Statement: $i7 = i0 
(assert true) ; Non Conditional
(declare-const var2381!3 var3105)
(assert (not (= var2381!3 null-var3105)))
(assert (= (accessFlags/-1827008135 var2381!3) var2226)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int accessFlags> = $i7 
(assert true)
(define-const var3572 Int (addConstantUtf8/-281001296 var2531 var1595)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantUtf8(java.lang.String)>(r2) 
(declare-const var2381!4 var3105)
(assert (not (= var2381!4 null-var3105)))
(assert (= (nameIndex/-1827008135 var2381!4) var3572)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int nameIndex> = $i1 
(declare-const var2381!5 var3105)
(assert (not (= var2381!5 null-var3105)))
(assert (= (name/-1827008135 var2381!5) var1595)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: java.lang.String name> = r2 
(assert true)
(define-const var802 Int (addConstantUtf8/-281001296 var2531 var1635)) ; Statement: $i2 = virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantUtf8(java.lang.String)>(r4) 
(declare-const var2381!6 var3105)
(assert (not (= var2381!6 null-var3105)))
(assert (= (descriptorIndex/-1827008135 var2381!6) var802)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int descriptorIndex> = $i2 
(declare-const var2381!7 var3105)
(assert (not (= var2381!7 null-var3105)))
(assert (= (descriptor/-1827008135 var2381!7) var1635)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: java.lang.String descriptor> = r4 
(define-const var2115 var156 var156-init) ; Statement: $r8 = new com.alibaba.fastjson2.internal.asm.ByteVector 
(assert true)
;(assert (<init>/-459306080 var2115 var2472)) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.internal.asm.ByteVector: void <init>(int)>(i3) 

(declare-const var2115!1 var156)
(declare-const var2472!1 Int)
(declare-const var2381!8 var3105)
(assert (not (= var2381!8 null-var3105)))
(assert (= (code/-1827008135 var2381!8) var2115!1)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> = $r8 
(define-const var3162 Int (var1849_getArgumentsAndReturnSizes/-942562819 var1635)) ; Statement: $i4 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: int getArgumentsAndReturnSizes(java.lang.String)>(r4) 
(define-const var962 Int (div var3162 (to_int (^ 2 2)))) ; Statement: $i6 = $i4 >> 2 
(define-const var1717 Int var962) ; Statement: i8 = $i6 
(define-const var3124 Int (bv2nat (bvand ((_ int2bv 64) var126) ((_ int2bv 64) 8)))) ; Statement: $i5 = i0 & 8 
 ; Statement: if $i5 == 0 goto r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int maxLocals> = i8 
(assert (= var3124 0)) ; Cond: $i5 == 0 
(declare-const var2381!9 var3105)
(assert (not (= var2381!9 null-var3105)))
(assert (= (maxLocals/-1827008135 var2381!9) var1717)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int maxLocals> = i8 
(define-const var939 var2429 var2429-init) ; Statement: $r9 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var939)) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var939!1 var2429)
(declare-const var2381!10 var3105)
(assert (not (= var2381!10 null-var3105)))
(assert (= (firstBasicBlock/-1827008135 var2381!10) var939!1)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label firstBasicBlock> = $r9 
(define-const var1576 var2429 (firstBasicBlock/-1827008135 var2381!10)) ; Statement: $r7 = r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label firstBasicBlock> 
(assert true)
;(assert (visitLabel/567040954 var2381!10 var1576)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7) 

(declare-const var2381!11 var3105)
(declare-const var1576!1 var2429)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3105-to-var1880=([com.alibaba.fastjson2.internal.asm.MethodWriter], java.lang.Object), symbolTable/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.SymbolTable), accessFlags/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), addConstantUtf8/-281001296=([com.alibaba.fastjson2.internal.asm.SymbolTable, java.lang.String], int), nameIndex/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), name/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], java.lang.String), descriptorIndex/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), descriptor/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], java.lang.String), var156-init=([], com.alibaba.fastjson2.internal.asm.ByteVector), <init>/-459306080=([com.alibaba.fastjson2.internal.asm.ByteVector, int], void), code/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.ByteVector), var1849_getArgumentsAndReturnSizes/-942562819=([java.lang.String], int), maxLocals/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), var2429-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), firstBasicBlock/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.Label), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void)}
; {var3105=com.alibaba.fastjson2.internal.asm.MethodWriter, var2381=r0, var1297=com.alibaba.fastjson2.internal.asm.SymbolTable, var2531=r1, var126=i0, var1595=r2, var1846=null_type, var1635=r4, var2472=i3, var1880=java.lang.Object, var1951=$r3, var2736=$z0, var2226=$i7, var3572=$i1, var802=$i2, var156=com.alibaba.fastjson2.internal.asm.ByteVector, var2115=$r8, var1849=com.alibaba.fastjson2.internal.asm.Type, var3162=$i4, var962=$i6, var1717=i8, var3124=$i5, var2429=com.alibaba.fastjson2.internal.asm.Label, var939=$r9, var1576=$r7}
; {com.alibaba.fastjson2.internal.asm.MethodWriter=var3105, r0=var2381, com.alibaba.fastjson2.internal.asm.SymbolTable=var1297, r1=var2531, i0=var126, r2=var1595, null_type=var1846, r4=var1635, i3=var2472, java.lang.Object=var1880, $r3=var1951, $z0=var2736, $i7=var2226, $i1=var3572, $i2=var802, com.alibaba.fastjson2.internal.asm.ByteVector=var156, $r8=var2115, com.alibaba.fastjson2.internal.asm.Type=var1849, $i4=var3162, $i6=var962, i8=var1717, $i5=var3124, com.alibaba.fastjson2.internal.asm.Label=var2429, $r9=var939, $r7=var1576}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter;	r1 := @parameter0: com.alibaba.fastjson2.internal.asm.SymbolTable;	i0 := @parameter1: int;	r2 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String;	i3 := @parameter4: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> = r1;	$r3 = "<init>";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $i7 = i0;	$i7 = i0;	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int accessFlags> = $i7;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantUtf8(java.lang.String)>(r2);	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int nameIndex> = $i1;	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: java.lang.String name> = r2;	$i2 = virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantUtf8(java.lang.String)>(r4);	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int descriptorIndex> = $i2;	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: java.lang.String descriptor> = r4;	$r8 = new com.alibaba.fastjson2.internal.asm.ByteVector;	specialinvoke $r8.<com.alibaba.fastjson2.internal.asm.ByteVector: void <init>(int)>(i3);	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> = $r8;	$i4 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: int getArgumentsAndReturnSizes(java.lang.String)>(r4);	$i6 = $i4 >> 2;	i8 = $i6;	$i5 = i0 & 8;	if $i5 == 0 goto r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int maxLocals> = i8;	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int maxLocals> = i8;	$r9 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r9.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label firstBasicBlock> = $r9;	$r7 = r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label firstBasicBlock>;	virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7);	return
;block_num 4