(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3209 0)
(declare-sort var938 0)
(declare-sort var521 0)
(declare-sort var992 0)
(declare-sort var1566 0)
(declare-sort var1723 0)
(declare-sort var1482 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var938_desc/1182016152 (ClassObject) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var521_getTypeInternal/625733509 (String Int Int) var521)
(declare-fun code/-1827008135 (var3209) var992)
(declare-fun length/-132820368 (var992) Int)
(declare-fun lastBytecodeOffset/-1827008135 (var3209) Int)
(declare-fun sort/-537476865 (var521) Int)
(declare-fun symbolTable/-1827008135 (var3209) var1566)
(declare-fun getDescriptor/-737674326 (var521) String)
(declare-fun addConstantUtf8Reference/-67480876 (var1566 Int String) var1723)
(declare-fun index/-1147909603 (var1723) Int)
(declare-fun put11/1583858492 (var992 Int Int) void)
(declare-fun currentBasicBlock/-1827008135 (var3209) var1482)
(declare-const null-var3209 var3209)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1482 var1482)
(declare-const var2212 var3209) ; Statement: r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter 
(assert (not (= var2212 null-var3209)))
(declare-const var3711 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3711 null-ClassObject)))
(define-const var3845 String (var938_desc/1182016152 var3711)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0) 
(assert true)
(define-const var169 Int (length/-134980193 var3845)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2738 var521 (var521_getTypeInternal/625733509 var3845 0 var169)) ; Statement: r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0) 
(define-const var2907 var992 (code/-1827008135 var2212)) ; Statement: $r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(define-const var513 Int (length/-132820368 var2907)) ; Statement: $i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length> 
(declare-const var2212!1 var3209)
(assert (not (= var2212!1 null-var3209)))
(assert (= (lastBytecodeOffset/-1827008135 var2212!1) var513)) ; Statement: r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1 
(define-const var497 Int (sort/-537476865 var2738)) ; Statement: $i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
 ; Statement: if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
(assert (not (= var497 12))) ; Cond: $i2 != 12 
(define-const var1999 Int (sort/-537476865 var2738)) ; Statement: $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
(assert true) ; Non Conditional
 ; Statement: if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(assert (not (= var1999 10))) ; Cond: $i6 != 10 
(define-const var3386 var1566 (symbolTable/-1827008135 var2212!1)) ; Statement: $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(assert true)
(define-const var182 String (getDescriptor/-737674326 var2738)) ; Statement: $r6 = virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var2785 var1723 (addConstantUtf8Reference/-67480876 var3386 7 var182)) ; Statement: r16 = virtualinvoke $r5.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol addConstantUtf8Reference(int,java.lang.String)>(7, $r6) 
(assert true) ; Non Conditional
(define-const var1179 Int (index/-1147909603 var2785)) ; Statement: $i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index> 
 ; Statement: if $i5 < 256 goto $r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(assert (< var1179 256)) ; Cond: $i5 < 256 
(define-const var1346 var992 (code/-1827008135 var2212!1)) ; Statement: $r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(assert true)
;(assert (put11/1583858492 var1346 18 var1179)) ; Statement: virtualinvoke $r7.<com.alibaba.fastjson2.internal.asm.ByteVector: void put11(int,int)>(18, $i5) 

(declare-const var1346!1 var992)
(declare-const var2442 Int)
(declare-const var1179!1 Int)
(assert true) ; Non Conditional
(define-const var3630 var1482 (currentBasicBlock/-1827008135 var2212!1)) ; Statement: $r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock> 
 ; Statement: if $r8 == null goto return 
(assert (= var3630 null-var1482)) ; Cond: $r8 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var938_desc/1182016152=([java.lang.Class], java.lang.String), length/-134980193=([java.lang.String], int), var521_getTypeInternal/625733509=([java.lang.String, int, int], com.alibaba.fastjson2.internal.asm.Type), code/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.ByteVector), length/-132820368=([com.alibaba.fastjson2.internal.asm.ByteVector], int), lastBytecodeOffset/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), sort/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), symbolTable/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.SymbolTable), getDescriptor/-737674326=([com.alibaba.fastjson2.internal.asm.Type], java.lang.String), addConstantUtf8Reference/-67480876=([com.alibaba.fastjson2.internal.asm.SymbolTable, int, java.lang.String], com.alibaba.fastjson2.internal.asm.Symbol), index/-1147909603=([com.alibaba.fastjson2.internal.asm.Symbol], int), put11/1583858492=([com.alibaba.fastjson2.internal.asm.ByteVector, int, int], void), currentBasicBlock/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.Label)}
; {var3209=com.alibaba.fastjson2.internal.asm.MethodWriter, var2212=r3, var3711=r0, var938=com.alibaba.fastjson2.internal.asm.ASMUtils, var3845=r1, var169=$i0, var521=com.alibaba.fastjson2.internal.asm.Type, var2738=r2, var992=com.alibaba.fastjson2.internal.asm.ByteVector, var2907=$r4, var513=$i1, var497=$i2, var1999=$i6, var1566=com.alibaba.fastjson2.internal.asm.SymbolTable, var3386=$r5, var182=$r6, var1723=com.alibaba.fastjson2.internal.asm.Symbol, var2785=r16, var1179=$i5, var1346=$r7, var2442=18, var1482=com.alibaba.fastjson2.internal.asm.Label, var3630=$r8}
; {com.alibaba.fastjson2.internal.asm.MethodWriter=var3209, r3=var2212, r0=var3711, com.alibaba.fastjson2.internal.asm.ASMUtils=var938, r1=var3845, $i0=var169, com.alibaba.fastjson2.internal.asm.Type=var521, r2=var2738, com.alibaba.fastjson2.internal.asm.ByteVector=var992, $r4=var2907, $i1=var513, $i2=var497, $i6=var1999, com.alibaba.fastjson2.internal.asm.SymbolTable=var1566, $r5=var3386, $r6=var182, com.alibaba.fastjson2.internal.asm.Symbol=var1723, r16=var2785, $i5=var1179, $r7=var1346, 18=var2442, com.alibaba.fastjson2.internal.asm.Label=var1482, $r8=var3630}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter;	r0 := @parameter0: java.lang.Class;	r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0);	$r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length>;	r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1;	$i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	$i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r6 = virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String getDescriptor()>();	r16 = virtualinvoke $r5.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol addConstantUtf8Reference(int,java.lang.String)>(7, $r6);	$i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index>;	if $i5 < 256 goto $r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	virtualinvoke $r7.<com.alibaba.fastjson2.internal.asm.ByteVector: void put11(int,int)>(18, $i5);	$r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock>;	if $r8 == null goto return;	return
;block_num 8