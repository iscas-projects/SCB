(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2015 0)
(declare-sort var3716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-var2015-1 ((Array Int var2015)) Int)
(declare-fun var3716-init () var3716)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var3716 String) void)
(declare-const null-__Array__Int__var2015__ (Array Int var2015))
(declare-const null-Int Int)
(declare-const var3175 (Array Int var2015)) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock[] 
(assert (not (= var3175 null-__Array__Int__var2015__)))
(declare-const var1977 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1977 null-Int)))
(define-const var3484 Int (getLength-Arr-var2015-1 var3175)) ; Statement: i0 = lengthof r0 
(define-const var2201 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto $r1 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(assert (>= var2201 var3484)) ; Cond: i6 >= i0 
(define-const var3579 var3716 var3716-init) ; Statement: $r1 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var2059 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2059)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2059!1 String)
(assert (= var2059!1 ""))
(assert true)
(define-const var2851 String (append/672562846 var2059!1 "no basic block at ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no basic block at ") 
(declare-const var2059!2 String)
(assert (= var2059!2 (str.++ var2059!1 "no basic block at ")))
(assert true)
(define-const var1775 String (append/-1001720160 var2851 var1977)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2851!1 String)
(assert (str.prefixof var2851 var2851!1))
(assert true)
(define-const var708 String (toString/-2075883882 var1775)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var3579 var708)) ; Statement: specialinvoke $r1.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r5) 

(declare-const var3579!1 var3716)
(declare-const var708!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-var2015-1=([org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock[]], int), var3716-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var2015=org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock, var3175=r0, var1977=i1, var3484=i0, var2201=i6, var3716=org.apache.ibatis.javassist.bytecode.BadBytecode, var3579=$r1, var2059=$r2, var2851=$r3, var1775=$r4, var708=$r5}
; {org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock=var2015, r0=var3175, i1=var1977, i0=var3484, i6=var2201, org.apache.ibatis.javassist.bytecode.BadBytecode=var3716, $r1=var3579, $r2=var2059, $r3=var2851, $r4=var1775, $r5=var708}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock[];	i1 := @parameter1: int;	i0 = lengthof r0;	i6 = 0;	if i6 >= i0 goto $r1 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r1 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no basic block at ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 3