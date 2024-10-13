(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2371 0)
(declare-sort var1918 0)
(declare-sort var56 0)
(declare-sort var1542 0)
(declare-sort var1497 0)
(declare-sort var676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1542-init () var1542)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun tokens/849795300 (var2371) var1497)
(declare-fun var676_size/2096095061 (var676) Int)
(declare-fun cast-from-var1497-to-var676 (var1497) var676)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1542 String) void)
(declare-const null-var2371 var2371)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var56 var56)
(declare-const var2755 var2371) ; Statement: r0 := @this: org.antlr.v4.runtime.TokenStreamRewriter 
(assert (not (= var2755 null-var2371)))
(declare-const var3835 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3835 null-String)))
(declare-const var1235 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1235 null-Int)))
(declare-const var828 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var828 null-Int)))
(declare-const var698 var56) ; Statement: r3 := @parameter3: java.lang.Object 
(assert (not (= var698 null-var56)))
 ; Statement: if i0 > i1 goto $r6 = new java.lang.IllegalArgumentException 
(assert (> var1235 var828)) ; Cond: i0 > i1 
(define-const var3766 var1542 var1542-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var3386 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3386)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3386!1 String)
(assert (= var3386!1 ""))
(assert true)
(define-const var2586 String (append/672562846 var3386!1 "replace: range invalid: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("replace: range invalid: ") 
(declare-const var3386!2 String)
(assert (= var3386!2 (str.++ var3386!1 "replace: range invalid: ")))
(assert true)
(define-const var1716 String (append/-1001720160 var2586 var1235)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2586!1 String)
(assert (str.prefixof var2586 var2586!1))
(assert true)
(define-const var1668 String (append/672562846 var1716 "..")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..") 
(declare-const var1716!1 String)
(assert (= var1716!1 (str.++ var1716 "..")))
(assert true)
(define-const var2828 String (append/-1001720160 var1668 var828)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1668!1 String)
(assert (str.prefixof var1668 var1668!1))
(assert true)
(define-const var962 String (append/672562846 var2828 "(size=")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(size=") 
(declare-const var2828!1 String)
(assert (= var2828!1 (str.++ var2828 "(size=")))
(define-const var428 var1497 (tokens/849795300 var2755)) ; Statement: $r13 = r0.<org.antlr.v4.runtime.TokenStreamRewriter: org.antlr.v4.runtime.TokenStream tokens> 
(define-const var3505 Int (var676_size/2096095061 (cast-from-var1497-to-var676 var428))) ; Statement: $i4 = interfaceinvoke $r13.<org.antlr.v4.runtime.TokenStream: int size()>() 
(assert true)
(define-const var523 String (append/-1001720160 var962 var3505)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var962!1 String)
(assert (str.prefixof var962 var962!1))
(assert true)
(define-const var3142 String (append/672562846 var523 ")")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var523!1 String)
(assert (= var523!1 (str.++ var523 ")")))
(assert true)
(define-const var2637 String (toString/-2075883882 var3142)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3766 var2637)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16) 

(declare-const var3766!1 var1542)
(declare-const var2637!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1542-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), tokens/849795300=([org.antlr.v4.runtime.TokenStreamRewriter], org.antlr.v4.runtime.TokenStream), var676_size/2096095061=([org.antlr.v4.runtime.IntStream], int), cast-from-var1497-to-var676=([org.antlr.v4.runtime.TokenStream], org.antlr.v4.runtime.IntStream), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2371=org.antlr.v4.runtime.TokenStreamRewriter, var2755=r0, var3835=r4, var1918=null_type, var1235=i0, var828=i1, var56=java.lang.Object, var698=r3, var1542=java.lang.IllegalArgumentException, var3766=$r6, var3386=$r7, var2586=$r8, var1716=$r9, var1668=$r10, var2828=$r11, var962=$r12, var1497=org.antlr.v4.runtime.TokenStream, var428=$r13, var676=org.antlr.v4.runtime.IntStream, var3505=$i4, var523=$r14, var3142=$r15, var2637=$r16}
; {org.antlr.v4.runtime.TokenStreamRewriter=var2371, r0=var2755, r4=var3835, null_type=var1918, i0=var1235, i1=var828, java.lang.Object=var56, r3=var698, java.lang.IllegalArgumentException=var1542, $r6=var3766, $r7=var3386, $r8=var2586, $r9=var1716, $r10=var1668, $r11=var2828, $r12=var962, org.antlr.v4.runtime.TokenStream=var1497, $r13=var428, org.antlr.v4.runtime.IntStream=var676, $i4=var3505, $r14=var523, $r15=var3142, $r16=var2637}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.TokenStreamRewriter;	r4 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r3 := @parameter3: java.lang.Object;	if i0 > i1 goto $r6 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("replace: range invalid: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(size=");	$r13 = r0.<org.antlr.v4.runtime.TokenStreamRewriter: org.antlr.v4.runtime.TokenStream tokens>;	$i4 = interfaceinvoke $r13.<org.antlr.v4.runtime.TokenStream: int size()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16);	throw $r6
;block_num 2