(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var821 0)
(declare-sort var138 0)
(declare-sort var2699 0)
(declare-sort var3823 0)
(declare-sort var1385 0)
(declare-sort var1389 0)
(declare-sort var3423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var138_desc/1182016152 (ClassObject) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2699_getTypeInternal/625733509 (String Int Int) var2699)
(declare-fun code/-1827008135 (var821) var3823)
(declare-fun length/-132820368 (var3823) Int)
(declare-fun lastBytecodeOffset/-1827008135 (var821) Int)
(declare-fun sort/-537476865 (var2699) Int)
(declare-fun symbolTable/-1827008135 (var821) var1385)
(declare-fun getDescriptor/-737674326 (var2699) String)
(declare-fun addConstantUtf8Reference/-67480876 (var1385 Int String) var1389)
(declare-fun index/-1147909603 (var1389) Int)
(declare-fun put11/1583858492 (var3823 Int Int) void)
(declare-fun currentBasicBlock/-1827008135 (var821) var3423)
(declare-const null-var821 var821)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3423 var3423)
(declare-const var2512 var821) ; Statement: r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter 
(assert (not (= var2512 null-var821)))
(declare-const var1025 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1025 null-ClassObject)))
(define-const var3447 String (var138_desc/1182016152 var1025)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0) 
(assert true)
(define-const var3260 Int (length/-134980193 var3447)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var278 var2699 (var2699_getTypeInternal/625733509 var3447 0 var3260)) ; Statement: r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0) 
(define-const var3845 var3823 (code/-1827008135 var2512)) ; Statement: $r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(define-const var864 Int (length/-132820368 var3845)) ; Statement: $i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length> 
(declare-const var2512!1 var821)
(assert (not (= var2512!1 null-var821)))
(assert (= (lastBytecodeOffset/-1827008135 var2512!1) var864)) ; Statement: r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1 
(define-const var311 Int (sort/-537476865 var278)) ; Statement: $i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
 ; Statement: if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
(assert (not (not (= var311 12)))) ; Negate: Cond: $i2 != 12  
(define-const var1593 Int 10) ; Statement: $i6 = 10 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(assert (not (= var1593 10))) ; Cond: $i6 != 10 
(define-const var794 var1385 (symbolTable/-1827008135 var2512!1)) ; Statement: $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(assert true)
(define-const var797 String (getDescriptor/-737674326 var278)) ; Statement: $r6 = virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var3811 var1389 (addConstantUtf8Reference/-67480876 var794 7 var797)) ; Statement: r16 = virtualinvoke $r5.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol addConstantUtf8Reference(int,java.lang.String)>(7, $r6) 
(assert true) ; Non Conditional
(define-const var1806 Int (index/-1147909603 var3811)) ; Statement: $i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index> 
 ; Statement: if $i5 < 256 goto $r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(assert (< var1806 256)) ; Cond: $i5 < 256 
(define-const var1219 var3823 (code/-1827008135 var2512!1)) ; Statement: $r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(assert true)
;(assert (put11/1583858492 var1219 18 var1806)) ; Statement: virtualinvoke $r7.<com.alibaba.fastjson2.internal.asm.ByteVector: void put11(int,int)>(18, $i5) 

(declare-const var1219!1 var3823)
(declare-const var363 Int)
(declare-const var1806!1 Int)
(assert true) ; Non Conditional
(define-const var2314 var3423 (currentBasicBlock/-1827008135 var2512!1)) ; Statement: $r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock> 
 ; Statement: if $r8 == null goto return 
(assert (= var2314 null-var3423)) ; Cond: $r8 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var138_desc/1182016152=([java.lang.Class], java.lang.String), length/-134980193=([java.lang.String], int), var2699_getTypeInternal/625733509=([java.lang.String, int, int], com.alibaba.fastjson2.internal.asm.Type), code/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.ByteVector), length/-132820368=([com.alibaba.fastjson2.internal.asm.ByteVector], int), lastBytecodeOffset/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), sort/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), symbolTable/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.SymbolTable), getDescriptor/-737674326=([com.alibaba.fastjson2.internal.asm.Type], java.lang.String), addConstantUtf8Reference/-67480876=([com.alibaba.fastjson2.internal.asm.SymbolTable, int, java.lang.String], com.alibaba.fastjson2.internal.asm.Symbol), index/-1147909603=([com.alibaba.fastjson2.internal.asm.Symbol], int), put11/1583858492=([com.alibaba.fastjson2.internal.asm.ByteVector, int, int], void), currentBasicBlock/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.Label)}
; {var821=com.alibaba.fastjson2.internal.asm.MethodWriter, var2512=r3, var1025=r0, var138=com.alibaba.fastjson2.internal.asm.ASMUtils, var3447=r1, var3260=$i0, var2699=com.alibaba.fastjson2.internal.asm.Type, var278=r2, var3823=com.alibaba.fastjson2.internal.asm.ByteVector, var3845=$r4, var864=$i1, var311=$i2, var1593=$i6, var1385=com.alibaba.fastjson2.internal.asm.SymbolTable, var794=$r5, var797=$r6, var1389=com.alibaba.fastjson2.internal.asm.Symbol, var3811=r16, var1806=$i5, var1219=$r7, var363=18, var3423=com.alibaba.fastjson2.internal.asm.Label, var2314=$r8}
; {com.alibaba.fastjson2.internal.asm.MethodWriter=var821, r3=var2512, r0=var1025, com.alibaba.fastjson2.internal.asm.ASMUtils=var138, r1=var3447, $i0=var3260, com.alibaba.fastjson2.internal.asm.Type=var2699, r2=var278, com.alibaba.fastjson2.internal.asm.ByteVector=var3823, $r4=var3845, $i1=var864, $i2=var311, $i6=var1593, com.alibaba.fastjson2.internal.asm.SymbolTable=var1385, $r5=var794, $r6=var797, com.alibaba.fastjson2.internal.asm.Symbol=var1389, r16=var3811, $i5=var1806, $r7=var1219, 18=var363, com.alibaba.fastjson2.internal.asm.Label=var3423, $r8=var2314}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter;	r0 := @parameter0: java.lang.Class;	r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0);	$r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length>;	r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1;	$i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	$i6 = 10;	goto [?= (branch)];	if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r6 = virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String getDescriptor()>();	r16 = virtualinvoke $r5.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol addConstantUtf8Reference(int,java.lang.String)>(7, $r6);	$i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index>;	if $i5 < 256 goto $r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	virtualinvoke $r7.<com.alibaba.fastjson2.internal.asm.ByteVector: void put11(int,int)>(18, $i5);	$r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock>;	if $r8 == null goto return;	return
;block_num 8