(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1672 0)
(declare-sort var253 0)
(declare-sort var1713 0)
(declare-sort var3301 0)
(declare-sort var687 0)
(declare-sort var2078 0)
(declare-sort var334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var253_desc/1182016152 (ClassObject) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1713_getTypeInternal/625733509 (String Int Int) var1713)
(declare-fun code/-1827008135 (var1672) var3301)
(declare-fun length/-132820368 (var3301) Int)
(declare-fun lastBytecodeOffset/-1827008135 (var1672) Int)
(declare-fun sort/-537476865 (var1713) Int)
(declare-fun symbolTable/-1827008135 (var1672) var687)
(declare-fun valueBuffer/-537476865 (var1713) String)
(declare-fun valueBegin/-537476865 (var1713) Int)
(declare-fun valueEnd/-537476865 (var1713) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun addConstantUtf8Reference/-67480876 (var687 Int String) var2078)
(declare-fun index/-1147909603 (var2078) Int)
(declare-fun put11/1583858492 (var3301 Int Int) void)
(declare-fun currentBasicBlock/-1827008135 (var1672) var334)
(declare-const null-var1672 var1672)
(declare-const null-ClassObject ClassObject)
(declare-const null-var334 var334)
(declare-const var3949 var1672) ; Statement: r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter 
(assert (not (= var3949 null-var1672)))
(declare-const var2006 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2006 null-ClassObject)))
(define-const var1657 String (var253_desc/1182016152 var2006)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0) 
(assert true)
(define-const var3944 Int (length/-134980193 var1657)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3929 var1713 (var1713_getTypeInternal/625733509 var1657 0 var3944)) ; Statement: r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0) 
(define-const var2675 var3301 (code/-1827008135 var3949)) ; Statement: $r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(define-const var3125 Int (length/-132820368 var2675)) ; Statement: $i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length> 
(declare-const var3949!1 var1672)
(assert (not (= var3949!1 null-var1672)))
(assert (= (lastBytecodeOffset/-1827008135 var3949!1) var3125)) ; Statement: r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1 
(define-const var501 Int (sort/-537476865 var3929)) ; Statement: $i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
 ; Statement: if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
(assert (not (= var501 12))) ; Cond: $i2 != 12 
(define-const var18 Int (sort/-537476865 var3929)) ; Statement: $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
(assert true) ; Non Conditional
 ; Statement: if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(assert (not (not (= var18 10)))) ; Negate: Cond: $i6 != 10  
(define-const var3273 var687 (symbolTable/-1827008135 var3949!1)) ; Statement: $r14 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(define-const var2508 String (valueBuffer/-537476865 var3929)) ; Statement: $r13 = r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer> 
(define-const var1414 Int (valueBegin/-537476865 var3929)) ; Statement: $i4 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueBegin> 
(define-const var1610 Int (valueEnd/-537476865 var3929)) ; Statement: $i3 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueEnd> 
(assert (not (and true (and (>= var1414 0) (>= (str.len var2508) var1610) (>= var1610 var1414)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var253_desc/1182016152=([java.lang.Class], java.lang.String), length/-134980193=([java.lang.String], int), var1713_getTypeInternal/625733509=([java.lang.String, int, int], com.alibaba.fastjson2.internal.asm.Type), code/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.ByteVector), length/-132820368=([com.alibaba.fastjson2.internal.asm.ByteVector], int), lastBytecodeOffset/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), sort/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), symbolTable/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.SymbolTable), valueBuffer/-537476865=([com.alibaba.fastjson2.internal.asm.Type], java.lang.String), valueBegin/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), valueEnd/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), addConstantUtf8Reference/-67480876=([com.alibaba.fastjson2.internal.asm.SymbolTable, int, java.lang.String], com.alibaba.fastjson2.internal.asm.Symbol), index/-1147909603=([com.alibaba.fastjson2.internal.asm.Symbol], int), put11/1583858492=([com.alibaba.fastjson2.internal.asm.ByteVector, int, int], void), currentBasicBlock/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.Label)}
; {var1672=com.alibaba.fastjson2.internal.asm.MethodWriter, var3949=r3, var2006=r0, var253=com.alibaba.fastjson2.internal.asm.ASMUtils, var1657=r1, var3944=$i0, var1713=com.alibaba.fastjson2.internal.asm.Type, var3929=r2, var3301=com.alibaba.fastjson2.internal.asm.ByteVector, var2675=$r4, var3125=$i1, var501=$i2, var18=$i6, var687=com.alibaba.fastjson2.internal.asm.SymbolTable, var3273=$r14, var2508=$r13, var1414=$i4, var1610=$i3, var317=$r15, var2078=com.alibaba.fastjson2.internal.asm.Symbol, var3870=r16, var3970=$i5, var1261=$r7, var1252=18, var334=com.alibaba.fastjson2.internal.asm.Label, var888=$r8}
; {com.alibaba.fastjson2.internal.asm.MethodWriter=var1672, r3=var3949, r0=var2006, com.alibaba.fastjson2.internal.asm.ASMUtils=var253, r1=var1657, $i0=var3944, com.alibaba.fastjson2.internal.asm.Type=var1713, r2=var3929, com.alibaba.fastjson2.internal.asm.ByteVector=var3301, $r4=var2675, $i1=var3125, $i2=var501, $i6=var18, com.alibaba.fastjson2.internal.asm.SymbolTable=var687, $r14=var3273, $r13=var2508, $i4=var1414, $i3=var1610, $r15=var317, com.alibaba.fastjson2.internal.asm.Symbol=var2078, r16=var3870, $i5=var3970, $r7=var1261, 18=var1252, com.alibaba.fastjson2.internal.asm.Label=var334, $r8=var888}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter;	r0 := @parameter0: java.lang.Class;	r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0);	$r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length>;	r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1;	$i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	$i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r14 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r13 = r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;	$i4 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueBegin>;	$i3 = r2.<com.alibaba.fastjson2.internal.asm.Type: int valueEnd>;	$r15 = virtualinvoke $r13.<java.lang.String: java.lang.String substring(int,int)>($i4, $i3);	r16 = virtualinvoke $r14.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol addConstantUtf8Reference(int,java.lang.String)>(7, $r15);	goto [?= $i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index>];	$i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index>;	if $i5 < 256 goto $r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	virtualinvoke $r7.<com.alibaba.fastjson2.internal.asm.ByteVector: void put11(int,int)>(18, $i5);	$r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock>;	if $r8 == null goto return;	return
;block_num 8