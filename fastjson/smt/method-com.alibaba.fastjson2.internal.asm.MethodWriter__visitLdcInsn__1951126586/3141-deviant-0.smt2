(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var897 0)
(declare-sort var1992 0)
(declare-sort var3843 0)
(declare-sort var2889 0)
(declare-sort var1793 0)
(declare-sort var2250 0)
(declare-sort var2657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1992_desc/1182016152 (ClassObject) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3843_getTypeInternal/625733509 (String Int Int) var3843)
(declare-fun code/-1827008135 (var897) var2889)
(declare-fun length/-132820368 (var2889) Int)
(declare-fun lastBytecodeOffset/-1827008135 (var897) Int)
(declare-fun sort/-537476865 (var3843) Int)
(declare-fun symbolTable/-1827008135 (var897) var1793)
(declare-fun valueBuffer/-537476865 (var3843) String)
(declare-fun valueBegin/-537476865 (var3843) Int)
(declare-fun valueEnd/-537476865 (var3843) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun addConstantUtf8Reference/-67480876 (var1793 Int String) var2250)
(declare-fun index/-1147909603 (var2250) Int)
(declare-fun put12/1392378469 (var2889 Int Int) var2889)
(declare-fun currentBasicBlock/-1827008135 (var897) var2657)
(declare-const null-var897 var897)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2657 var2657)
(declare-const var341 var897) ; Statement: r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter 
(assert (not (= var341 null-var897)))
(declare-const var1701 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1701 null-ClassObject)))
(define-const var3933 String (var1992_desc/1182016152 var1701)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0) 
(assert true)
(define-const var3713 Int (length/-134980193 var3933)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2785 var3843 (var3843_getTypeInternal/625733509 var3933 0 var3713)) ; Statement: r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0) 
(define-const var258 var2889 (code/-1827008135 var341)) ; Statement: $r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(define-const var1271 Int (length/-132820368 var258)) ; Statement: $i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length> 
(declare-const var341!1 var897)
(assert (not (= var341!1 null-var897)))
(assert (= (lastBytecodeOffset/-1827008135 var341!1) var1271)) ; Statement: r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1 
(define-const var376 Int (sort/-537476865 var2785)) ; Statement: $i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
 ; Statement: if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
(assert (not (= var376 12))) ; Cond: $i2 != 12 
(define-const var2350 Int (sort/-537476865 var2785)) ; Statement: $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
(assert true) ; Non Conditional
 ; Statement: if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(assert (not (not (= var2350 10)))) ; Negate: Cond: $i6 != 10  
(define-const var282 var1793 (symbolTable/-1827008135 var341!1)) ; Statement: $r14 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(define-const var572 String (valueBuffer/-537476865 var2785)) ; Statement: $r13 = r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer> 
(define-const var2771 Int (valueBegin/-537476865 var2785)) ; Statement: $i4 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueBegin> 
(define-const var172 Int (valueEnd/-537476865 var2785)) ; Statement: $i3 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueEnd> 
(assert (not (and true (and (>= var2771 0) (>= (str.len var572) var172) (>= var172 var2771)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var1992_desc/1182016152=([java.lang.Class], java.lang.String), length/-134980193=([java.lang.String], int), var3843_getTypeInternal/625733509=([java.lang.String, int, int], com.alibaba.fastjson2.internal.asm.Type), code/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.ByteVector), length/-132820368=([com.alibaba.fastjson2.internal.asm.ByteVector], int), lastBytecodeOffset/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), sort/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), symbolTable/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.SymbolTable), valueBuffer/-537476865=([com.alibaba.fastjson2.internal.asm.Type], java.lang.String), valueBegin/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), valueEnd/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), addConstantUtf8Reference/-67480876=([com.alibaba.fastjson2.internal.asm.SymbolTable, int, java.lang.String], com.alibaba.fastjson2.internal.asm.Symbol), index/-1147909603=([com.alibaba.fastjson2.internal.asm.Symbol], int), put12/1392378469=([com.alibaba.fastjson2.internal.asm.ByteVector, int, int], com.alibaba.fastjson2.internal.asm.ByteVector), currentBasicBlock/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.Label)}
; {var897=com.alibaba.fastjson2.internal.asm.MethodWriter, var341=r3, var1701=r0, var1992=com.alibaba.fastjson2.internal.asm.ASMUtils, var3933=r1, var3713=$i0, var3843=com.alibaba.fastjson2.internal.asm.Type, var2785=r2, var2889=com.alibaba.fastjson2.internal.asm.ByteVector, var258=$r4, var1271=$i1, var376=$i2, var2350=$i6, var1793=com.alibaba.fastjson2.internal.asm.SymbolTable, var282=$r14, var572=$r13, var2771=$i4, var172=$i3, var24=$r15, var2250=com.alibaba.fastjson2.internal.asm.Symbol, var2127=r16, var3532=$i5, var842=$r12, var2589=19, var2657=com.alibaba.fastjson2.internal.asm.Label, var2764=$r8}
; {com.alibaba.fastjson2.internal.asm.MethodWriter=var897, r3=var341, r0=var1701, com.alibaba.fastjson2.internal.asm.ASMUtils=var1992, r1=var3933, $i0=var3713, com.alibaba.fastjson2.internal.asm.Type=var3843, r2=var2785, com.alibaba.fastjson2.internal.asm.ByteVector=var2889, $r4=var258, $i1=var1271, $i2=var376, $i6=var2350, com.alibaba.fastjson2.internal.asm.SymbolTable=var1793, $r14=var282, $r13=var572, $i4=var2771, $i3=var172, $r15=var24, com.alibaba.fastjson2.internal.asm.Symbol=var2250, r16=var2127, $i5=var3532, $r12=var842, 19=var2589, com.alibaba.fastjson2.internal.asm.Label=var2657, $r8=var2764}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter;	r0 := @parameter0: java.lang.Class;	r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0);	$r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length>;	r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1;	$i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	$i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r14 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r13 = r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;	$i4 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueBegin>;	$i3 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueEnd>;	$r15 = virtualinvoke $r13.<java.lang.String: java.lang.String substring(int,int)>($i4, $i3);	r16 = virtualinvoke $r14.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol addConstantUtf8Reference(int,java.lang.String)>(7, $r15);	goto [?= $i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index>];	$i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index>;	if $i5 < 256 goto $r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$r12 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	virtualinvoke $r12.<com.alibaba.fastjson2.internal.asm.ByteVector: com.alibaba.fastjson2.internal.asm.ByteVector put12(int,int)>(19, $i5);	goto [?= $r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock>];	$r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock>;	if $r8 == null goto return;	return
;block_num 8