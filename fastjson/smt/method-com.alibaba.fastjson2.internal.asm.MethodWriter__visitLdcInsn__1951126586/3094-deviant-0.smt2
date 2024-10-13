(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2833 0)
(declare-sort var3315 0)
(declare-sort var2967 0)
(declare-sort var2123 0)
(declare-sort var1045 0)
(declare-sort var2362 0)
(declare-sort var2820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3315_desc/1182016152 (ClassObject) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2967_getTypeInternal/625733509 (String Int Int) var2967)
(declare-fun code/-1827008135 (var2833) var2123)
(declare-fun length/-132820368 (var2123) Int)
(declare-fun lastBytecodeOffset/-1827008135 (var2833) Int)
(declare-fun sort/-537476865 (var2967) Int)
(declare-fun symbolTable/-1827008135 (var2833) var1045)
(declare-fun valueBuffer/-537476865 (var2967) String)
(declare-fun valueBegin/-537476865 (var2967) Int)
(declare-fun valueEnd/-537476865 (var2967) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun addConstantUtf8Reference/-67480876 (var1045 Int String) var2362)
(declare-fun index/-1147909603 (var2362) Int)
(declare-fun put11/1583858492 (var2123 Int Int) void)
(declare-fun currentBasicBlock/-1827008135 (var2833) var2820)
(declare-const null-var2833 var2833)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2820 var2820)
(declare-const var1650 var2833) ; Statement: r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter 
(assert (not (= var1650 null-var2833)))
(declare-const var2815 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2815 null-ClassObject)))
(define-const var1398 String (var3315_desc/1182016152 var2815)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0) 
(assert true)
(define-const var3607 Int (length/-134980193 var1398)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var564 var2967 (var2967_getTypeInternal/625733509 var1398 0 var3607)) ; Statement: r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0) 
(define-const var3062 var2123 (code/-1827008135 var1650)) ; Statement: $r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(define-const var1764 Int (length/-132820368 var3062)) ; Statement: $i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length> 
(declare-const var1650!1 var2833)
(assert (not (= var1650!1 null-var2833)))
(assert (= (lastBytecodeOffset/-1827008135 var1650!1) var1764)) ; Statement: r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1 
(define-const var1414 Int (sort/-537476865 var564)) ; Statement: $i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
 ; Statement: if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
(assert (not (not (= var1414 12)))) ; Negate: Cond: $i2 != 12  
(define-const var2062 Int 10) ; Statement: $i6 = 10 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(assert (not (not (= var2062 10)))) ; Negate: Cond: $i6 != 10  
(define-const var3554 var1045 (symbolTable/-1827008135 var1650!1)) ; Statement: $r14 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(define-const var3231 String (valueBuffer/-537476865 var564)) ; Statement: $r13 = r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer> 
(define-const var2348 Int (valueBegin/-537476865 var564)) ; Statement: $i4 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueBegin> 
(define-const var3561 Int (valueEnd/-537476865 var564)) ; Statement: $i3 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueEnd> 
(assert (not (and true (and (>= var2348 0) (>= (str.len var3231) var3561) (>= var3561 var2348)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3315_desc/1182016152=([java.lang.Class], java.lang.String), length/-134980193=([java.lang.String], int), var2967_getTypeInternal/625733509=([java.lang.String, int, int], com.alibaba.fastjson2.internal.asm.Type), code/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.ByteVector), length/-132820368=([com.alibaba.fastjson2.internal.asm.ByteVector], int), lastBytecodeOffset/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), sort/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), symbolTable/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.SymbolTable), valueBuffer/-537476865=([com.alibaba.fastjson2.internal.asm.Type], java.lang.String), valueBegin/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), valueEnd/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), addConstantUtf8Reference/-67480876=([com.alibaba.fastjson2.internal.asm.SymbolTable, int, java.lang.String], com.alibaba.fastjson2.internal.asm.Symbol), index/-1147909603=([com.alibaba.fastjson2.internal.asm.Symbol], int), put11/1583858492=([com.alibaba.fastjson2.internal.asm.ByteVector, int, int], void), currentBasicBlock/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.Label)}
; {var2833=com.alibaba.fastjson2.internal.asm.MethodWriter, var1650=r3, var2815=r0, var3315=com.alibaba.fastjson2.internal.asm.ASMUtils, var1398=r1, var3607=$i0, var2967=com.alibaba.fastjson2.internal.asm.Type, var564=r2, var2123=com.alibaba.fastjson2.internal.asm.ByteVector, var3062=$r4, var1764=$i1, var1414=$i2, var2062=$i6, var1045=com.alibaba.fastjson2.internal.asm.SymbolTable, var3554=$r14, var3231=$r13, var2348=$i4, var3561=$i3, var2347=$r15, var2362=com.alibaba.fastjson2.internal.asm.Symbol, var2255=r16, var2631=$i5, var3775=$r7, var1263=18, var2820=com.alibaba.fastjson2.internal.asm.Label, var1410=$r8}
; {com.alibaba.fastjson2.internal.asm.MethodWriter=var2833, r3=var1650, r0=var2815, com.alibaba.fastjson2.internal.asm.ASMUtils=var3315, r1=var1398, $i0=var3607, com.alibaba.fastjson2.internal.asm.Type=var2967, r2=var564, com.alibaba.fastjson2.internal.asm.ByteVector=var2123, $r4=var3062, $i1=var1764, $i2=var1414, $i6=var2062, com.alibaba.fastjson2.internal.asm.SymbolTable=var1045, $r14=var3554, $r13=var3231, $i4=var2348, $i3=var3561, $r15=var2347, com.alibaba.fastjson2.internal.asm.Symbol=var2362, r16=var2255, $i5=var2631, $r7=var3775, 18=var1263, com.alibaba.fastjson2.internal.asm.Label=var2820, $r8=var1410}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter;	r0 := @parameter0: java.lang.Class;	r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0);	$r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length>;	r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1;	$i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	$i6 = 10;	goto [?= (branch)];	if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r14 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r13 = r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;	$i4 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueBegin>;	$i3 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueEnd>;	$r15 = virtualinvoke $r13.<java.lang.String: java.lang.String substring(int,int)>($i4, $i3);	r16 = virtualinvoke $r14.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol addConstantUtf8Reference(int,java.lang.String)>(7, $r15);	goto [?= $i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index>];	$i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index>;	if $i5 < 256 goto $r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	virtualinvoke $r7.<com.alibaba.fastjson2.internal.asm.ByteVector: void put11(int,int)>(18, $i5);	$r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock>;	if $r8 == null goto return;	return
;block_num 8