(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var617 0)
(declare-sort var1067 0)
(declare-sort var2427 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2427-init () var2427)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var2427 String) void)
(declare-const null-var617 var617)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3007 var617) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock 
(assert (not (= var3007 null-var617)))
(declare-const var3267 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var3267 null-Int)))
(declare-const var3857 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3857 null-Int)))
(declare-const var905 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var905 null-String)))
(declare-const var2784 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var2784 null-String)))
(declare-const var2269 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var2269 null-Bool)))
(declare-const var1744 Bool) ; Statement: z0 := @parameter5: boolean 
(assert (not (= var1744 null-Bool)))
(assert (and true (and (> (str.len var2784) 0) (<= 0 0))))
(define-const var2744 Int (charAt/698050440 var2784 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var2616 Int (cast-from-Int-to-Int var2744)) ; Statement: $i7 = (int) $c0 
 ; Statement: if $i7 == 40 goto r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock: int stackTop> = 0 
(assert (not (= var2616 40))) ; Negate: Cond: $i7 == 40  
(define-const var1076 var2427 var2427-init) ; Statement: $r21 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var726 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var726)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var726!1 String)
(assert (= var726!1 ""))
(assert true)
(define-const var2303 String (append/672562846 var726!1 "no method descriptor: ")) ; Statement: $r11 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no method descriptor: ") 
(declare-const var726!2 String)
(assert (= var726!2 (str.++ var726!1 "no method descriptor: ")))
(assert true)
(define-const var3615 String (append/672562846 var2303 var2784)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2303!1 String)
(assert (= var2303!1 (str.++ var2303 var2784)))
(assert true)
(define-const var2979 String (toString/-2075883882 var3615)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var1076 var2979)) ; Statement: specialinvoke $r21.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r13) 

(declare-const var1076!1 var2427)
(declare-const var2979!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2427-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var617=org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock, var3007=r1, var3267=i1, var3857=i2, var905=r7, var1067=null_type, var2784=r0, var2269=z1, var1744=z0, var2744=$c0, var2616=$i7, var2427=org.apache.ibatis.javassist.bytecode.BadBytecode, var1076=$r21, var726=$r20, var2303=$r11, var3615=$r12, var2979=$r13}
; {org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock=var617, r1=var3007, i1=var3267, i2=var3857, r7=var905, null_type=var1067, r0=var2784, z1=var2269, z0=var1744, $c0=var2744, $i7=var2616, org.apache.ibatis.javassist.bytecode.BadBytecode=var2427, $r21=var1076, $r20=var726, $r11=var2303, $r12=var3615, $r13=var2979}
;seq <java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock;	i1 := @parameter0: int;	i2 := @parameter1: int;	r7 := @parameter2: java.lang.String;	r0 := @parameter3: java.lang.String;	z1 := @parameter4: boolean;	z0 := @parameter5: boolean;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i7 = (int) $c0;	if $i7 == 40 goto r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock: int stackTop> = 0;	$r21 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no method descriptor: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r13);	throw $r21
;block_num 2