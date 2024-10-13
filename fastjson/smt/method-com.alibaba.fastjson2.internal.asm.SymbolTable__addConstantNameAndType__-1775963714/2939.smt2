(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1334 0)
(declare-sort var2409 0)
(declare-sort var3209 0)
(declare-sort var1675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun entries/-573322319 (var1334) (Array Int var3209))
(declare-fun getLength-Arr-var3209-1 ((Array Int var3209)) Int)
(declare-fun constantPool/-573322319 (var1334) var1675)
(declare-fun addConstantUtf8/-281001296 (var1334 String) Int)
(declare-fun put122/-1570485130 (var1675 Int Int Int) void)
(declare-fun var3209-init () var3209)
(declare-fun constantPoolCount/-573322319 (var1334) Int)
(declare-fun <init>/322374896 (var3209 Int Int String String String Int Int) void)
(declare-fun put/-1330815997 (var1334 var3209) var3209)
(declare-fun index/-1147909603 (var3209) Int)
(declare-const null-var1334 var1334)
(declare-const null-String String)
(declare-const null-var3209 var3209)
(declare-const null-NullType var2409)
(declare-const var2109 var1334) ; Statement: r2 := @this: com.alibaba.fastjson2.internal.asm.SymbolTable 
(assert (not (= var2109 null-var1334)))
(declare-const var3019 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3019 null-String)))
(declare-const var2882 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2882 null-String)))
(assert true)
(define-const var2407 Int (hashCode/-467973558 var3019)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(assert true)
(define-const var2141 Int (hashCode/-467973558 var2882)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var2999 Int (* var2407 var2141)) ; Statement: $i2 = $i1 * $i0 
(define-const var2351 Int (+ 12 var2999)) ; Statement: $i3 = 12 + $i2 
(define-const var1534 Int (bv2nat (bvand ((_ int2bv 64) 2147483647) ((_ int2bv 64) var2351)))) ; Statement: i4 = 2147483647 & $i3 
(define-const var1537 (Array Int var3209) (entries/-573322319 var2109)) ; Statement: $r4 = r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries> 
(define-const var583 (Array Int var3209) (entries/-573322319 var2109)) ; Statement: $r3 = r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries> 
(define-const var2126 Int (getLength-Arr-var3209-1 var583)) ; Statement: $i5 = lengthof $r3 
(define-const var1655 Int (mod var1534 var2126)) ; Statement: $i6 = i4 % $i5 
(define-const var942 var3209 (select var1537 var1655)) ; Statement: r10 = $r4[$i6] 
(assert true) ; Non Conditional
 ; Statement: if r10 == null goto $r5 = r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool> 
(assert (= var942 null-var3209)) ; Cond: r10 == null 
(define-const var242 var1675 (constantPool/-573322319 var2109)) ; Statement: $r5 = r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool> 
(assert true)
(define-const var782 Int (addConstantUtf8/-281001296 var2109 var3019)) ; Statement: $i8 = virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantUtf8(java.lang.String)>(r0) 
(assert true)
(define-const var3903 Int (addConstantUtf8/-281001296 var2109 var2882)) ; Statement: $i7 = virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantUtf8(java.lang.String)>(r1) 
(assert true)
;(assert (put122/-1570485130 var242 12 var782 var3903)) ; Statement: virtualinvoke $r5.<com.alibaba.fastjson2.internal.asm.ByteVector: void put122(int,int,int)>(12, $i8, $i7) 

(declare-const var242!1 var1675)
(declare-const var2322 Int)
(declare-const var782!1 Int)
(declare-const var3903!1 Int)
(define-const var1403 var3209 var3209-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Symbol 
(define-const var3452 Int (constantPoolCount/-573322319 var2109)) ; Statement: $i9 = r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount> 
(define-const var2275 Int (+ var3452 1)) ; Statement: $i10 = $i9 + 1 
(declare-const var2109!1 var1334)
(assert (not (= var2109!1 null-var1334)))
(assert (= (constantPoolCount/-573322319 var2109!1) var2275)) ; Statement: r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount> = $i10 
(assert true)
;(assert (<init>/322374896 var1403 var3452 12 null-String var3019 var2882 0 var1534)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Symbol: void <init>(int,int,java.lang.String,java.lang.String,java.lang.String,long,int)>($i9, 12, null, r0, r1, 0L, i4) 

(declare-const var1403!1 var3209)
(declare-const var3452!1 Int)
(declare-const var2322!1 Int)
(declare-const var1314 var2409)
(declare-const var3019!1 String)
(declare-const var2882!1 String)
(declare-const var2098 Int)
(declare-const var1534!1 Int)
(assert true)
(define-const var3196 var3209 (put/-1330815997 var2109!1 var1403!1)) ; Statement: $r7 = specialinvoke r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol put(com.alibaba.fastjson2.internal.asm.Symbol)>($r6) 
(define-const var2851 Int (index/-1147909603 var3196)) ; Statement: $i11 = $r7.<com.alibaba.fastjson2.internal.asm.Symbol: int index> 
 ; Statement: return $i11 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), entries/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], com.alibaba.fastjson2.internal.asm.Symbol[]), getLength-Arr-var3209-1=([com.alibaba.fastjson2.internal.asm.Symbol[]], int), constantPool/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], com.alibaba.fastjson2.internal.asm.ByteVector), addConstantUtf8/-281001296=([com.alibaba.fastjson2.internal.asm.SymbolTable, java.lang.String], int), put122/-1570485130=([com.alibaba.fastjson2.internal.asm.ByteVector, int, int, int], void), var3209-init=([], com.alibaba.fastjson2.internal.asm.Symbol), constantPoolCount/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], int), <init>/322374896=([com.alibaba.fastjson2.internal.asm.Symbol, int, int, java.lang.String, java.lang.String, java.lang.String, long, int], void), put/-1330815997=([com.alibaba.fastjson2.internal.asm.SymbolTable, com.alibaba.fastjson2.internal.asm.Symbol], com.alibaba.fastjson2.internal.asm.Symbol), index/-1147909603=([com.alibaba.fastjson2.internal.asm.Symbol], int)}
; {var1334=com.alibaba.fastjson2.internal.asm.SymbolTable, var2109=r2, var3019=r0, var2409=null_type, var2882=r1, var2407=$i1, var2141=$i0, var2999=$i2, var2351=$i3, var1534=i4, var3209=com.alibaba.fastjson2.internal.asm.Symbol, var1537=$r4, var583=$r3, var2126=$i5, var1655=$i6, var942=r10, var1675=com.alibaba.fastjson2.internal.asm.ByteVector, var242=$r5, var782=$i8, var3903=$i7, var2322=12, var1403=$r6, var3452=$i9, var2275=$i10, var1314=null, var2098=0L, var3196=$r7, var2851=$i11}
; {com.alibaba.fastjson2.internal.asm.SymbolTable=var1334, r2=var2109, r0=var3019, null_type=var2409, r1=var2882, $i1=var2407, $i0=var2141, $i2=var2999, $i3=var2351, i4=var1534, com.alibaba.fastjson2.internal.asm.Symbol=var3209, $r4=var1537, $r3=var583, $i5=var2126, $i6=var1655, r10=var942, com.alibaba.fastjson2.internal.asm.ByteVector=var1675, $r5=var242, $i8=var782, $i7=var3903, 12=var2322, $r6=var1403, $i9=var3452, $i10=var2275, null=var1314, 0L=var2098, $r7=var3196, $i11=var2851}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r2 := @this: com.alibaba.fastjson2.internal.asm.SymbolTable;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int hashCode()>();	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i2 = $i1 * $i0;	$i3 = 12 + $i2;	i4 = 2147483647 & $i3;	$r4 = r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries>;	$r3 = r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries>;	$i5 = lengthof $r3;	$i6 = i4 % $i5;	r10 = $r4[$i6];	if r10 == null goto $r5 = r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool>;	$r5 = r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool>;	$i8 = virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantUtf8(java.lang.String)>(r0);	$i7 = virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantUtf8(java.lang.String)>(r1);	virtualinvoke $r5.<com.alibaba.fastjson2.internal.asm.ByteVector: void put122(int,int,int)>(12, $i8, $i7);	$r6 = new com.alibaba.fastjson2.internal.asm.Symbol;	$i9 = r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount>;	$i10 = $i9 + 1;	r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount> = $i10;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Symbol: void <init>(int,int,java.lang.String,java.lang.String,java.lang.String,long,int)>($i9, 12, null, r0, r1, 0L, i4);	$r7 = specialinvoke r2.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol put(com.alibaba.fastjson2.internal.asm.Symbol)>($r6);	$i11 = $r7.<com.alibaba.fastjson2.internal.asm.Symbol: int index>;	return $i11
;block_num 3