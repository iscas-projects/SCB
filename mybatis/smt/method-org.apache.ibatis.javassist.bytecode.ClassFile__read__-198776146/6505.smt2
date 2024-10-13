(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1765 0)
(declare-sort var768 0)
(declare-sort var3827 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt/-1830864829 (var768) Int)
(declare-fun var3827-init () var3827)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3827 String) void)
(declare-const null-var1765 var1765)
(declare-const null-var768 var768)
(declare-const var3903 var1765) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.ClassFile 
(assert (not (= var3903 null-var1765)))
(declare-const var2322 var768) ; Statement: r0 := @parameter0: java.io.DataInputStream 
(assert (not (= var2322 null-var768)))
(assert true)
(define-const var3335 Int (readInt/-1830864829 var2322)) ; Statement: i0 = virtualinvoke r0.<java.io.DataInputStream: int readInt()>() 
 ; Statement: if i0 == -889275714 goto $i1 = virtualinvoke r0.<java.io.DataInputStream: int readUnsignedShort()>() 
(assert (not (= var3335 (- 889275714)))) ; Negate: Cond: i0 == -889275714  
(define-const var1136 var3827 var3827-init) ; Statement: $r15 = new java.io.IOException 
(define-const var2665 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2665)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2665!1 String)
(assert (= var2665!1 ""))
(assert true)
(define-const var3684 String (append/672562846 var2665!1 "bad magic number: ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad magic number: ") 
(declare-const var2665!2 String)
(assert (= var2665!2 (str.++ var2665!1 "bad magic number: ")))
(define-const var2380 String (Int_toHexString/1865784998 var3335)) ; Statement: $r17 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0) 
(assert true)
(define-const var2448 String (append/672562846 var3684 var2380)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3684!1 String)
(assert (= var3684!1 (str.++ var3684 var2380)))
(assert true)
(define-const var3896 String (toString/-2075883882 var2448)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1136 var3896)) ; Statement: specialinvoke $r15.<java.io.IOException: void <init>(java.lang.String)>($r20) 

(declare-const var1136!1 var3827)
(declare-const var3896!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt/-1830864829=([java.io.DataInputStream], int), var3827-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toHexString/1865784998=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1765=org.apache.ibatis.javassist.bytecode.ClassFile, var3903=r1, var768=java.io.DataInputStream, var2322=r0, var3335=i0, var3827=java.io.IOException, var1136=$r15, var2665=$r16, var3684=$r18, var2380=$r17, var2448=$r19, var3896=$r20}
; {org.apache.ibatis.javassist.bytecode.ClassFile=var1765, r1=var3903, java.io.DataInputStream=var768, r0=var2322, i0=var3335, java.io.IOException=var3827, $r15=var1136, $r16=var2665, $r18=var3684, $r17=var2380, $r19=var2448, $r20=var3896}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.ClassFile;	r0 := @parameter0: java.io.DataInputStream;	i0 = virtualinvoke r0.<java.io.DataInputStream: int readInt()>();	if i0 == -889275714 goto $i1 = virtualinvoke r0.<java.io.DataInputStream: int readUnsignedShort()>();	$r15 = new java.io.IOException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad magic number: ");	$r17 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.io.IOException: void <init>(java.lang.String)>($r20);	throw $r15
;block_num 2