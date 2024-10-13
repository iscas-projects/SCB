(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3492 0)
(declare-sort var331 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var331 String) void)
(declare-fun cast-from-var3492-to-var331 (var3492) var331)
(declare-const null-var3492 var3492)
(declare-const null-Int Int)
(declare-const var3512 var3492) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.BadBytecode 
(assert (not (= var3512 null-var3492)))
(declare-const var13 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var13 null-Int)))
(define-const var251 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var251)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var251!1 String)
(assert (= var251!1 ""))
(assert true)
(define-const var1962 String (append/672562846 var251!1 "bytecode ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bytecode ") 
(declare-const var251!2 String)
(assert (= var251!2 (str.++ var251!1 "bytecode ")))
(assert true)
(define-const var3774 String (append/-1001720160 var1962 var13)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1962!1 String)
(assert (str.prefixof var1962 var1962!1))
(assert true)
(define-const var2136 String (toString/-2075883882 var3774)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 (cast-from-var3492-to-var331 var3512) var2136)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r4) 

(declare-const var3512!1 var3492)
(declare-const var2136!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var3492-to-var331=([org.apache.ibatis.javassist.bytecode.BadBytecode], java.lang.Exception)}
; {var3492=org.apache.ibatis.javassist.bytecode.BadBytecode, var3512=r0, var13=i0, var251=$r1, var1962=$r2, var3774=$r3, var2136=$r4, var331=java.lang.Exception}
; {org.apache.ibatis.javassist.bytecode.BadBytecode=var3492, r0=var3512, i0=var13, $r1=var251, $r2=var1962, $r3=var3774, $r4=var2136, java.lang.Exception=var331}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.BadBytecode;	i0 := @parameter0: int;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bytecode ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r4);	return
;block_num 1