(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3637 0)
(declare-sort var2934 0)
(declare-sort var330 0)
(declare-sort var1366 0)
(declare-sort var1127 0)
(declare-sort var2440 0)
(declare-sort var2343 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2934_desc/1182016152 (ClassObject) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var330_getTypeInternal/625733509 (String Int Int) var330)
(declare-fun code/-1827008135 (var3637) var1366)
(declare-fun length/-132820368 (var1366) Int)
(declare-fun lastBytecodeOffset/-1827008135 (var3637) Int)
(declare-fun sort/-537476865 (var330) Int)
(declare-fun symbolTable/-1827008135 (var3637) var1127)
(declare-fun valueBuffer/-537476865 (var330) String)
(declare-fun valueBegin/-537476865 (var330) Int)
(declare-fun valueEnd/-537476865 (var330) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun addConstantUtf8Reference/-67480876 (var1127 Int String) var2440)
(declare-fun index/-1147909603 (var2440) Int)
(declare-fun put12/1392378469 (var1366 Int Int) var1366)
(declare-fun currentBasicBlock/-1827008135 (var3637) var2343)
(declare-const null-var3637 var3637)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2343 var2343)
(declare-const var1155 var3637) ; Statement: r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter 
(assert (not (= var1155 null-var3637)))
(declare-const var612 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var612 null-ClassObject)))
(define-const var2177 String (var2934_desc/1182016152 var612)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0) 
(assert true)
(define-const var202 Int (length/-134980193 var2177)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1331 var330 (var330_getTypeInternal/625733509 var2177 0 var202)) ; Statement: r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0) 
(define-const var1140 var1366 (code/-1827008135 var1155)) ; Statement: $r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(define-const var53 Int (length/-132820368 var1140)) ; Statement: $i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length> 
(declare-const var1155!1 var3637)
(assert (not (= var1155!1 null-var3637)))
(assert (= (lastBytecodeOffset/-1827008135 var1155!1) var53)) ; Statement: r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1 
(define-const var1428 Int (sort/-537476865 var1331)) ; Statement: $i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
 ; Statement: if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
(assert (not (not (= var1428 12)))) ; Negate: Cond: $i2 != 12  
(define-const var3186 Int 10) ; Statement: $i6 = 10 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(assert (not (not (= var3186 10)))) ; Negate: Cond: $i6 != 10  
(define-const var3157 var1127 (symbolTable/-1827008135 var1155!1)) ; Statement: $r14 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(define-const var767 String (valueBuffer/-537476865 var1331)) ; Statement: $r13 = r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer> 
(define-const var2399 Int (valueBegin/-537476865 var1331)) ; Statement: $i4 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueBegin> 
(define-const var480 Int (valueEnd/-537476865 var1331)) ; Statement: $i3 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueEnd> 
(assert (not (and true (and (>= var2399 0) (>= (str.len var767) var480) (>= var480 var2399)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var2934_desc/1182016152=([java.lang.Class], java.lang.String), length/-134980193=([java.lang.String], int), var330_getTypeInternal/625733509=([java.lang.String, int, int], com.alibaba.fastjson2.internal.asm.Type), code/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.ByteVector), length/-132820368=([com.alibaba.fastjson2.internal.asm.ByteVector], int), lastBytecodeOffset/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), sort/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), symbolTable/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.SymbolTable), valueBuffer/-537476865=([com.alibaba.fastjson2.internal.asm.Type], java.lang.String), valueBegin/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), valueEnd/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), addConstantUtf8Reference/-67480876=([com.alibaba.fastjson2.internal.asm.SymbolTable, int, java.lang.String], com.alibaba.fastjson2.internal.asm.Symbol), index/-1147909603=([com.alibaba.fastjson2.internal.asm.Symbol], int), put12/1392378469=([com.alibaba.fastjson2.internal.asm.ByteVector, int, int], com.alibaba.fastjson2.internal.asm.ByteVector), currentBasicBlock/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.Label)}
; {var3637=com.alibaba.fastjson2.internal.asm.MethodWriter, var1155=r3, var612=r0, var2934=com.alibaba.fastjson2.internal.asm.ASMUtils, var2177=r1, var202=$i0, var330=com.alibaba.fastjson2.internal.asm.Type, var1331=r2, var1366=com.alibaba.fastjson2.internal.asm.ByteVector, var1140=$r4, var53=$i1, var1428=$i2, var3186=$i6, var1127=com.alibaba.fastjson2.internal.asm.SymbolTable, var3157=$r14, var767=$r13, var2399=$i4, var480=$i3, var411=$r15, var2440=com.alibaba.fastjson2.internal.asm.Symbol, var2615=r16, var312=$i5, var681=$r12, var3652=19, var2343=com.alibaba.fastjson2.internal.asm.Label, var1186=$r8}
; {com.alibaba.fastjson2.internal.asm.MethodWriter=var3637, r3=var1155, r0=var612, com.alibaba.fastjson2.internal.asm.ASMUtils=var2934, r1=var2177, $i0=var202, com.alibaba.fastjson2.internal.asm.Type=var330, r2=var1331, com.alibaba.fastjson2.internal.asm.ByteVector=var1366, $r4=var1140, $i1=var53, $i2=var1428, $i6=var3186, com.alibaba.fastjson2.internal.asm.SymbolTable=var1127, $r14=var3157, $r13=var767, $i4=var2399, $i3=var480, $r15=var411, com.alibaba.fastjson2.internal.asm.Symbol=var2440, r16=var2615, $i5=var312, $r12=var681, 19=var3652, com.alibaba.fastjson2.internal.asm.Label=var2343, $r8=var1186}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter;	r0 := @parameter0: java.lang.Class;	r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0);	$r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length>;	r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1;	$i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	$i6 = 10;	goto [?= (branch)];	if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r14 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r13 = r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;	$i4 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueBegin>;	$i3 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueEnd>;	$r15 = virtualinvoke $r13.<java.lang.String: java.lang.String substring(int,int)>($i4, $i3);	r16 = virtualinvoke $r14.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol addConstantUtf8Reference(int,java.lang.String)>(7, $r15);	goto [?= $i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index>];	$i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index>;	if $i5 < 256 goto $r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$r12 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	virtualinvoke $r12.<com.alibaba.fastjson2.internal.asm.ByteVector: com.alibaba.fastjson2.internal.asm.ByteVector put12(int,int)>(19, $i5);	goto [?= $r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock>];	$r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock>;	if $r8 == null goto return;	return
;block_num 8