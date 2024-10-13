(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2441 0)
(declare-sort var2094 0)
(declare-sort var2167 0)
(declare-sort var3655 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun entries/-573322319 (var2441) (Array Int var2167))
(declare-fun getLength-Arr-var2167-1 ((Array Int var2167)) Int)
(declare-fun constantPool/-573322319 (var2441) var3655)
(declare-fun addConstantUtf8Reference/-67480876 (var2441 Int String) var2167)
(declare-fun index/-1147909603 (var2167) Int)
(declare-fun addConstantNameAndType/-1775963714 (var2441 String String) Int)
(declare-fun put122/-1570485130 (var3655 Int Int Int) void)
(declare-fun var2167-init () var2167)
(declare-fun constantPoolCount/-573322319 (var2441) Int)
(declare-fun <init>/322374896 (var2167 Int Int String String String Int Int) void)
(declare-fun put/-1330815997 (var2441 var2167) var2167)
(declare-const null-var2441 var2441)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var2167 var2167)
(declare-const var430 var2441) ; Statement: r3 := @this: com.alibaba.fastjson2.internal.asm.SymbolTable 
(assert (not (= var430 null-var2441)))
(declare-const var521 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var521 null-Int)))
(declare-const var2388 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2388 null-String)))
(declare-const var1239 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1239 null-String)))
(declare-const var137 String) ; Statement: r2 := @parameter3: java.lang.String 
(assert (not (= var137 null-String)))
(assert true)
(define-const var2988 Int (hashCode/-467973558 var2388)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(assert true)
(define-const var189 Int (hashCode/-467973558 var1239)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var2447 Int (* var2988 var189)) ; Statement: $i4 = $i2 * $i1 
(assert true)
(define-const var232 Int (hashCode/-467973558 var137)) ; Statement: $i3 = virtualinvoke r2.<java.lang.String: int hashCode()>() 
(define-const var3378 Int (* var2447 var232)) ; Statement: $i5 = $i4 * $i3 
(define-const var944 Int (+ var521 var3378)) ; Statement: $i6 = i0 + $i5 
(define-const var2061 Int (bv2nat (bvand ((_ int2bv 64) 2147483647) ((_ int2bv 64) var944)))) ; Statement: i7 = 2147483647 & $i6 
(define-const var2478 (Array Int var2167) (entries/-573322319 var430)) ; Statement: $r5 = r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries> 
(define-const var838 (Array Int var2167) (entries/-573322319 var430)) ; Statement: $r4 = r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries> 
(define-const var2973 Int (getLength-Arr-var2167-1 var838)) ; Statement: $i8 = lengthof $r4 
(define-const var1448 Int (mod var2061 var2973)) ; Statement: $i9 = i7 % $i8 
(define-const var2990 var2167 (select var2478 var1448)) ; Statement: r13 = $r5[$i9] 
(assert true) ; Non Conditional
 ; Statement: if r13 == null goto $r6 = r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool> 
(assert (= var2990 null-var2167)) ; Cond: r13 == null 
(define-const var2320 var3655 (constantPool/-573322319 var430)) ; Statement: $r6 = r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool> 
(assert true)
(define-const var1786 var2167 (addConstantUtf8Reference/-67480876 var430 7 var2388)) ; Statement: $r7 = virtualinvoke r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol addConstantUtf8Reference(int,java.lang.String)>(7, r0) 
(define-const var2877 Int (index/-1147909603 var1786)) ; Statement: $i10 = $r7.<com.alibaba.fastjson2.internal.asm.Symbol: int index> 
(assert true)
(define-const var903 Int (addConstantNameAndType/-1775963714 var430 var1239 var137)) ; Statement: $i11 = virtualinvoke r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantNameAndType(java.lang.String,java.lang.String)>(r1, r2) 
(assert true)
;(assert (put122/-1570485130 var2320 var521 var2877 var903)) ; Statement: virtualinvoke $r6.<com.alibaba.fastjson2.internal.asm.ByteVector: void put122(int,int,int)>(i0, $i10, $i11) 

(declare-const var2320!1 var3655)
(declare-const var521!1 Int)
(declare-const var2877!1 Int)
(declare-const var903!1 Int)
(define-const var504 var2167 var2167-init) ; Statement: $r8 = new com.alibaba.fastjson2.internal.asm.Symbol 
(define-const var3882 Int (constantPoolCount/-573322319 var430)) ; Statement: $i12 = r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount> 
(define-const var295 Int (+ var3882 1)) ; Statement: $i13 = $i12 + 1 
(declare-const var430!1 var2441)
(assert (not (= var430!1 null-var2441)))
(assert (= (constantPoolCount/-573322319 var430!1) var295)) ; Statement: r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount> = $i13 
(assert true)
;(assert (<init>/322374896 var504 var3882 var521!1 var2388 var1239 var137 0 var2061)) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.internal.asm.Symbol: void <init>(int,int,java.lang.String,java.lang.String,java.lang.String,long,int)>($i12, i0, r0, r1, r2, 0L, i7) 

(declare-const var504!1 var2167)
(declare-const var3882!1 Int)
(declare-const var521!2 Int)
(declare-const var2388!1 String)
(declare-const var1239!1 String)
(declare-const var137!1 String)
(declare-const var1128 Int)
(declare-const var2061!1 Int)
(assert true)
(define-const var1760 var2167 (put/-1330815997 var430!1 var504!1)) ; Statement: $r9 = specialinvoke r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol put(com.alibaba.fastjson2.internal.asm.Symbol)>($r8) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), entries/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], com.alibaba.fastjson2.internal.asm.Symbol[]), getLength-Arr-var2167-1=([com.alibaba.fastjson2.internal.asm.Symbol[]], int), constantPool/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], com.alibaba.fastjson2.internal.asm.ByteVector), addConstantUtf8Reference/-67480876=([com.alibaba.fastjson2.internal.asm.SymbolTable, int, java.lang.String], com.alibaba.fastjson2.internal.asm.Symbol), index/-1147909603=([com.alibaba.fastjson2.internal.asm.Symbol], int), addConstantNameAndType/-1775963714=([com.alibaba.fastjson2.internal.asm.SymbolTable, java.lang.String, java.lang.String], int), put122/-1570485130=([com.alibaba.fastjson2.internal.asm.ByteVector, int, int, int], void), var2167-init=([], com.alibaba.fastjson2.internal.asm.Symbol), constantPoolCount/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], int), <init>/322374896=([com.alibaba.fastjson2.internal.asm.Symbol, int, int, java.lang.String, java.lang.String, java.lang.String, long, int], void), put/-1330815997=([com.alibaba.fastjson2.internal.asm.SymbolTable, com.alibaba.fastjson2.internal.asm.Symbol], com.alibaba.fastjson2.internal.asm.Symbol)}
; {var2441=com.alibaba.fastjson2.internal.asm.SymbolTable, var430=r3, var521=i0, var2388=r0, var2094=null_type, var1239=r1, var137=r2, var2988=$i2, var189=$i1, var2447=$i4, var232=$i3, var3378=$i5, var944=$i6, var2061=i7, var2167=com.alibaba.fastjson2.internal.asm.Symbol, var2478=$r5, var838=$r4, var2973=$i8, var1448=$i9, var2990=r13, var3655=com.alibaba.fastjson2.internal.asm.ByteVector, var2320=$r6, var1786=$r7, var2877=$i10, var903=$i11, var504=$r8, var3882=$i12, var295=$i13, var1128=0L, var1760=$r9}
; {com.alibaba.fastjson2.internal.asm.SymbolTable=var2441, r3=var430, i0=var521, r0=var2388, null_type=var2094, r1=var1239, r2=var137, $i2=var2988, $i1=var189, $i4=var2447, $i3=var232, $i5=var3378, $i6=var944, i7=var2061, com.alibaba.fastjson2.internal.asm.Symbol=var2167, $r5=var2478, $r4=var838, $i8=var2973, $i9=var1448, r13=var2990, com.alibaba.fastjson2.internal.asm.ByteVector=var3655, $r6=var2320, $r7=var1786, $i10=var2877, $i11=var903, $r8=var504, $i12=var3882, $i13=var295, 0L=var1128, $r9=var1760}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r3 := @this: com.alibaba.fastjson2.internal.asm.SymbolTable;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	r2 := @parameter3: java.lang.String;	$i2 = virtualinvoke r0.<java.lang.String: int hashCode()>();	$i1 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i4 = $i2 * $i1;	$i3 = virtualinvoke r2.<java.lang.String: int hashCode()>();	$i5 = $i4 * $i3;	$i6 = i0 + $i5;	i7 = 2147483647 & $i6;	$r5 = r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries>;	$r4 = r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries>;	$i8 = lengthof $r4;	$i9 = i7 % $i8;	r13 = $r5[$i9];	if r13 == null goto $r6 = r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool>;	$r6 = r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool>;	$r7 = virtualinvoke r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol addConstantUtf8Reference(int,java.lang.String)>(7, r0);	$i10 = $r7.<com.alibaba.fastjson2.internal.asm.Symbol: int index>;	$i11 = virtualinvoke r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantNameAndType(java.lang.String,java.lang.String)>(r1, r2);	virtualinvoke $r6.<com.alibaba.fastjson2.internal.asm.ByteVector: void put122(int,int,int)>(i0, $i10, $i11);	$r8 = new com.alibaba.fastjson2.internal.asm.Symbol;	$i12 = r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount>;	$i13 = $i12 + 1;	r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount> = $i13;	specialinvoke $r8.<com.alibaba.fastjson2.internal.asm.Symbol: void <init>(int,int,java.lang.String,java.lang.String,java.lang.String,long,int)>($i12, i0, r0, r1, r2, 0L, i7);	$r9 = specialinvoke r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol put(com.alibaba.fastjson2.internal.asm.Symbol)>($r8);	return $r9
;block_num 3