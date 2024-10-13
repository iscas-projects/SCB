(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3695 0)
(declare-sort var715 0)
(declare-sort var1629 0)
(declare-sort var599 0)
(declare-sort var1388 0)
(declare-sort var279 0)
(declare-sort var851 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var715_desc/1182016152 (ClassObject) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1629_getTypeInternal/625733509 (String Int Int) var1629)
(declare-fun code/-1827008135 (var3695) var599)
(declare-fun length/-132820368 (var599) Int)
(declare-fun lastBytecodeOffset/-1827008135 (var3695) Int)
(declare-fun sort/-537476865 (var1629) Int)
(declare-fun symbolTable/-1827008135 (var3695) var1388)
(declare-fun getDescriptor/-737674326 (var1629) String)
(declare-fun addConstantUtf8Reference/-67480876 (var1388 Int String) var279)
(declare-fun index/-1147909603 (var279) Int)
(declare-fun put12/1392378469 (var599 Int Int) var599)
(declare-fun currentBasicBlock/-1827008135 (var3695) var851)
(declare-const null-var3695 var3695)
(declare-const null-ClassObject ClassObject)
(declare-const null-var851 var851)
(declare-const var1268 var3695) ; Statement: r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter 
(assert (not (= var1268 null-var3695)))
(declare-const var1032 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1032 null-ClassObject)))
(define-const var3359 String (var715_desc/1182016152 var1032)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0) 
(assert true)
(define-const var1912 Int (length/-134980193 var3359)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2111 var1629 (var1629_getTypeInternal/625733509 var3359 0 var1912)) ; Statement: r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0) 
(define-const var2562 var599 (code/-1827008135 var1268)) ; Statement: $r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(define-const var3650 Int (length/-132820368 var2562)) ; Statement: $i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length> 
(declare-const var1268!1 var3695)
(assert (not (= var1268!1 null-var3695)))
(assert (= (lastBytecodeOffset/-1827008135 var1268!1) var3650)) ; Statement: r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1 
(define-const var650 Int (sort/-537476865 var2111)) ; Statement: $i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
 ; Statement: if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
(assert (not (not (= var650 12)))) ; Negate: Cond: $i2 != 12  
(define-const var224 Int 10) ; Statement: $i6 = 10 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(assert (not (= var224 10))) ; Cond: $i6 != 10 
(define-const var1510 var1388 (symbolTable/-1827008135 var1268!1)) ; Statement: $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(assert true)
(define-const var2314 String (getDescriptor/-737674326 var2111)) ; Statement: $r6 = virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String getDescriptor()>() 
(assert true)
(define-const var2552 var279 (addConstantUtf8Reference/-67480876 var1510 7 var2314)) ; Statement: r16 = virtualinvoke $r5.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol addConstantUtf8Reference(int,java.lang.String)>(7, $r6) 
(assert true) ; Non Conditional
(define-const var2387 Int (index/-1147909603 var2552)) ; Statement: $i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index> 
 ; Statement: if $i5 < 256 goto $r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(assert (not (< var2387 256))) ; Negate: Cond: $i5 < 256  
(define-const var2005 var599 (code/-1827008135 var1268!1)) ; Statement: $r12 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code> 
(assert true)
;(assert (put12/1392378469 var2005 19 var2387)) ; Statement: virtualinvoke $r12.<com.alibaba.fastjson2.internal.asm.ByteVector: com.alibaba.fastjson2.internal.asm.ByteVector put12(int,int)>(19, $i5) 

(declare-const var2005!1 var599)
(declare-const var3725 Int)
(declare-const var2387!1 Int)
 ; Statement: goto [?= $r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock>] 
(assert true) ; Non Conditional
(define-const var2637 var851 (currentBasicBlock/-1827008135 var1268!1)) ; Statement: $r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock> 
 ; Statement: if $r8 == null goto return 
(assert (= var2637 null-var851)) ; Cond: $r8 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var715_desc/1182016152=([java.lang.Class], java.lang.String), length/-134980193=([java.lang.String], int), var1629_getTypeInternal/625733509=([java.lang.String, int, int], com.alibaba.fastjson2.internal.asm.Type), code/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.ByteVector), length/-132820368=([com.alibaba.fastjson2.internal.asm.ByteVector], int), lastBytecodeOffset/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], int), sort/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), symbolTable/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.SymbolTable), getDescriptor/-737674326=([com.alibaba.fastjson2.internal.asm.Type], java.lang.String), addConstantUtf8Reference/-67480876=([com.alibaba.fastjson2.internal.asm.SymbolTable, int, java.lang.String], com.alibaba.fastjson2.internal.asm.Symbol), index/-1147909603=([com.alibaba.fastjson2.internal.asm.Symbol], int), put12/1392378469=([com.alibaba.fastjson2.internal.asm.ByteVector, int, int], com.alibaba.fastjson2.internal.asm.ByteVector), currentBasicBlock/-1827008135=([com.alibaba.fastjson2.internal.asm.MethodWriter], com.alibaba.fastjson2.internal.asm.Label)}
; {var3695=com.alibaba.fastjson2.internal.asm.MethodWriter, var1268=r3, var1032=r0, var715=com.alibaba.fastjson2.internal.asm.ASMUtils, var3359=r1, var1912=$i0, var1629=com.alibaba.fastjson2.internal.asm.Type, var2111=r2, var599=com.alibaba.fastjson2.internal.asm.ByteVector, var2562=$r4, var3650=$i1, var650=$i2, var224=$i6, var1388=com.alibaba.fastjson2.internal.asm.SymbolTable, var1510=$r5, var2314=$r6, var279=com.alibaba.fastjson2.internal.asm.Symbol, var2552=r16, var2387=$i5, var2005=$r12, var3725=19, var851=com.alibaba.fastjson2.internal.asm.Label, var2637=$r8}
; {com.alibaba.fastjson2.internal.asm.MethodWriter=var3695, r3=var1268, r0=var1032, com.alibaba.fastjson2.internal.asm.ASMUtils=var715, r1=var3359, $i0=var1912, com.alibaba.fastjson2.internal.asm.Type=var1629, r2=var2111, com.alibaba.fastjson2.internal.asm.ByteVector=var599, $r4=var2562, $i1=var3650, $i2=var650, $i6=var224, com.alibaba.fastjson2.internal.asm.SymbolTable=var1388, $r5=var1510, $r6=var2314, com.alibaba.fastjson2.internal.asm.Symbol=var279, r16=var2552, $i5=var2387, $r12=var2005, 19=var3725, com.alibaba.fastjson2.internal.asm.Label=var851, $r8=var2637}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.internal.asm.MethodWriter;	r0 := @parameter0: java.lang.Class;	r1 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r0);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r2 = staticinvoke <com.alibaba.fastjson2.internal.asm.Type: com.alibaba.fastjson2.internal.asm.Type getTypeInternal(java.lang.String,int,int)>(r1, 0, $i0);	$r4 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$i1 = $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: int length>;	r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: int lastBytecodeOffset> = $i1;	$i2 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	if $i2 != 12 goto $i6 = r2.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	$i6 = 10;	goto [?= (branch)];	if $i6 != 10 goto $r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r5 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r6 = virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String getDescriptor()>();	r16 = virtualinvoke $r5.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol addConstantUtf8Reference(int,java.lang.String)>(7, $r6);	$i5 = r16.<com.alibaba.fastjson2.internal.asm.Symbol: int index>;	if $i5 < 256 goto $r7 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	$r12 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.ByteVector code>;	virtualinvoke $r12.<com.alibaba.fastjson2.internal.asm.ByteVector: com.alibaba.fastjson2.internal.asm.ByteVector put12(int,int)>(19, $i5);	goto [?= $r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock>];	$r8 = r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: com.alibaba.fastjson2.internal.asm.Label currentBasicBlock>;	if $r8 == null goto return;	return
;block_num 8