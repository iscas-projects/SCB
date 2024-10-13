(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2538 0)
(declare-sort var876 0)
(declare-sort var1729 0)
(declare-sort var2685 0)
(declare-sort var2811 0)
(declare-sort var2070 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interfaceCount/-872778074 (var2538) Int)
(declare-fun firstField/-872778074 (var2538) var876)
(declare-fun firstMethod/-872778074 (var2538) var1729)
(declare-fun symbolTable/-872778074 (var2538) var2685)
(declare-fun constantPool/-573322319 (var2685) var2811)
(declare-fun length/-132820368 (var2811) Int)
(declare-fun constantPoolCount/-573322319 (var2685) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2070-init () var2070)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun className/-573322319 (var2685) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2070 String) void)
(declare-const null-var2538 var2538)
(declare-const null-var876 var876)
(declare-const null-var1729 var1729)
(declare-const var469 var2538) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert (not (= var469 null-var2538)))
(define-const var3475 Int (interfaceCount/-872778074 var469)) ; Statement: $i0 = r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: int interfaceCount> 
(define-const var2615 Int (* 2 var3475)) ; Statement: $i1 = 2 * $i0 
(define-const var1451 Int (+ 24 var2615)) ; Statement: i15 = 24 + $i1 
(define-const var3594 Int 0) ; Statement: i16 = 0 
(define-const var926 var876 (firstField/-872778074 var469)) ; Statement: r26 = r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.FieldWriter firstField> 
(assert true) ; Non Conditional
 ; Statement: if r26 == null goto i17 = 0 
(assert (= var926 null-var876)) ; Cond: r26 == null 
(define-const var1000 Int 0) ; Statement: i17 = 0 
(define-const var3553 var1729 (firstMethod/-872778074 var469)) ; Statement: r27 = r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.MethodWriter firstMethod> 
(assert true) ; Non Conditional
 ; Statement: if r27 == null goto $r1 = r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(assert (= var3553 null-var1729)) ; Cond: r27 == null 
(define-const var1846 var2685 (symbolTable/-872778074 var469)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(define-const var1314 var2811 (constantPool/-573322319 var1846)) ; Statement: $r2 = $r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool> 
(define-const var1234 Int (length/-132820368 var1314)) ; Statement: $i2 = $r2.<com.alibaba.fastjson2.internal.asm.ByteVector: int length> 
(define-const var3925 Int (+ var1451 var1234)) ; Statement: i18 = i15 + $i2 
(define-const var1569 var2685 (symbolTable/-872778074 var469)) ; Statement: $r3 = r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(define-const var231 Int (constantPoolCount/-573322319 var1569)) ; Statement: i3 = $r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount> 
(define-const var519 Int (cast-from-Int-to-Int 65535)) ; Statement: $i21 = (int) 65535 
 ; Statement: if i3 <= $i21 goto $r32 = new com.alibaba.fastjson2.internal.asm.ByteVector 
(assert (not (<= var231 var519))) ; Negate: Cond: i3 <= $i21  
(define-const var685 var2070 var2070-init) ; Statement: $r31 = new com.alibaba.fastjson2.JSONException 
(define-const var3275 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3275)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3275!1 String)
(assert (= var3275!1 ""))
(assert true)
(define-const var712 String (append/672562846 var3275!1 "Class too large: ")) ; Statement: $r21 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class too large: ") 
(declare-const var3275!2 String)
(assert (= var3275!2 (str.++ var3275!1 "Class too large: ")))
(define-const var80 var2685 (symbolTable/-872778074 var469)) ; Statement: $r19 = r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable> 
(define-const var2140 String (className/-573322319 var80)) ; Statement: $r20 = $r19.<com.alibaba.fastjson2.internal.asm.SymbolTable: java.lang.String className> 
(assert true)
(define-const var713 String (append/672562846 var712 var2140)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var712!1 String)
(assert (= var712!1 (str.++ var712 var2140)))
(assert true)
(define-const var288 String (append/672562846 var713 ", constantPoolCount ")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", constantPoolCount ") 
(declare-const var713!1 String)
(assert (= var713!1 (str.++ var713 ", constantPoolCount ")))
(assert true)
(define-const var1425 String (append/-1001720160 var288 var231)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var288!1 String)
(assert (str.prefixof var288 var288!1))
(assert true)
(define-const var2469 String (toString/-2075883882 var1425)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var685 var2469)) ; Statement: specialinvoke $r31.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r25) 

(declare-const var685!1 var2070)
(declare-const var2469!1 String)
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {interfaceCount/-872778074=([com.alibaba.fastjson2.internal.asm.ClassWriter], int), firstField/-872778074=([com.alibaba.fastjson2.internal.asm.ClassWriter], com.alibaba.fastjson2.internal.asm.FieldWriter), firstMethod/-872778074=([com.alibaba.fastjson2.internal.asm.ClassWriter], com.alibaba.fastjson2.internal.asm.MethodWriter), symbolTable/-872778074=([com.alibaba.fastjson2.internal.asm.ClassWriter], com.alibaba.fastjson2.internal.asm.SymbolTable), constantPool/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], com.alibaba.fastjson2.internal.asm.ByteVector), length/-132820368=([com.alibaba.fastjson2.internal.asm.ByteVector], int), constantPoolCount/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], int), cast-from-Int-to-Int=([int], int), var2070-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), className/-573322319=([com.alibaba.fastjson2.internal.asm.SymbolTable], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2538=com.alibaba.fastjson2.internal.asm.ClassWriter, var469=r0, var3475=$i0, var2615=$i1, var1451=i15, var3594=i16, var876=com.alibaba.fastjson2.internal.asm.FieldWriter, var926=r26, var1000=i17, var1729=com.alibaba.fastjson2.internal.asm.MethodWriter, var3553=r27, var2685=com.alibaba.fastjson2.internal.asm.SymbolTable, var1846=$r1, var2811=com.alibaba.fastjson2.internal.asm.ByteVector, var1314=$r2, var1234=$i2, var3925=i18, var1569=$r3, var231=i3, var519=$i21, var2070=com.alibaba.fastjson2.JSONException, var685=$r31, var3275=$r30, var712=$r21, var80=$r19, var2140=$r20, var713=$r22, var288=$r23, var1425=$r24, var2469=$r25}
; {com.alibaba.fastjson2.internal.asm.ClassWriter=var2538, r0=var469, $i0=var3475, $i1=var2615, i15=var1451, i16=var3594, com.alibaba.fastjson2.internal.asm.FieldWriter=var876, r26=var926, i17=var1000, com.alibaba.fastjson2.internal.asm.MethodWriter=var1729, r27=var3553, com.alibaba.fastjson2.internal.asm.SymbolTable=var2685, $r1=var1846, com.alibaba.fastjson2.internal.asm.ByteVector=var2811, $r2=var1314, $i2=var1234, i18=var3925, $r3=var1569, i3=var231, $i21=var519, com.alibaba.fastjson2.JSONException=var2070, $r31=var685, $r30=var3275, $r21=var712, $r19=var80, $r20=var2140, $r22=var713, $r23=var288, $r24=var1425, $r25=var2469}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.internal.asm.ClassWriter;	$i0 = r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: int interfaceCount>;	$i1 = 2 * $i0;	i15 = 24 + $i1;	i16 = 0;	r26 = r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.FieldWriter firstField>;	if r26 == null goto i17 = 0;	i17 = 0;	r27 = r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.MethodWriter firstMethod>;	if r27 == null goto $r1 = r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r1 = r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r2 = $r1.<com.alibaba.fastjson2.internal.asm.SymbolTable: com.alibaba.fastjson2.internal.asm.ByteVector constantPool>;	$i2 = $r2.<com.alibaba.fastjson2.internal.asm.ByteVector: int length>;	i18 = i15 + $i2;	$r3 = r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	i3 = $r3.<com.alibaba.fastjson2.internal.asm.SymbolTable: int constantPoolCount>;	$i21 = (int) 65535;	if i3 <= $i21 goto $r32 = new com.alibaba.fastjson2.internal.asm.ByteVector;	$r31 = new com.alibaba.fastjson2.JSONException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class too large: ");	$r19 = r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.SymbolTable symbolTable>;	$r20 = $r19.<com.alibaba.fastjson2.internal.asm.SymbolTable: java.lang.String className>;	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", constantPoolCount ");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r31.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r25);	throw $r31
;block_num 6