(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1513 0)
(declare-sort var550 0)
(declare-sort var1898 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun entries/-573322319 (var1513) (Array Int var1898))
(declare-fun getLength-Arr-var1898-1 ((Array Int var1898)) Int)
(declare-fun var1898-init () var1898)
(declare-fun typeCount/-573322319 (var1513) Int)
(declare-fun <init>/322374896 (var1898 Int Int String String String Int Int) void)
(declare-fun addTypeInternal/2105891934 (var1513 var1898) Int)
(declare-const null-var1513 var1513)
(declare-const null-String String)
(declare-const null-var1898 var1898)
(declare-const null-NullType var550)
(declare-const var2883 var1513) ; Statement: r1 := @this: com.alibaba.fastjson2.internal.asm.SymbolTable 
(assert (not (= var2883 null-var1513)))
(declare-const var3659 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3659 null-String)))
(assert true)
(define-const var3911 Int (hashCode/-467973558 var3659)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(define-const var153 Int (+ 128 var3911)) ; Statement: $i1 = 128 + $i0 
(define-const var1209 Int (bv2nat (bvand ((_ int2bv 64) 2147483647) ((_ int2bv 64) var153)))) ; Statement: i2 = 2147483647 & $i1 
(define-const var129 (Array Int var1898) (entries/-573322319 var2883)) ; Statement: $r3 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries> 
(define-const var3049 (Array Int var1898) (entries/-573322319 var2883)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries> 
(define-const var123 Int (getLength-Arr-var1898-1 var3049)) ; Statement: $i3 = lengthof $r2 
(define-const var2917 Int (mod var1209 var123)) ; Statement: $i4 = i2 % $i3 
(define-const var2487 var1898 (select var129 var2917)) ; Statement: r6 = $r3[$i4] 
(assert true) ; Non Conditional
 ; Statement: if r6 == null goto $r4 = new com.alibaba.fastjson2.internal.asm.Symbol 
(assert (= var2487 null-var1898)) ; Cond: r6 == null 
(define-const var1811 var1898 var1898-init) ; Statement: $r4 = new com.alibaba.fastjson2.internal.asm.Symbol 
(define-const var389 Int (typeCount/-573322319 var2883)) ; Statement: $i5 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int typeCount> 
(assert true)
;(assert (<init>/322374896 var1811 var389 128 null-String null-String var3659 0 var1209)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.internal.asm.Symbol: void <init>(int,int,java.lang.String,java.lang.String,java.lang.String,long,int)>($i5, 128, null, null, r0, 0L, i2) 

(declare-const var1811!1 var1898)
(declare-const var389!1 Int)
(declare-const var272 Int)
(declare-const var3466 var550)
(declare-const var3466!1 var550)
(declare-const var3659!1 String)
(declare-const var379 Int)
(declare-const var1209!1 Int)
(assert true)
(define-const var3985 Int (addTypeInternal/2105891934 var2883 var1811!1)) ; Statement: $i6 = specialinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addTypeInternal(com.alibaba.fastjson2.internal.asm.Symbol)>($r4) 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), entries/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], com.alibaba.fastjson2.internal.asm.Symbol[]), getLength-Arr-var1898-1=([com.alibaba.fastjson2.internal.asm.Symbol[]], int), var1898-init=([], com.alibaba.fastjson2.internal.asm.Symbol), typeCount/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], int), <init>/322374896=([com.alibaba.fastjson2.internal.asm.Symbol, int, int, java.lang.String, java.lang.String, java.lang.String, long, int], void), addTypeInternal/2105891934=([com.alibaba.fastjson2.internal.asm.SymbolTable, com.alibaba.fastjson2.internal.asm.Symbol], int)}
; {var1513=com.alibaba.fastjson2.internal.asm.SymbolTable, var2883=r1, var3659=r0, var550=null_type, var3911=$i0, var153=$i1, var1209=i2, var1898=com.alibaba.fastjson2.internal.asm.Symbol, var129=$r3, var3049=$r2, var123=$i3, var2917=$i4, var2487=r6, var1811=$r4, var389=$i5, var272=128, var3466=null, var379=0L, var3985=$i6}
; {com.alibaba.fastjson2.internal.asm.SymbolTable=var1513, r1=var2883, r0=var3659, null_type=var550, $i0=var3911, $i1=var153, i2=var1209, com.alibaba.fastjson2.internal.asm.Symbol=var1898, $r3=var129, $r2=var3049, $i3=var123, $i4=var2917, r6=var2487, $r4=var1811, $i5=var389, 128=var272, null=var3466, 0L=var379, $i6=var3985}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.internal.asm.SymbolTable;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	$i1 = 128 + $i0;	i2 = 2147483647 & $i1;	$r3 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries>;	$r2 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries>;	$i3 = lengthof $r2;	$i4 = i2 % $i3;	r6 = $r3[$i4];	if r6 == null goto $r4 = new com.alibaba.fastjson2.internal.asm.Symbol;	$r4 = new com.alibaba.fastjson2.internal.asm.Symbol;	$i5 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int typeCount>;	specialinvoke $r4.<com.alibaba.fastjson2.internal.asm.Symbol: void <init>(int,int,java.lang.String,java.lang.String,java.lang.String,long,int)>($i5, 128, null, null, r0, 0L, i2);	$i6 = specialinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addTypeInternal(com.alibaba.fastjson2.internal.asm.Symbol)>($r4);	return $i6
;block_num 3