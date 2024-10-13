(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var604 0)
(declare-sort var2273 0)
(declare-sort var2063 0)
(declare-sort var2158 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun entries/-573322319 (var604) (Array Int var2063))
(declare-fun getLength-Arr-var2063-1 ((Array Int var2063)) Int)
(declare-fun constantPool/-573322319 (var604) var2158)
(declare-fun putByte/921116137 (var2158 Int) var2158)
(declare-fun putUTF8/1007791700 (var2158 String) void)
(declare-fun var2063-init () var2063)
(declare-fun constantPoolCount/-573322319 (var604) Int)
(declare-fun <init>/322374896 (var2063 Int Int String String String Int Int) void)
(declare-fun put/-1330815997 (var604 var2063) var2063)
(declare-fun index/-1147909603 (var2063) Int)
(declare-const null-var604 var604)
(declare-const null-String String)
(declare-const null-var2063 var2063)
(declare-const null-NullType var2273)
(declare-const var19 var604) ; Statement: r1 := @this: com.alibaba.fastjson2.internal.asm.SymbolTable 
(assert (not (= var19 null-var604)))
(declare-const var3507 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3507 null-String)))
(assert true)
(define-const var2844 Int (hashCode/-467973558 var3507)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(define-const var1757 Int (+ 1 var2844)) ; Statement: $i1 = 1 + $i0 
(define-const var1169 Int (bv2nat (bvand ((_ int2bv 64) 2147483647) ((_ int2bv 64) var1757)))) ; Statement: i2 = 2147483647 & $i1 
(define-const var3628 (Array Int var2063) (entries/-573322319 var19)) ; Statement: $r3 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries> 
(define-const var2665 (Array Int var2063) (entries/-573322319 var19)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries> 
(define-const var1810 Int (getLength-Arr-var2063-1 var2665)) ; Statement: $i3 = lengthof $r2 
(define-const var949 Int (mod var1169 var1810)) ; Statement: $i4 = i2 % $i3 
(define-const var233 var2063 (select var3628 var949)) ; Statement: r9 = $r3[$i4] 
(assert true) ; Non Conditional
 ; Statement: if r9 == null goto $r4 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool> 
(assert (= var233 null-var2063)) ; Cond: r9 == null 
(define-const var1249 var2158 (constantPool/-573322319 var19)) ; Statement: $r4 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool> 
(assert true)
(define-const var100 var2158 (putByte/921116137 var1249 1)) ; Statement: $r5 = virtualinvoke $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: com.alibaba.fastjson2.internal.asm.ByteVector putByte(int)>(1) 
(assert true)
;(assert (putUTF8/1007791700 var100 var3507)) ; Statement: virtualinvoke $r5.<com.alibaba.fastjson2.internal.asm.ByteVector: void putUTF8(java.lang.String)>(r0) 

(declare-const var100!1 var2158)
(declare-const var3507!1 String)
(define-const var3735 var2063 var2063-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Symbol 
(define-const var2513 Int (constantPoolCount/-573322319 var19)) ; Statement: $i5 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount> 
(define-const var49 Int (+ var2513 1)) ; Statement: $i6 = $i5 + 1 
(declare-const var19!1 var604)
(assert (not (= var19!1 null-var604)))
(assert (= (constantPoolCount/-573322319 var19!1) var49)) ; Statement: r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount> = $i6 
(assert true)
;(assert (<init>/322374896 var3735 var2513 1 null-String null-String var3507!1 0 var1169)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Symbol: void <init>(int,int,java.lang.String,java.lang.String,java.lang.String,long,int)>($i5, 1, null, null, r0, 0L, i2) 

(declare-const var3735!1 var2063)
(declare-const var2513!1 Int)
(declare-const var3256 Int)
(declare-const var71 var2273)
(declare-const var71!1 var2273)
(declare-const var3507!2 String)
(declare-const var195 Int)
(declare-const var1169!1 Int)
(assert true)
(define-const var1792 var2063 (put/-1330815997 var19!1 var3735!1)) ; Statement: $r7 = specialinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol put(com.alibaba.fastjson2.internal.asm.Symbol)>($r6) 
(define-const var1700 Int (index/-1147909603 var1792)) ; Statement: $i7 = $r7.<com.alibaba.fastjson2.internal.asm.Symbol: int index> 
 ; Statement: return $i7 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), entries/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], com.alibaba.fastjson2.internal.asm.Symbol[]), getLength-Arr-var2063-1=([com.alibaba.fastjson2.internal.asm.Symbol[]], int), constantPool/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], com.alibaba.fastjson2.internal.asm.ByteVector), putByte/921116137=([com.alibaba.fastjson2.internal.asm.ByteVector, int], com.alibaba.fastjson2.internal.asm.ByteVector), putUTF8/1007791700=([com.alibaba.fastjson2.internal.asm.ByteVector, java.lang.String], void), var2063-init=([], com.alibaba.fastjson2.internal.asm.Symbol), constantPoolCount/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], int), <init>/322374896=([com.alibaba.fastjson2.internal.asm.Symbol, int, int, java.lang.String, java.lang.String, java.lang.String, long, int], void), put/-1330815997=([com.alibaba.fastjson2.internal.asm.SymbolTable, com.alibaba.fastjson2.internal.asm.Symbol], com.alibaba.fastjson2.internal.asm.Symbol), index/-1147909603=([com.alibaba.fastjson2.internal.asm.Symbol], int)}
; {var604=com.alibaba.fastjson2.internal.asm.SymbolTable, var19=r1, var3507=r0, var2273=null_type, var2844=$i0, var1757=$i1, var1169=i2, var2063=com.alibaba.fastjson2.internal.asm.Symbol, var3628=$r3, var2665=$r2, var1810=$i3, var949=$i4, var233=r9, var2158=com.alibaba.fastjson2.internal.asm.ByteVector, var1249=$r4, var100=$r5, var3735=$r6, var2513=$i5, var49=$i6, var3256=1, var71=null, var195=0L, var1792=$r7, var1700=$i7}
; {com.alibaba.fastjson2.internal.asm.SymbolTable=var604, r1=var19, r0=var3507, null_type=var2273, $i0=var2844, $i1=var1757, i2=var1169, com.alibaba.fastjson2.internal.asm.Symbol=var2063, $r3=var3628, $r2=var2665, $i3=var1810, $i4=var949, r9=var233, com.alibaba.fastjson2.internal.asm.ByteVector=var2158, $r4=var1249, $r5=var100, $r6=var3735, $i5=var2513, $i6=var49, 1=var3256, null=var71, 0L=var195, $r7=var1792, $i7=var1700}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.internal.asm.SymbolTable;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	$i1 = 1 + $i0;	i2 = 2147483647 & $i1;	$r3 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries>;	$r2 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries>;	$i3 = lengthof $r2;	$i4 = i2 % $i3;	r9 = $r3[$i4];	if r9 == null goto $r4 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool>;	$r4 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool>;	$r5 = virtualinvoke $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: com.alibaba.fastjson2.internal.asm.ByteVector putByte(int)>(1);	virtualinvoke $r5.<com.alibaba.fastjson2.internal.asm.ByteVector: void putUTF8(java.lang.String)>(r0);	$r6 = new com.alibaba.fastjson2.internal.asm.Symbol;	$i5 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount>;	$i6 = $i5 + 1;	r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount> = $i6;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Symbol: void <init>(int,int,java.lang.String,java.lang.String,java.lang.String,long,int)>($i5, 1, null, null, r0, 0L, i2);	$r7 = specialinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol put(com.alibaba.fastjson2.internal.asm.Symbol)>($r6);	$i7 = $r7.<com.alibaba.fastjson2.internal.asm.Symbol: int index>;	return $i7
;block_num 3