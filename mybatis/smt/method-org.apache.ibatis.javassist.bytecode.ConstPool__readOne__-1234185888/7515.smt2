(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1397 0)
(declare-sort var1604 0)
(declare-sort var3069 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readUnsignedByte/-597820149 (var1604) Int)
(declare-fun var3069-init () var3069)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun numOfItems/-481220850 (var1397) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3069 String) void)
(declare-const null-var1397 var1397)
(declare-const null-var1604 var1604)
(declare-const var1154 var1397) ; Statement: r2 := @this: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var1154 null-var1397)))
(declare-const var935 var1604) ; Statement: r0 := @parameter0: java.io.DataInputStream 
(assert (not (= var935 null-var1604)))
(assert true)
(define-const var1430 Int (readUnsignedByte/-597820149 var935)) ; Statement: i0 = virtualinvoke r0.<java.io.DataInputStream: int readUnsignedByte()>() 
 ; Statement: tableswitch(i0) {     case 1: goto $r18 = new org.apache.ibatis.javassist.bytecode.Utf8Info;     case 2: goto $r19 = new java.io.IOException;     case 3: goto $r17 = new org.apache.ibatis.javassist.bytecode.IntegerInfo;     case 4: goto $r16 = new org.apache.ibatis.javassist.bytecode.FloatInfo;     case 5: goto $r15 = new org.apache.ibatis.javassist.bytecode.LongInfo;     case 6: goto $r14 = new org.apache.ibatis.javassist.bytecode.DoubleInfo;     case 7: goto $r13 = new org.apache.ibatis.javassist.bytecode.ClassInfo;     case 8: goto $r12 = new org.apache.ibatis.javassist.bytecode.StringInfo;     case 9: goto $r11 = new org.apache.ibatis.javassist.bytecode.FieldrefInfo;     case 10: goto $r10 = new org.apache.ibatis.javassist.bytecode.MethodrefInfo;     case 11: goto $r9 = new org.apache.ibatis.javassist.bytecode.InterfaceMethodrefInfo;     case 12: goto $r8 = new org.apache.ibatis.javassist.bytecode.NameAndTypeInfo;     case 13: goto $r19 = new java.io.IOException;     case 14: goto $r19 = new java.io.IOException;     case 15: goto $r7 = new org.apache.ibatis.javassist.bytecode.MethodHandleInfo;     case 16: goto $r6 = new org.apache.ibatis.javassist.bytecode.MethodTypeInfo;     case 17: goto $r5 = new org.apache.ibatis.javassist.bytecode.DynamicInfo;     case 18: goto $r4 = new org.apache.ibatis.javassist.bytecode.InvokeDynamicInfo;     case 19: goto $r3 = new org.apache.ibatis.javassist.bytecode.ModuleInfo;     case 20: goto $r1 = new org.apache.ibatis.javassist.bytecode.PackageInfo;     default: goto $r19 = new java.io.IOException; } 
(assert (and (not (= var1430 1)) true)) ; Intersect: Negate: Cond: i0 == 1   and Non Conditional 
(define-const var2904 var3069 var3069-init) ; Statement: $r19 = new java.io.IOException 
(define-const var2390 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2390)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2390!1 String)
(assert (= var2390!1 ""))
(assert true)
(define-const var3546 String (append/672562846 var2390!1 "invalid constant type: ")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid constant type: ") 
(declare-const var2390!2 String)
(assert (= var2390!2 (str.++ var2390!1 "invalid constant type: ")))
(assert true)
(define-const var1947 String (append/-1001720160 var3546 var1430)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3546!1 String)
(assert (str.prefixof var3546 var3546!1))
(assert true)
(define-const var1434 String (append/672562846 var1947 " at ")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at ") 
(declare-const var1947!1 String)
(assert (= var1947!1 (str.++ var1947 " at ")))
(define-const var1496 Int (numOfItems/-481220850 var1154)) ; Statement: $i18 = r2.<org.apache.ibatis.javassist.bytecode.ConstPool: int numOfItems> 
(assert true)
(define-const var1680 String (append/-1001720160 var1434 var1496)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i18) 
(declare-const var1434!1 String)
(assert (str.prefixof var1434 var1434!1))
(assert true)
(define-const var3149 String (toString/-2075883882 var1680)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var2904 var3149)) ; Statement: specialinvoke $r19.<java.io.IOException: void <init>(java.lang.String)>($r25) 

(declare-const var2904!1 var3069)
(declare-const var3149!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {readUnsignedByte/-597820149=([java.io.DataInputStream], int), var3069-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), numOfItems/-481220850=([org.apache.ibatis.javassist.bytecode.ConstPool], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1397=org.apache.ibatis.javassist.bytecode.ConstPool, var1154=r2, var1604=java.io.DataInputStream, var935=r0, var1430=i0, var3069=java.io.IOException, var2904=$r19, var2390=$r20, var3546=$r21, var1947=$r22, var1434=$r23, var1496=$i18, var1680=$r24, var3149=$r25}
; {org.apache.ibatis.javassist.bytecode.ConstPool=var1397, r2=var1154, java.io.DataInputStream=var1604, r0=var935, i0=var1430, java.io.IOException=var3069, $r19=var2904, $r20=var2390, $r21=var3546, $r22=var1947, $r23=var1434, $i18=var1496, $r24=var1680, $r25=var3149}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.bytecode.ConstPool;	r0 := @parameter0: java.io.DataInputStream;	i0 = virtualinvoke r0.<java.io.DataInputStream: int readUnsignedByte()>();	tableswitch(i0) {     case 1: goto $r18 = new org.apache.ibatis.javassist.bytecode.Utf8Info;     case 2: goto $r19 = new java.io.IOException;     case 3: goto $r17 = new org.apache.ibatis.javassist.bytecode.IntegerInfo;     case 4: goto $r16 = new org.apache.ibatis.javassist.bytecode.FloatInfo;     case 5: goto $r15 = new org.apache.ibatis.javassist.bytecode.LongInfo;     case 6: goto $r14 = new org.apache.ibatis.javassist.bytecode.DoubleInfo;     case 7: goto $r13 = new org.apache.ibatis.javassist.bytecode.ClassInfo;     case 8: goto $r12 = new org.apache.ibatis.javassist.bytecode.StringInfo;     case 9: goto $r11 = new org.apache.ibatis.javassist.bytecode.FieldrefInfo;     case 10: goto $r10 = new org.apache.ibatis.javassist.bytecode.MethodrefInfo;     case 11: goto $r9 = new org.apache.ibatis.javassist.bytecode.InterfaceMethodrefInfo;     case 12: goto $r8 = new org.apache.ibatis.javassist.bytecode.NameAndTypeInfo;     case 13: goto $r19 = new java.io.IOException;     case 14: goto $r19 = new java.io.IOException;     case 15: goto $r7 = new org.apache.ibatis.javassist.bytecode.MethodHandleInfo;     case 16: goto $r6 = new org.apache.ibatis.javassist.bytecode.MethodTypeInfo;     case 17: goto $r5 = new org.apache.ibatis.javassist.bytecode.DynamicInfo;     case 18: goto $r4 = new org.apache.ibatis.javassist.bytecode.InvokeDynamicInfo;     case 19: goto $r3 = new org.apache.ibatis.javassist.bytecode.ModuleInfo;     case 20: goto $r1 = new org.apache.ibatis.javassist.bytecode.PackageInfo;     default: goto $r19 = new java.io.IOException; };	$r19 = new java.io.IOException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid constant type: ");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at ");	$i18 = r2.<org.apache.ibatis.javassist.bytecode.ConstPool: int numOfItems>;	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i18);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.io.IOException: void <init>(java.lang.String)>($r25);	throw $r19
;block_num 2