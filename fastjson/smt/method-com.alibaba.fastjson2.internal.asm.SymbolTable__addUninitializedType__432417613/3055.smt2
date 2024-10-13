(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2183 0)
(declare-sort var909 0)
(declare-sort var3022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun entries/-573322319 (var2183) (Array Int var3022))
(declare-fun getLength-Arr-var3022-1 ((Array Int var3022)) Int)
(declare-fun var3022-init () var3022)
(declare-fun typeCount/-573322319 (var2183) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/322374896 (var3022 Int Int String String String Int Int) void)
(declare-fun addTypeInternal/2105891934 (var2183 var3022) Int)
(declare-const null-var2183 var2183)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3022 var3022)
(declare-const null-NullType var909)
(declare-const var1771 var2183) ; Statement: r1 := @this: com.alibaba.fastjson2.internal.asm.SymbolTable 
(assert (not (= var1771 null-var2183)))
(declare-const var1577 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1577 null-String)))
(declare-const var2563 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2563 null-Int)))
(assert true)
(define-const var1598 Int (hashCode/-467973558 var1577)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(define-const var176 Int (+ 129 var1598)) ; Statement: $i2 = 129 + $i0 
(define-const var1737 Int (+ var176 var2563)) ; Statement: $i3 = $i2 + i1 
(define-const var2447 Int (bv2nat (bvand ((_ int2bv 64) 2147483647) ((_ int2bv 64) var1737)))) ; Statement: i4 = 2147483647 & $i3 
(define-const var3897 (Array Int var3022) (entries/-573322319 var1771)) ; Statement: $r3 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries> 
(define-const var762 (Array Int var3022) (entries/-573322319 var1771)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries> 
(define-const var2136 Int (getLength-Arr-var3022-1 var762)) ; Statement: $i5 = lengthof $r2 
(define-const var3350 Int (mod var2447 var2136)) ; Statement: $i6 = i4 % $i5 
(define-const var1203 var3022 (select var3897 var3350)) ; Statement: r6 = $r3[$i6] 
(assert true) ; Non Conditional
 ; Statement: if r6 == null goto $r4 = new com.alibaba.fastjson2.internal.asm.Symbol 
(assert (= var1203 null-var3022)) ; Cond: r6 == null 
(define-const var1748 var3022 var3022-init) ; Statement: $r4 = new com.alibaba.fastjson2.internal.asm.Symbol 
(define-const var343 Int (typeCount/-573322319 var1771)) ; Statement: $i8 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int typeCount> 
(define-const var1897 Int (cast-from-Int-to-Int var2563)) ; Statement: $l7 = (long) i1 
(assert true)
;(assert (<init>/322374896 var1748 var343 129 null-String null-String var1577 var1897 var2447)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.internal.asm.Symbol: void <init>(int,int,java.lang.String,java.lang.String,java.lang.String,long,int)>($i8, 129, null, null, r0, $l7, i4) 

(declare-const var1748!1 var3022)
(declare-const var343!1 Int)
(declare-const var3 Int)
(declare-const var3680 var909)
(declare-const var3680!1 var909)
(declare-const var1577!1 String)
(declare-const var1897!1 Int)
(declare-const var2447!1 Int)
(assert true)
(define-const var1279 Int (addTypeInternal/2105891934 var1771 var1748!1)) ; Statement: $i9 = specialinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addTypeInternal(com.alibaba.fastjson2.internal.asm.Symbol)>($r4) 
 ; Statement: return $i9 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), entries/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], com.alibaba.fastjson2.internal.asm.Symbol[]), getLength-Arr-var3022-1=([com.alibaba.fastjson2.internal.asm.Symbol[]], int), var3022-init=([], com.alibaba.fastjson2.internal.asm.Symbol), typeCount/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], int), cast-from-Int-to-Int=([int], long), <init>/322374896=([com.alibaba.fastjson2.internal.asm.Symbol, int, int, java.lang.String, java.lang.String, java.lang.String, long, int], void), addTypeInternal/2105891934=([com.alibaba.fastjson2.internal.asm.SymbolTable, com.alibaba.fastjson2.internal.asm.Symbol], int)}
; {var2183=com.alibaba.fastjson2.internal.asm.SymbolTable, var1771=r1, var1577=r0, var909=null_type, var2563=i1, var1598=$i0, var176=$i2, var1737=$i3, var2447=i4, var3022=com.alibaba.fastjson2.internal.asm.Symbol, var3897=$r3, var762=$r2, var2136=$i5, var3350=$i6, var1203=r6, var1748=$r4, var343=$i8, var1897=$l7, var3=129, var3680=null, var1279=$i9}
; {com.alibaba.fastjson2.internal.asm.SymbolTable=var2183, r1=var1771, r0=var1577, null_type=var909, i1=var2563, $i0=var1598, $i2=var176, $i3=var1737, i4=var2447, com.alibaba.fastjson2.internal.asm.Symbol=var3022, $r3=var3897, $r2=var762, $i5=var2136, $i6=var3350, r6=var1203, $r4=var1748, $i8=var343, $l7=var1897, 129=var3, null=var3680, $i9=var1279}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.internal.asm.SymbolTable;	r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	$i2 = 129 + $i0;	$i3 = $i2 + i1;	i4 = 2147483647 & $i3;	$r3 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries>;	$r2 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries>;	$i5 = lengthof $r2;	$i6 = i4 % $i5;	r6 = $r3[$i6];	if r6 == null goto $r4 = new com.alibaba.fastjson2.internal.asm.Symbol;	$r4 = new com.alibaba.fastjson2.internal.asm.Symbol;	$i8 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int typeCount>;	$l7 = (long) i1;	specialinvoke $r4.<com.alibaba.fastjson2.internal.asm.Symbol: void <init>(int,int,java.lang.String,java.lang.String,java.lang.String,long,int)>($i8, 129, null, null, r0, $l7, i4);	$i9 = specialinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addTypeInternal(com.alibaba.fastjson2.internal.asm.Symbol)>($r4);	return $i9
;block_num 3