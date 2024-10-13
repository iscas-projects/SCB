(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var882 0)
(declare-sort var1236 0)
(declare-sort var1883 0)
(declare-sort var393 0)
(declare-sort var165 0)
(declare-sort var3634 0)
(declare-sort var2855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1236_desc/1182016152 (ClassObject) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1883_getTypeInternal/625733509 (String Int Int) var1883)
(declare-fun code/-1827008135 (var882) var393)
(declare-fun length/-132820368 (var393) Int)
(declare-fun lastBytecodeOffset/-1827008135 (var882) Int)
(declare-fun sort/-537476865 (var1883) Int)
(declare-fun symbolTable/-1827008135 (var882) var165)
(declare-fun getDescriptor/-737674326 (var1883) String)
(declare-fun addConstantUtf8Reference/-67480876 (var165 Int String) var3634)
(declare-fun index/-1147909603 (var3634) Int)
(declare-fun put12/1392378469 (var393 Int Int) var393)
(declare-fun currentBasicBlock/-1827008135 (var882) var2855)
(declare-const null-var882 var882)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2855 var2855)
(declare-const var2556 var882) ; Statement: r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter 
(assert (not (= var2556 null-var882)))
(declare-const var2206 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2206 null-ClassObject)))
(define-const var1583 String (var1236_desc/1182016152 var2206)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0) 
(assert true)
(define-const var3436 Int (length/-134980193 var1583)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2350 var1883 (var1883_getTypeInternal/625733509 var1583 0 var3436)) ; Statement: r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0) 
(define-const var1094 var393 (code/-1827008135 var2556)) ; Statement: $r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(define-const var3080 Int (length/-132820368 var1094)) ; Statement: $i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length> 
(declare-const var2556!1 var882)
(assert (not (= var2556!1 null-var882)))
(assert (= (lastBytecodeOffset/-1827008135 var2556!1) var3080)) ; Statement: r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1 
(define-const var1181 Int (sort/-537476865 var2350)) ; Statement: $i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
 ; Statement: if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
(assert (not (= var1181 12))) ; Cond: $i2 != 12 
(define-const var257 Int (sort/-537476865 var2350)) ; Statement: $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
(assert true) ; Non Conditional
 ; Statement: if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(assert (not (= var257 10))) ; Cond: $i6 != 10 
(define-const var2118 var165 (symbolTable/-1827008135 var2556!1)) ; Statement: $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(assert true)
(define-const var372 String (getDescriptor/-737674326 var2350)) ; Statement: $r6 = virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var3633 var3634 (addConstantUtf8Reference/-67480876 var2118 7 var372)) ; Statement: r16 = virtualinvoke $r5.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol addConstantUtf8Reference(int,java.lang.String)>(7, $r6) 
(assert true) ; Non Conditional
(define-const var3853 Int (index/-1147909603 var3633)) ; Statement: $i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index> 
 ; Statement: if $i5 < 256 goto $r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(assert (not (< var3853 256))) ; Negate: Cond: $i5 < 256  
(define-const var1789 var393 (code/-1827008135 var2556!1)) ; Statement: $r12 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(assert true)
;(assert (put12/1392378469 var1789 19 var3853)) ; Statement: virtualinvoke $r12.<com.alibaba.fastjson2.internal.asm.ByteVector: com.alibaba.fastjson2.internal.asm.ByteVector put12(int,int)>(19, $i5) 

(declare-const var1789!1 var393)
(declare-const var2009 Int)
(declare-const var3853!1 Int)
 ; Statement: goto [?= $r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock>] 
(assert true) ; Non Conditional
(define-const var3737 var2855 (currentBasicBlock/-1827008135 var2556!1)) ; Statement: $r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock> 
 ; Statement: if $r8 == null goto return 
(assert (= var3737 null-var2855)) ; Cond: $r8 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1236_desc/1182016152=([java.lang.Class], java.lang.String), length/-134980193=([java.lang.String], int), var1883_getTypeInternal/625733509=([java.lang.String, int, int], com.alibaba.fastjson2.internal.asm.Type), code/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.ByteVector), length/-132820368=([com.alibaba.fastjson2.internal.asm.ByteVector], int), lastBytecodeOffset/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), sort/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), symbolTable/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.SymbolTable), getDescriptor/-737674326=([com.alibaba.fastjson2.internal.asm.Type], java.lang.String), addConstantUtf8Reference/-67480876=([com.alibaba.fastjson2.internal.asm.SymbolTable, int, java.lang.String], com.alibaba.fastjson2.internal.asm.Symbol), index/-1147909603=([com.alibaba.fastjson2.internal.asm.Symbol], int), put12/1392378469=([com.alibaba.fastjson2.internal.asm.ByteVector, int, int], com.alibaba.fastjson2.internal.asm.ByteVector), currentBasicBlock/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.Label)}
; {var882=com.alibaba.fastjson2.internal.asm.MethodWriter, var2556=r3, var2206=r0, var1236=com.alibaba.fastjson2.internal.asm.ASMUtils, var1583=r1, var3436=$i0, var1883=com.alibaba.fastjson2.internal.asm.Type, var2350=r2, var393=com.alibaba.fastjson2.internal.asm.ByteVector, var1094=$r4, var3080=$i1, var1181=$i2, var257=$i6, var165=com.alibaba.fastjson2.internal.asm.SymbolTable, var2118=$r5, var372=$r6, var3634=com.alibaba.fastjson2.internal.asm.Symbol, var3633=r16, var3853=$i5, var1789=$r12, var2009=19, var2855=com.alibaba.fastjson2.internal.asm.Label, var3737=$r8}
; {com.alibaba.fastjson2.internal.asm.MethodWriter=var882, r3=var2556, r0=var2206, com.alibaba.fastjson2.internal.asm.ASMUtils=var1236, r1=var1583, $i0=var3436, com.alibaba.fastjson2.internal.asm.Type=var1883, r2=var2350, com.alibaba.fastjson2.internal.asm.ByteVector=var393, $r4=var1094, $i1=var3080, $i2=var1181, $i6=var257, com.alibaba.fastjson2.internal.asm.SymbolTable=var165, $r5=var2118, $r6=var372, com.alibaba.fastjson2.internal.asm.Symbol=var3634, r16=var3633, $i5=var3853, $r12=var1789, 19=var2009, com.alibaba.fastjson2.internal.asm.Label=var2855, $r8=var3737}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter;	r0 := @parameter0: java.lang.Class;	r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0);	$r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length>;	r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1;	$i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	$i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r6 = virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String getDescriptor()>();	r16 = virtualinvoke $r5.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol addConstantUtf8Reference(int,java.lang.String)>(7, $r6);	$i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index>;	if $i5 < 256 goto $r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$r12 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	virtualinvoke $r12.<com.alibaba.fastjson2.internal.asm.ByteVector: com.alibaba.fastjson2.internal.asm.ByteVector put12(int,int)>(19, $i5);	goto [?= $r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock>];	$r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock>;	if $r8 == null goto return;	return
;block_num 8