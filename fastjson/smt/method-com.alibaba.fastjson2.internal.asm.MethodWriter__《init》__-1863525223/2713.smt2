(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3407 0)
(declare-sort var54 0)
(declare-sort var919 0)
(declare-sort var313 0)
(declare-sort var543 0)
(declare-sort var2815 0)
(declare-sort var155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var313) void)
(declare-fun cast-from-var3407-to-var313 (var3407) var313)
(declare-fun symbolTable/-1827008135 (var3407) var54)
(declare-fun accessFlags/-1827008135 (var3407) Int)
(declare-fun addConstantUtf8/-281001296 (var54 String) Int)
(declare-fun nameIndex/-1827008135 (var3407) Int)
(declare-fun name/-1827008135 (var3407) String)
(declare-fun descriptorIndex/-1827008135 (var3407) Int)
(declare-fun descriptor/-1827008135 (var3407) String)
(declare-fun var543-init () var543)
(declare-fun <init>/-459306080 (var543 Int) void)
(declare-fun code/-1827008135 (var3407) var543)
(declare-fun var2815_getArgumentsAndReturnSizes/-942562819 (String) Int)
(declare-fun maxLocals/-1827008135 (var3407) Int)
(declare-fun var155-init () var155)
(declare-fun <init>/-2069075760 (var155) void)
(declare-fun firstBasicBlock/-1827008135 (var3407) var155)
(declare-fun visitLabel/567040954 (var3407 var155) void)
(declare-const null-var3407 var3407)
(declare-const null-var54 var54)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3726 var3407) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter 
(assert (not (= var3726 null-var3407)))
(declare-const var178 var54) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.internal.asm.SymbolTable 
(assert (not (= var178 null-var54)))
(declare-const var430 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var430 null-Int)))
(declare-const var1648 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1648 null-String)))
(declare-const var2929 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var2929 null-String)))
(declare-const var3170 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var3170 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3407-to-var313 var3726))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3726!1 var3407)
(declare-const var3726!2 var3407)
(assert (not (= var3726!2 null-var3407)))
(assert (= (symbolTable/-1827008135 var3726!2) var178)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> = r1 
(define-const var180 String "<init>") ; Statement: $r3 = "<init>" 
(assert true)
(define-const var3044 Bool (= var180 var1648)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $i7 = i0 
(assert (not (= (ite var3044 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1221 Int (bv2nat (bvor ((_ int2bv 64) var430) ((_ int2bv 64) 262144)))) ; Statement: $i7 = i0 | 262144 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int accessFlags> = $i7] 
(assert true) ; Non Conditional
(declare-const var3726!3 var3407)
(assert (not (= var3726!3 null-var3407)))
(assert (= (accessFlags/-1827008135 var3726!3) var1221)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int accessFlags> = $i7 
(assert true)
(define-const var1584 Int (addConstantUtf8/-281001296 var178 var1648)) ; Statement: $i1 = virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantUtf8(java.lang.String)>(r2) 
(declare-const var3726!4 var3407)
(assert (not (= var3726!4 null-var3407)))
(assert (= (nameIndex/-1827008135 var3726!4) var1584)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int nameIndex> = $i1 
(declare-const var3726!5 var3407)
(assert (not (= var3726!5 null-var3407)))
(assert (= (name/-1827008135 var3726!5) var1648)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: java.lang.String name> = r2 
(assert true)
(define-const var3903 Int (addConstantUtf8/-281001296 var178 var2929)) ; Statement: $i2 = virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantUtf8(java.lang.String)>(r4) 
(declare-const var3726!6 var3407)
(assert (not (= var3726!6 null-var3407)))
(assert (= (descriptorIndex/-1827008135 var3726!6) var3903)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int descriptorIndex> = $i2 
(declare-const var3726!7 var3407)
(assert (not (= var3726!7 null-var3407)))
(assert (= (descriptor/-1827008135 var3726!7) var2929)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: java.lang.String descriptor> = r4 
(define-const var842 var543 var543-init) ; Statement: $r8 = new com.alibaba.fastjson2.internal.asm.ByteVector 
(assert true)
;(assert (<init>/-459306080 var842 var3170)) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.internal.asm.ByteVector: void <init>(int)>(i3) 

(declare-const var842!1 var543)
(declare-const var3170!1 Int)
(declare-const var3726!8 var3407)
(assert (not (= var3726!8 null-var3407)))
(assert (= (code/-1827008135 var3726!8) var842!1)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> = $r8 
(define-const var702 Int (var2815_getArgumentsAndReturnSizes/-942562819 var2929)) ; Statement: $i4 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: int getArgumentsAndReturnSizes(java.lang.String)>(r4) 
(define-const var35 Int (div var702 (to_int (^ 2 2)))) ; Statement: $i6 = $i4 >> 2 
(define-const var3231 Int var35) ; Statement: i8 = $i6 
(define-const var927 Int (bv2nat (bvand ((_ int2bv 64) var430) ((_ int2bv 64) 8)))) ; Statement: $i5 = i0 & 8 
 ; Statement: if $i5 == 0 goto r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int maxLocals> = i8 
(assert (= var927 0)) ; Cond: $i5 == 0 
(declare-const var3726!9 var3407)
(assert (not (= var3726!9 null-var3407)))
(assert (= (maxLocals/-1827008135 var3726!9) var3231)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int maxLocals> = i8 
(define-const var767 var155 var155-init) ; Statement: $r9 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var767)) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var767!1 var155)
(declare-const var3726!10 var3407)
(assert (not (= var3726!10 null-var3407)))
(assert (= (firstBasicBlock/-1827008135 var3726!10) var767!1)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label firstBasicBlock> = $r9 
(define-const var995 var155 (firstBasicBlock/-1827008135 var3726!10)) ; Statement: $r7 = r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label firstBasicBlock> 
(assert true)
;(assert (visitLabel/567040954 var3726!10 var995)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7) 

(declare-const var3726!11 var3407)
(declare-const var995!1 var155)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3407-to-var313=([com.alibaba.fastjson2.internal.asm.MethodWriter], java.lang.Object), symbolTable/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.SymbolTable), accessFlags/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), addConstantUtf8/-281001296=([com.alibaba.fastjson2.internal.asm.SymbolTable, java.lang.String], int), nameIndex/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), name/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], java.lang.String), descriptorIndex/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), descriptor/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], java.lang.String), var543-init=([], com.alibaba.fastjson2.internal.asm.ByteVector), <init>/-459306080=([com.alibaba.fastjson2.internal.asm.ByteVector, int], void), code/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.ByteVector), var2815_getArgumentsAndReturnSizes/-942562819=([java.lang.String], int), maxLocals/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), var155-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), firstBasicBlock/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.Label), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void)}
; {var3407=com.alibaba.fastjson2.internal.asm.MethodWriter, var3726=r0, var54=com.alibaba.fastjson2.internal.asm.SymbolTable, var178=r1, var430=i0, var1648=r2, var919=null_type, var2929=r4, var3170=i3, var313=java.lang.Object, var180=$r3, var3044=$z0, var1221=$i7, var1584=$i1, var3903=$i2, var543=com.alibaba.fastjson2.internal.asm.ByteVector, var842=$r8, var2815=com.alibaba.fastjson2.internal.asm.Type, var702=$i4, var35=$i6, var3231=i8, var927=$i5, var155=com.alibaba.fastjson2.internal.asm.Label, var767=$r9, var995=$r7}
; {com.alibaba.fastjson2.internal.asm.MethodWriter=var3407, r0=var3726, com.alibaba.fastjson2.internal.asm.SymbolTable=var54, r1=var178, i0=var430, r2=var1648, null_type=var919, r4=var2929, i3=var3170, java.lang.Object=var313, $r3=var180, $z0=var3044, $i7=var1221, $i1=var1584, $i2=var3903, com.alibaba.fastjson2.internal.asm.ByteVector=var543, $r8=var842, com.alibaba.fastjson2.internal.asm.Type=var2815, $i4=var702, $i6=var35, i8=var3231, $i5=var927, com.alibaba.fastjson2.internal.asm.Label=var155, $r9=var767, $r7=var995}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter;	r1 := @parameter0: com.alibaba.fastjson2.internal.asm.SymbolTable;	i0 := @parameter1: int;	r2 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String;	i3 := @parameter4: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> = r1;	$r3 = "<init>";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $i7 = i0;	$i7 = i0 | 262144;	goto [?= r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int accessFlags> = $i7];	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int accessFlags> = $i7;	$i1 = virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantUtf8(java.lang.String)>(r2);	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int nameIndex> = $i1;	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: java.lang.String name> = r2;	$i2 = virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantUtf8(java.lang.String)>(r4);	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int descriptorIndex> = $i2;	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: java.lang.String descriptor> = r4;	$r8 = new com.alibaba.fastjson2.internal.asm.ByteVector;	specialinvoke $r8.<com.alibaba.fastjson2.internal.asm.ByteVector: void <init>(int)>(i3);	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> = $r8;	$i4 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: int getArgumentsAndReturnSizes(java.lang.String)>(r4);	$i6 = $i4 >> 2;	i8 = $i6;	$i5 = i0 & 8;	if $i5 == 0 goto r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int maxLocals> = i8;	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: int maxLocals> = i8;	$r9 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r9.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label firstBasicBlock> = $r9;	$r7 = r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label firstBasicBlock>;	virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7);	return
;block_num 4