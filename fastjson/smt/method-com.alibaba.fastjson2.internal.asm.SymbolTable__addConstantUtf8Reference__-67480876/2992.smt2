(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1506 0)
(declare-sort var166 0)
(declare-sort var1119 0)
(declare-sort var2284 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun entries/-573322319 (var1506) (Array Int var1119))
(declare-fun getLength-Arr-var1119-1 ((Array Int var1119)) Int)
(declare-fun constantPool/-573322319 (var1506) var2284)
(declare-fun addConstantUtf8/-281001296 (var1506 String) Int)
(declare-fun put12/1392378469 (var2284 Int Int) var2284)
(declare-fun var1119-init () var1119)
(declare-fun constantPoolCount/-573322319 (var1506) Int)
(declare-fun <init>/322374896 (var1119 Int Int String String String Int Int) void)
(declare-fun put/-1330815997 (var1506 var1119) var1119)
(declare-const null-var1506 var1506)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var1119 var1119)
(declare-const null-NullType var166)
(declare-const var405 var1506) ; Statement: r1 := @this: com.alibaba.fastjson2.internal.asm.SymbolTable 
(assert (not (= var405 null-var1506)))
(declare-const var1764 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1764 null-Int)))
(declare-const var393 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var393 null-String)))
(assert true)
(define-const var895 Int (hashCode/-467973558 var393)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(define-const var3910 Int (+ var1764 var895)) ; Statement: $i2 = i0 + $i1 
(define-const var2901 Int (bv2nat (bvand ((_ int2bv 64) 2147483647) ((_ int2bv 64) var3910)))) ; Statement: i3 = 2147483647 & $i2 
(define-const var3958 (Array Int var1119) (entries/-573322319 var405)) ; Statement: $r3 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries> 
(define-const var911 (Array Int var1119) (entries/-573322319 var405)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries> 
(define-const var1918 Int (getLength-Arr-var1119-1 var911)) ; Statement: $i4 = lengthof $r2 
(define-const var1716 Int (mod var2901 var1918)) ; Statement: $i5 = i3 % $i4 
(define-const var3123 var1119 (select var3958 var1716)) ; Statement: r8 = $r3[$i5] 
(assert true) ; Non Conditional
 ; Statement: if r8 == null goto $r4 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool> 
(assert (= var3123 null-var1119)) ; Cond: r8 == null 
(define-const var739 var2284 (constantPool/-573322319 var405)) ; Statement: $r4 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool> 
(assert true)
(define-const var3688 Int (addConstantUtf8/-281001296 var405 var393)) ; Statement: $i6 = virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantUtf8(java.lang.String)>(r0) 
(assert true)
;(assert (put12/1392378469 var739 var1764 var3688)) ; Statement: virtualinvoke $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: com.alibaba.fastjson2.internal.asm.ByteVector put12(int,int)>(i0, $i6) 

(declare-const var739!1 var2284)
(declare-const var1764!1 Int)
(declare-const var3688!1 Int)
(define-const var576 var1119 var1119-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Symbol 
(define-const var901 Int (constantPoolCount/-573322319 var405)) ; Statement: $i7 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount> 
(define-const var1512 Int (+ var901 1)) ; Statement: $i8 = $i7 + 1 
(declare-const var405!1 var1506)
(assert (not (= var405!1 null-var1506)))
(assert (= (constantPoolCount/-573322319 var405!1) var1512)) ; Statement: r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount> = $i8 
(assert true)
;(assert (<init>/322374896 var576 var901 var1764!1 null-String null-String var393 0 var2901)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Symbol: void <init>(int,int,java.lang.String,java.lang.String,java.lang.String,long,int)>($i7, i0, null, null, r0, 0L, i3) 

(declare-const var576!1 var1119)
(declare-const var901!1 Int)
(declare-const var1764!2 Int)
(declare-const var2146 var166)
(declare-const var2146!1 var166)
(declare-const var393!1 String)
(declare-const var3023 Int)
(declare-const var2901!1 Int)
(assert true)
(define-const var1587 var1119 (put/-1330815997 var405!1 var576!1)) ; Statement: $r6 = specialinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol put(com.alibaba.fastjson2.internal.asm.Symbol)>($r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), entries/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], com.alibaba.fastjson2.internal.asm.Symbol[]), getLength-Arr-var1119-1=([com.alibaba.fastjson2.internal.asm.Symbol[]], int), constantPool/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], com.alibaba.fastjson2.internal.asm.ByteVector), addConstantUtf8/-281001296=([com.alibaba.fastjson2.internal.asm.SymbolTable, java.lang.String], int), put12/1392378469=([com.alibaba.fastjson2.internal.asm.ByteVector, int, int], com.alibaba.fastjson2.internal.asm.ByteVector), var1119-init=([], com.alibaba.fastjson2.internal.asm.Symbol), constantPoolCount/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], int), <init>/322374896=([com.alibaba.fastjson2.internal.asm.Symbol, int, int, java.lang.String, java.lang.String, java.lang.String, long, int], void), put/-1330815997=([com.alibaba.fastjson2.internal.asm.SymbolTable, com.alibaba.fastjson2.internal.asm.Symbol], com.alibaba.fastjson2.internal.asm.Symbol)}
; {var1506=com.alibaba.fastjson2.internal.asm.SymbolTable, var405=r1, var1764=i0, var393=r0, var166=null_type, var895=$i1, var3910=$i2, var2901=i3, var1119=com.alibaba.fastjson2.internal.asm.Symbol, var3958=$r3, var911=$r2, var1918=$i4, var1716=$i5, var3123=r8, var2284=com.alibaba.fastjson2.internal.asm.ByteVector, var739=$r4, var3688=$i6, var576=$r5, var901=$i7, var1512=$i8, var2146=null, var3023=0L, var1587=$r6}
; {com.alibaba.fastjson2.internal.asm.SymbolTable=var1506, r1=var405, i0=var1764, r0=var393, null_type=var166, $i1=var895, $i2=var3910, i3=var2901, com.alibaba.fastjson2.internal.asm.Symbol=var1119, $r3=var3958, $r2=var911, $i4=var1918, $i5=var1716, r8=var3123, com.alibaba.fastjson2.internal.asm.ByteVector=var2284, $r4=var739, $i6=var3688, $r5=var576, $i7=var901, $i8=var1512, null=var2146, 0L=var3023, $r6=var1587}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.internal.asm.SymbolTable;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int hashCode()>();	$i2 = i0 + $i1;	i3 = 2147483647 & $i2;	$r3 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries>;	$r2 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol[] entries>;	$i4 = lengthof $r2;	$i5 = i3 % $i4;	r8 = $r3[$i5];	if r8 == null goto $r4 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool>;	$r4 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool>;	$i6 = virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int addConstantUtf8(java.lang.String)>(r0);	virtualinvoke $r4.<com.alibaba.fastjson2.internal.asm.ByteVector: com.alibaba.fastjson2.internal.asm.ByteVector put12(int,int)>(i0, $i6);	$r5 = new com.alibaba.fastjson2.internal.asm.Symbol;	$i7 = r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount>;	$i8 = $i7 + 1;	r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount> = $i8;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Symbol: void <init>(int,int,java.lang.String,java.lang.String,java.lang.String,long,int)>($i7, i0, null, null, r0, 0L, i3);	$r6 = specialinvoke r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.Symbol put(com.alibaba.fastjson2.internal.asm.Symbol)>($r5);	return $r6
;block_num 3