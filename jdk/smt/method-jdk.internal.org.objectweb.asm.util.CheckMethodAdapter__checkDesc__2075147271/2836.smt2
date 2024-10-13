(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2222 0)
(declare-sort var639 0)
(declare-sort var1672 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var639_checkDesc/2008053283 (String Int Bool) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1672-init () var1672)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1672 String) void)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3947 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3947 null-String)))
(declare-const var3913 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3913 null-Bool)))
(define-const var833 Int (var639_checkDesc/2008053283 var3947 0 var3913)) ; Statement: i0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int checkDesc(java.lang.String,int,boolean)>(r0, 0, z0) 
(assert true)
(define-const var1795 Int (length/-134980193 var3947)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 == $i1 goto return 
(assert (not (= var833 var1795))) ; Negate: Cond: i0 == $i1  
(define-const var2846 var1672 var1672-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var2982 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2982)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2982!1 String)
(assert (= var2982!1 ""))
(assert true)
(define-const var2739 String (append/672562846 var2982!1 "Invalid descriptor: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid descriptor: ") 
(declare-const var2982!2 String)
(assert (= var2982!2 (str.++ var2982!1 "Invalid descriptor: ")))
(assert true)
(define-const var2926 String (append/672562846 var2739 var3947)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2739!1 String)
(assert (= var2739!1 (str.++ var2739 var3947)))
(assert true)
(define-const var1104 String (toString/-2075883882 var2926)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2846 var1104)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2846!1 var1672)
(declare-const var1104!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var639_checkDesc/2008053283=([java.lang.String, int, boolean], int), length/-134980193=([java.lang.String], int), var1672-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3947=r0, var2222=null_type, var3913=z0, var639=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var833=i0, var1795=$i1, var1672=java.lang.IllegalArgumentException, var2846=$r1, var2982=$r2, var2739=$r3, var2926=$r4, var1104=$r5}
; {r0=var3947, null_type=var2222, z0=var3913, jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var639, i0=var833, $i1=var1795, java.lang.IllegalArgumentException=var1672, $r1=var2846, $r2=var2982, $r3=var2739, $r4=var2926, $r5=var1104}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int checkDesc(java.lang.String,int,boolean)>(r0, 0, z0);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 == $i1 goto return;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid descriptor: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2